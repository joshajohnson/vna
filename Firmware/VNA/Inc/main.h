/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * Copyright (c) 2019 STMicroelectronics International N.V. 
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without 
  * modification, are permitted, provided that the following conditions are met:
  *
  * 1. Redistribution of source code must retain the above copyright notice, 
  *    this list of conditions and the following disclaimer.
  * 2. Redistributions in binary form must reproduce the above copyright notice,
  *    this list of conditions and the following disclaimer in the documentation
  *    and/or other materials provided with the distribution.
  * 3. Neither the name of STMicroelectronics nor the names of other 
  *    contributors to this software may be used to endorse or promote products 
  *    derived from this software without specific written permission.
  * 4. This software, including modifications and/or derivative works of this 
  *    software, must execute solely and exclusively on microcontroller or
  *    microprocessor devices manufactured by or for STMicroelectronics.
  * 5. Redistribution and use of this software other than as permitted under 
  *    this license is void and will automatically terminate your rights under 
  *    this license. 
  *
  * THIS SOFTWARE IS PROVIDED BY STMICROELECTRONICS AND CONTRIBUTORS "AS IS" 
  * AND ANY EXPRESS, IMPLIED OR STATUTORY WARRANTIES, INCLUDING, BUT NOT 
  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
  * PARTICULAR PURPOSE AND NON-INFRINGEMENT OF THIRD PARTY INTELLECTUAL PROPERTY
  * RIGHTS ARE DISCLAIMED TO THE FULLEST EXTENT PERMITTED BY LAW. IN NO EVENT 
  * SHALL STMICROELECTRONICS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
  * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
  * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
  * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f3xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */
#define  FIFO_SIZE 128  // must be 2^N

typedef struct FIFO
{
	uint32_t head;
	uint32_t tail;
	uint8_t data[FIFO_SIZE];
	uint8_t dataReady;
	uint8_t charArray[FIFO_SIZE];
} FIFO;

extern FIFO RX_FIFO;
/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */
#define  FIFO_INCR(x) (((x)+1)&((FIFO_SIZE)-1))
/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define ATTEN_MOSI_Pin GPIO_PIN_13
#define ATTEN_MOSI_GPIO_Port GPIOC
#define ATTEN_CLK_Pin GPIO_PIN_14
#define ATTEN_CLK_GPIO_Port GPIOC
#define MAX2871_CHIP_EN_Pin GPIO_PIN_15
#define MAX2871_CHIP_EN_GPIO_Port GPIOC
#define MAX2871_LE_Pin GPIO_PIN_0
#define MAX2871_LE_GPIO_Port GPIOC
#define FLASH_nWP_Pin GPIO_PIN_1
#define FLASH_nWP_GPIO_Port GPIOC
#define MAX2871_SPI_MISO_Pin GPIO_PIN_2
#define MAX2871_SPI_MISO_GPIO_Port GPIOC
#define MAX2871_SPI_MOSI_Pin GPIO_PIN_3
#define MAX2871_SPI_MOSI_GPIO_Port GPIOC
#define MAX2871_LD_Pin GPIO_PIN_0
#define MAX2871_LD_GPIO_Port GPIOA
#define MAX2871_RF_EN_Pin GPIO_PIN_1
#define MAX2871_RF_EN_GPIO_Port GPIOA
#define FLASH_nCS_Pin GPIO_PIN_2
#define FLASH_nCS_GPIO_Port GPIOA
#define FLASH_nHOLD_Pin GPIO_PIN_3
#define FLASH_nHOLD_GPIO_Port GPIOA
#define STATUS_LED_G_Pin GPIO_PIN_4
#define STATUS_LED_G_GPIO_Port GPIOA
#define FLASH_SPI_SCK_Pin GPIO_PIN_5
#define FLASH_SPI_SCK_GPIO_Port GPIOA
#define FLASH_SPI_MISO_Pin GPIO_PIN_6
#define FLASH_SPI_MISO_GPIO_Port GPIOA
#define FLASH_SPI_MOSI_Pin GPIO_PIN_7
#define FLASH_SPI_MOSI_GPIO_Port GPIOA
#define RF_PWR_LEVEL_Pin GPIO_PIN_1
#define RF_PWR_LEVEL_GPIO_Port GPIOB
#define AD8302_VMAG_Pin GPIO_PIN_2
#define AD8302_VMAG_GPIO_Port GPIOB
#define AD8302_VREF_Pin GPIO_PIN_8
#define AD8302_VREF_GPIO_Port GPIOE
#define AD8302_VPHASE_Pin GPIO_PIN_9
#define AD8302_VPHASE_GPIO_Port GPIOE
#define INPUT_SW_1_Pin GPIO_PIN_14
#define INPUT_SW_1_GPIO_Port GPIOB
#define INPUT_SW_2_Pin GPIO_PIN_15
#define INPUT_SW_2_GPIO_Port GPIOB
#define MAX2871_SPI_SCK_Pin GPIO_PIN_8
#define MAX2871_SPI_SCK_GPIO_Port GPIOD
#define STATUS_LED_R_Pin GPIO_PIN_6
#define STATUS_LED_R_GPIO_Port GPIOC
#define SW_2_Pin GPIO_PIN_7
#define SW_2_GPIO_Port GPIOC
#define STATUS_LED_B_Pin GPIO_PIN_8
#define STATUS_LED_B_GPIO_Port GPIOC
#define SW_1_Pin GPIO_PIN_9
#define SW_1_GPIO_Port GPIOC
#define TEST_POINT_1_Pin GPIO_PIN_8
#define TEST_POINT_1_GPIO_Port GPIOA
#define TEST_POINT_2_Pin GPIO_PIN_9
#define TEST_POINT_2_GPIO_Port GPIOA
#define USB_PULLUP_Pin GPIO_PIN_10
#define USB_PULLUP_GPIO_Port GPIOA
#define SWD_IO_Pin GPIO_PIN_13
#define SWD_IO_GPIO_Port GPIOA
#define SWD_CLK_Pin GPIO_PIN_14
#define SWD_CLK_GPIO_Port GPIOA
#define ATTEN_MOSIC10_Pin GPIO_PIN_10
#define ATTEN_MOSIC10_GPIO_Port GPIOC
#define ATTEN_CLKC11_Pin GPIO_PIN_11
#define ATTEN_CLKC11_GPIO_Port GPIOC
#define ATTEN_LE_Pin GPIO_PIN_12
#define ATTEN_LE_GPIO_Port GPIOC
#define PA_PWRDN_Pin GPIO_PIN_2
#define PA_PWRDN_GPIO_Port GPIOD
#define BROKEN_Pin GPIO_PIN_3
#define BROKEN_GPIO_Port GPIOB
#define LED2_Pin GPIO_PIN_4
#define LED2_GPIO_Port GPIOB
#define LED3_Pin GPIO_PIN_5
#define LED3_GPIO_Port GPIOB
#define LED4_Pin GPIO_PIN_6
#define LED4_GPIO_Port GPIOB
#define FILTER_SW_1_Pin GPIO_PIN_8
#define FILTER_SW_1_GPIO_Port GPIOB
#define FILTER_SW_2_Pin GPIO_PIN_9
#define FILTER_SW_2_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
