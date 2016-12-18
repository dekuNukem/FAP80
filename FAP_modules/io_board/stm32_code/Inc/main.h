/**
  ******************************************************************************
  * File Name          : main.h
  * Description        : This file contains the common defines of the application
  ******************************************************************************
  *
  * Copyright (c) 2016 STMicroelectronics International N.V. 
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
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H
  /* Includes ------------------------------------------------------------------*/

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private define ------------------------------------------------------------*/

#define DEBUG_LED_Pin GPIO_PIN_13
#define DEBUG_LED_GPIO_Port GPIOC
#define INTVECT_LOAD_Pin GPIO_PIN_0
#define INTVECT_LOAD_GPIO_Port GPIOA
#define ESP_RESET_Pin GPIO_PIN_1
#define ESP_RESET_GPIO_Port GPIOA
#define ESP_TX_Pin GPIO_PIN_2
#define ESP_TX_GPIO_Port GPIOA
#define ESP_RX_Pin GPIO_PIN_3
#define ESP_RX_GPIO_Port GPIOA
#define SD_CS_Pin GPIO_PIN_4
#define SD_CS_GPIO_Port GPIOA
#define SD_SCK_Pin GPIO_PIN_5
#define SD_SCK_GPIO_Port GPIOA
#define SD_MISO_Pin GPIO_PIN_6
#define SD_MISO_GPIO_Port GPIOA
#define SD_MOSI_Pin GPIO_PIN_7
#define SD_MOSI_GPIO_Port GPIOA
#define CPLD_D0_Pin GPIO_PIN_0
#define CPLD_D0_GPIO_Port GPIOB
#define CPLD_D1_Pin GPIO_PIN_1
#define CPLD_D1_GPIO_Port GPIOB
#define CPLD_D2_Pin GPIO_PIN_2
#define CPLD_D2_GPIO_Port GPIOB
#define IO_ADDR2_Pin GPIO_PIN_10
#define IO_ADDR2_GPIO_Port GPIOB
#define IO_ADDR3_Pin GPIO_PIN_11
#define IO_ADDR3_GPIO_Port GPIOB
#define INTACK_Pin GPIO_PIN_12
#define INTACK_GPIO_Port GPIOB
#define IORD_Pin GPIO_PIN_13
#define IORD_GPIO_Port GPIOB
#define IOWR_Pin GPIO_PIN_14
#define IOWR_GPIO_Port GPIOB
#define LATCH1_Pin GPIO_PIN_15
#define LATCH1_GPIO_Port GPIOB
#define LATCH16_Pin GPIO_PIN_8
#define LATCH16_GPIO_Port GPIOA
#define PS2_CLK_Pin GPIO_PIN_11
#define PS2_CLK_GPIO_Port GPIOA
#define PS2_DATA_Pin GPIO_PIN_12
#define PS2_DATA_GPIO_Port GPIOA
#define Z80_INT_Pin GPIO_PIN_15
#define Z80_INT_GPIO_Port GPIOA
#define CPLD_D3_Pin GPIO_PIN_3
#define CPLD_D3_GPIO_Port GPIOB
#define CPLD_D4_Pin GPIO_PIN_4
#define CPLD_D4_GPIO_Port GPIOB
#define CPLD_D5_Pin GPIO_PIN_5
#define CPLD_D5_GPIO_Port GPIOB
#define CPLD_D6_Pin GPIO_PIN_6
#define CPLD_D6_GPIO_Port GPIOB
#define CPLD_D7_Pin GPIO_PIN_7
#define CPLD_D7_GPIO_Port GPIOB
#define IO_ADDR0_Pin GPIO_PIN_8
#define IO_ADDR0_GPIO_Port GPIOB
#define IO_ADDR1_Pin GPIO_PIN_9
#define IO_ADDR1_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

/**
  * @}
  */ 

/**
  * @}
*/ 

#endif /* __MAIN_H */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
