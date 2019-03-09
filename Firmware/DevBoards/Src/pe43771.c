#include "main.h"
#include "pe43711.h"
#include "gainBlock.h"
#include "dwt_stm32_delay.h"
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "usb_device.h"
#include "usbd_cdc_if.h"

void setAttenuationUSB(struct gainStruct *gainStatus)
{
	uint8_t str1[64] = "";
	double attenuation;
	printUSB("Enter an attenuation between 0 and 31.75 dB in 0.25 steps: ");
	scanUSB(str1, 64);
	attenuation = atof(str1);
	attenuation = (round(attenuation * 4)) / 4; // Forces to nearest 0.25
	printUSB(str1);

	if (attenuation < 0)
	{
		printUSB("\nAttenuation too low. \n\n");
	}
	else if (attenuation > 31.75)
	{
		printUSB("\nAttenuation too high. \n\n");
	}

	else if ((attenuation >= 0) && (attenuation <= 31.75))
	{
		sprintf((char *)str1, "\nAttenuation: %0.2f dB\n\n", attenuation);
		printUSB(str1);

		setAttenuation(attenuation, gainStatus);
	}
	else
	{
		printUSB("\nBad input, try harder next time.\n\n");
	}
}

uint8_t setAttenuation(float atten, struct gainStruct *gainStatus)
{
	gainStatus->attenuation = atten;
	uint8_t bitSequence = atten * 4;

	uint8_t bitArray[8] = "";
	intToBinArray(bitSequence,bitArray);

	for (uint8_t i = 8; i > 0; i--)
	{
		HAL_GPIO_WritePin(ATTEN_SI_GPIO_Port, ATTEN_SI_Pin, bitArray[i-1]);
		DWT_Delay_us(1);
		HAL_GPIO_WritePin(ATTEN_CLK_GPIO_Port, ATTEN_CLK_Pin, 1);
		DWT_Delay_us(1);
		HAL_GPIO_WritePin(ATTEN_CLK_GPIO_Port, ATTEN_CLK_Pin, 0);
	}
	HAL_GPIO_WritePin(ATTEN_SI_GPIO_Port, ATTEN_SI_Pin, 0);
	DWT_Delay_us(1);
	HAL_GPIO_WritePin(ATTEN_LE_GPIO_Port, ATTEN_LE_Pin, 1);
	DWT_Delay_us(1);
	HAL_GPIO_WritePin(ATTEN_LE_GPIO_Port, ATTEN_LE_Pin, 0);
	HAL_GPIO_TogglePin(LD3_GPIO_Port, LD3_Pin);

	return 1;

}

void intToBinArray(uint8_t in, uint8_t* out)
{
    uint8_t mask = 1 << (7);
    for (uint8_t i = 0; i < 8; i++)
    {
        out[i] = (in & mask) ? 1 : 0;
        in <<= 1;
    }
}
