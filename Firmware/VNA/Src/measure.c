#include "main.h"
#include "measure.h"
#include "max2871.h"
#include "txChain.h"
#include "receiver.h"
#include "errorHandling.h"
#include "debug.h"
#include "dwt_stm32_delay.h"
#include <math.h>

void measure(int8_t Sxx, float startFreq, float stopFreq, uint32_t numSteps, float power, struct MAX2871Struct *max2871Status, struct txStruct *txStatus, struct receiverStruct *receiverStatus)
{
	char str1[128] = "";

	// Select correct input switch position
	if (Sxx == S11)
	{
		setInputSwitch(SWITCH_REV,receiverStatus);
	}
	else if (Sxx == S21)
	{
		setInputSwitch(SWITCH_THROUGH,receiverStatus);
	}
	else
	{
		setInputSwitch(SWITCH_OFF,receiverStatus);
		logError((char *) "> Unable to measure given S Parameter");
	}

	statusThinking();

	// Calculate AD8302 offset
	readAD8302vRef(receiverStatus);

	float stepSize = ((stopFreq - startFreq) / numSteps);
	float currentFreq = startFreq;

	// Run the sweep
	while (currentFreq <= stopFreq)
	{
		sigGen(currentFreq, power, max2871Status, txStatus);
		readGainPhaseVoltage(receiverStatus);
		gainVoltageToDB(receiverStatus);
		phaseVoltageToDeg(receiverStatus);

		sprintf((char *)str1, "%0.2f,%0.2f,%0.2f\n", currentFreq, receiverStatus->gainDB, receiverStatus->phaseDeg);
		printUSB(str1);

		currentFreq += stepSize;
	}
	statusNominal();

}

void setEcal(uint8_t position)
{
	if (position == SHORT)
	{
		HAL_GPIO_WritePin(ECAL_DP_GPIO_Port, ECAL_DP_Pin, 1);
		HAL_GPIO_WritePin(ECAL_DM_GPIO_Port, ECAL_DM_Pin, 0);
	}
	else if (position == OPEN)
	{
		HAL_GPIO_WritePin(ECAL_DP_GPIO_Port, ECAL_DP_Pin, 0);
		HAL_GPIO_WritePin(ECAL_DM_GPIO_Port, ECAL_DM_Pin, 0);
	}
	else if (position == LOAD)
	{
		HAL_GPIO_WritePin(ECAL_DP_GPIO_Port, ECAL_DP_Pin, 1);
		HAL_GPIO_WritePin(ECAL_DM_GPIO_Port, ECAL_DM_Pin, 1);
	}
	else if (position == THRU)
	{
		HAL_GPIO_WritePin(ECAL_DP_GPIO_Port, ECAL_DP_Pin, 0);
		HAL_GPIO_WritePin(ECAL_DM_GPIO_Port, ECAL_DM_Pin, 1);
	}
}
