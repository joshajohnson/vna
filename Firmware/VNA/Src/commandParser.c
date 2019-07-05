#include "main.h"
#include "commandParser.h"
#include "usbd_cdc_if.h"
#include "dwt_stm32_delay.h"
#include "debug.h"
#include "errorHandling.h"
#include "max2871.h"
#include "txChain.h"
#include <stdio.h>
#include <string.h>

char txStr[128] = "";

void commandParser(struct MAX2871Struct *max2871Status, struct txStruct *txStatus)
{
	#define BUF_SIZE 128
	#define CMD_SIZE 32
	#define NUM_ARGS 6

	char usrMsg[BUF_SIZE];
	char command[CMD_SIZE] = "";
	char args[NUM_ARGS][16];
	uint8_t argNum = 0;
	// Get whatever the user has sent
	scanUSB((uint8_t *) usrMsg, BUF_SIZE);

	// Split on delim
	for (uint8_t i = 0; i < FIFO_SIZE; i++)
	{
		if ((usrMsg[i] == '(') || (usrMsg[i] == ')') || (usrMsg[i] == ','))
			usrMsg[i] = '\0';
	}

	// Determine the command word
	uint8_t i = 0;
	while (usrMsg[i] != '\0')
	{
		command[i] = usrMsg[i];
		i++;
	}

	// Find arguments
	while (i < FIFO_SIZE)
	{
		// If null term, (was delim) skip
		if (usrMsg[i] == '\0')
			i++;
		else
		{
			// Otherwise, copy arguments into their own strings
			uint8_t j = 0;
			while (usrMsg[i] != '\0')
			{
				args[argNum][j] = '\0';
				args[argNum][j++] = usrMsg[i];
				i++;
			}
			args[argNum][j] = '\0';
			argNum++;
		}

	}

	// Find command based on command word, and call function

	if (strncmp("sigGen", command, 6) == 0)
	{
		sigGen(atof(args[0]), atof(args[1]), max2871Status, txStatus);

		sprintf((char *)txStr, "Signal Generator: Frequency = %0.2f MHz, Power = %0.2f dBm\n", max2871Status->frequency, txStatus->measOutputPower);
		printUSB(txStr);
	}

	else if (strncmp("sweep", command, 5) == 0)
	{
		sprintf((char *)txStr, "Sweep: Start = %0.2f MHz, fFinish = %0.2f dBm Power = %0.2f dBm\n", atof(args[0]), atof(args[1]), atof(args[2]));
		printUSB(txStr);

		sweep(atof(args[0]), atof(args[1]), atof(args[2]), atof(args[3]), atof(args[4]), max2871Status, txStatus);
	}

	else if (strncmp("setFilter", command, 9) == 0)
	{
		txStatus->filter = setFilter(atof(args[0]));
		sprintf((char *)txStr, "Filter set to: %d\n", txStatus->filter);
		printUSB(txStr);
	}

	else if (strncmp("setMaxPower", command, 11) == 0)
	{
		max2871SetPower(atoi(args[0]), max2871Status);
		int8_t powerArray[4] = {-4, -1, 2, 5};
		sprintf((char *)txStr, "Power set to: %d dBm\n", powerArray[max2871Status->rfPower]);
		printUSB(txStr);
	}

	else if (strncmp("setAttenuation", command, 14) == 0)
	{
		setAttenuation(atof(args[0]), txStatus);
		sprintf((char *)txStr, "Attenuation set to: %0.2f dB\n", txStatus->attenuation);
		printUSB(txStr);
	}

	else if (strncmp("enableRF", command, 8) == 0)
	{
		max2871RFEnable(max2871Status);
		printUSB("RF Enabled \r\n");
	}

	else if (strncmp("disableRF", command, 8) == 0)
	{
		max2871RFDisable(max2871Status);
		printUSB("RF Disabled \r\n");
	}

	else if (strncmp("enablePA", command, 8) == 0)
	{
		enablePA(txStatus);
		printUSB("PA Enabled \r\n");
	}

	else if (strncmp("disablePA", command, 8) == 0)
	{
		disablePA(txStatus);
		printUSB("PA Disabled \r\n");
	}

	else if (strncmp("status", command, 6) == 0)
	{
		if (strncmp("verbose", args[0], 7) == 0)
		{
			args[0][0] = "";
			max2871PrintStatus(VERBOSE,max2871Status);
		}
		else
			max2871PrintStatus(nVERBOSE,max2871Status);

		txChainPrintStatus(txStatus);
	}
	else if (strncmp("ls", command, 2) == 0)
		{
			printUSB((char *)"-------------------------- \r\n");
			printUSB((char *)"--  Available Commands  --\r\n");
			printUSB((char *)"-------------------------- \r\n");
			printUSB((char *)"sigGen(frequency, power)\r\n");
			printUSB((char *)"sweep(startFreq, stopFreq, numSteps, power, time)\r\n");
			printUSB((char *)"setFilter(filterNum OR frequency)\r\n");
			printUSB((char *)"setMaxPower(power(dBm))\r\n");
			printUSB((char *)"setAttenuation(atten(dB))\r\n");
			printUSB((char *)"enableRF()\r\n");
			printUSB((char *)"disableRF()\r\n");
			printUSB((char *)"enablePA()\r\n");
			printUSB((char *)"disablePA()\r\n");
			printUSB((char *)"status(verbose)\r\n\n");
		}
	else
	{
		printUSB("Not found, try again\r\n");
	}

}