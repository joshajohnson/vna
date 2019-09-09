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
void readAD8302vRef(struct receiverStruct *recieverStatus)
{
	uint32_t adcVal = 0;
	uint32_t ch;
	uint32_t retVal;

	// Get an average of the ADC data
	uint8_t i = 0;
	while ((i < NUM_SAMPLES))
	{
		while(HAL_SDADC_PollForInjectedConversion(&hsdadc1, 100) != HAL_OK)
		{
			// Wait until SDADC is ready
		}

		if(HAL_SDADC_PollForInjectedConversion(&hsdadc1, 100) == HAL_OK)
		{
			retVal = HAL_SDADC_InjectedGetValue(&hsdadc1, &ch);
			// As we can't choose what channel to sample, only store value if it is channel 8 (VREF), and we need more samples
			if (ch == 8)
			{
				adcVal += retVal;
				i++;
			}

		}
		DWT_Delay_us(10);
	}

	//	Average out results
	adcVal /= NUM_SAMPLES;

	receiverStatus.refVoltage = (VREF * adcVal) / NUM_STATES_16_BIT;
	receiverStatus.refDelta = receiverStatus.refVoltage - 1.8;

}

void gainVoltageToDB(struct receiverStruct *recieverStatus)
{
	recieverStatus->gainDB = - ((recieverStatus->gainVoltage - receiverStatus.refDelta) * 30 - 30 + 5);
}

void phaseVoltageToDeg(struct receiverStruct *recieverStatus, struct MAX2871Struct *max2817Status)
{
	recieverStatus->phaseDeg = (receiverStatus.phaseVoltage - receiverStatus.refDelta) * 100;

	// Compensate for AD8302 amplitude drop with frequency

	// Offset and normalise
	recieverStatus->phaseDeg = (recieverStatus->phaseDeg + 1) - 90;
	recieverStatus->phaseDeg = recieverStatus->phaseDeg * 0.95;
	recieverStatus->phaseDeg = recieverStatus->phaseDeg + 90;

	float phaseComp = 0;
	// Calculate compensation amount based on frequency
	if (recieverStatus->phaseDeg >= 90)
		phaseComp = M1 * max2817Status->frequency + B1;
	else if (recieverStatus->phaseDeg < 90)
		phaseComp = -(M2 * max2817Status->frequency + B2);

	// Calculate weighting based on proximity to 0 / 180

	float weight = 0;
	if (recieverStatus->phaseDeg > 160)
		weight = (recieverStatus->phaseDeg - 160) * 0.05;
	else if (recieverStatus->phaseDeg < 20)
			weight = (20 - recieverStatus->phaseDeg) * 0.05;

	// Apply corrections to phase
	recieverStatus->phaseDeg = recieverStatus->phaseDeg + (phaseComp * weight);

	// Limit to 0 < angle < 180
	if (recieverStatus->phaseDeg >= 180)
		recieverStatus->phaseDeg = 179.99;
	else if (recieverStatus->phaseDeg <= 0)
		recieverStatus->phaseDeg = 0.01;

}
