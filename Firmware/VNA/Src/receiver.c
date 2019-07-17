#include "main.h"
#include "receiver.h"
#include "txChain.h"
#include "max2871.h"
#include "errorHandling.h"
#include "debug.h"
#include "dwt_stm32_delay.h"
#include <math.h>

struct receiverStruct receiverStatus;
extern SDADC_HandleTypeDef hsdadc1;

void setInputSwitch(uint8_t direction, struct receiverStruct *receiverStatus)
{
	if (direction == SWITCH_OFF)
	{
		HAL_GPIO_WritePin(INPUT_SW_1_GPIO_Port,INPUT_SW_1_Pin,0);
		HAL_GPIO_WritePin(INPUT_SW_2_GPIO_Port,INPUT_SW_2_Pin,0);
		receiverStatus->switchPos = SWITCH_OFF;
	}

	else if (direction == SWITCH_THROUGH)
	{
		HAL_GPIO_WritePin(INPUT_SW_1_GPIO_Port,INPUT_SW_1_Pin,1);
		HAL_GPIO_WritePin(INPUT_SW_2_GPIO_Port,INPUT_SW_2_Pin,0);
		receiverStatus->switchPos = SWITCH_THROUGH;
	}

	else if (direction == SWITCH_REV)
	{
		HAL_GPIO_WritePin(INPUT_SW_1_GPIO_Port,INPUT_SW_1_Pin,0);
		HAL_GPIO_WritePin(INPUT_SW_2_GPIO_Port,INPUT_SW_2_Pin,1);
		receiverStatus->switchPos = SWITCH_REV;
	}

}

void readGainPhaseVoltage(struct receiverStruct *recieverStatus)
{
	float gainVoltage, phaseVoltage;
	uint32_t gainADC = 0;
	uint32_t phaseADC  = 0;
	uint32_t ch;
	uint32_t retVal;

	// Get an average of the ADC data
	uint8_t iGain = 0;
	uint8_t iPhase = 0;
	while ((iGain != NUM_SAMPLES) && (iPhase != NUM_SAMPLES))
	{
		while(HAL_SDADC_PollForInjectedConversion(&hsdadc1, 100) != HAL_OK)
		{
			// Wait until SDADC is ready
		}

		if(HAL_SDADC_PollForInjectedConversion(&hsdadc1, 100) == HAL_OK)
		{
			retVal = HAL_SDADC_InjectedGetValue(&hsdadc1, &ch);
			// As we can't choose what channel to sample, only store value if it is channel 4 (VMAG), and we need more samples
			if (ch == 4 && (iGain <= NUM_SAMPLES))
			{
				gainADC += retVal;
				iGain++;
			}

			// As we can't choose what channel to sample, only store value if it is channel 7 (VPHASE), and we need more samples
			if (ch == 7 && (iPhase <= NUM_SAMPLES))
			{
				phaseADC += retVal;
				iPhase++;
			}
		}
		DWT_Delay_us(10);
	}

	//	Average out results
	gainADC /= NUM_SAMPLES;
	phaseADC /= NUM_SAMPLES;

	// Convert to Volts
	gainVoltage = (VREF * gainADC) / NUM_STATES_16_BIT;
	phaseVoltage = (VREF * phaseADC) / NUM_STATES_16_BIT;

	recieverStatus->gainVoltage = gainVoltage;
	recieverStatus->phaseVoltage = phaseVoltage;

}

void gainVoltageToDB(struct receiverStruct *recieverStatus)
{
	recieverStatus->gainDB = recieverStatus->gainVoltage * 33.3;
}

void phaseVoltageToDeg(struct receiverStruct *recieverStatus)
{
	float v = receiverStatus.phaseVoltage;
	// Values calculated from MATLAB
	recieverStatus->phaseDeg = A11 * pow(v,11) +A10 * pow(v,10) + A9 * pow(v,9) + A8 * pow(v,8) + A7 * pow(v,7) + A6 * pow(v,6) + A5 * pow(v,5) + A4 * pow(v,4) + A3 * pow(v,3) + A2 * pow(v,2) + A1 * v + A0;
}

void test(struct MAX2871Struct *max2871Status, struct txStruct *txStatus, struct receiverStruct *receiverStatus)
{
	statusThinking();
	float stepSize = 10;

	float currentFrequency = 25;

	while (currentFrequency <= 1250)
	{
		sigGen(currentFrequency, -10, max2871Status, txStatus);
		readGainPhaseVoltage(receiverStatus);
		gainVoltageToDB(receiverStatus);
		phaseVoltageToDeg(receiverStatus);

		char str1[128] = "";
		sprintf((char *)str1, "%0.1f %0.2f %0.2f\r\n", max2871Status->frequency, receiverStatus->gainDB, receiverStatus->phaseDeg);
		printUSB(str1);

		currentFrequency += stepSize;

	}
	statusNominal();
}
