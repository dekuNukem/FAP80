/**
  ******************************************************************************
  * File Name          : mxconstants.h
  * Description        : This file contains the common defines of the application
  ******************************************************************************
  *
  * COPYRIGHT(c) 2016 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MXCONSTANT_H
#define __MXCONSTANT_H
  /* Includes ------------------------------------------------------------------*/

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private define ------------------------------------------------------------*/

#define MREQ_Pin GPIO_PIN_13
#define MREQ_GPIO_Port GPIOC
#define IOREQ_Pin GPIO_PIN_14
#define IOREQ_GPIO_Port GPIOC
#define BUSACK_Pin GPIO_PIN_15
#define BUSACK_GPIO_Port GPIOC
#define BUSREQ_Pin GPIO_PIN_0
#define BUSREQ_GPIO_Port GPIOC
#define RESET_Pin GPIO_PIN_1
#define RESET_GPIO_Port GPIOC
#define NMI_Pin GPIO_PIN_2
#define NMI_GPIO_Port GPIOC
#define INT_Pin GPIO_PIN_3
#define INT_GPIO_Port GPIOC
#define D0_Pin GPIO_PIN_0
#define D0_GPIO_Port GPIOA
#define D1_Pin GPIO_PIN_1
#define D1_GPIO_Port GPIOA
#define D2_Pin GPIO_PIN_2
#define D2_GPIO_Port GPIOA
#define D3_Pin GPIO_PIN_3
#define D3_GPIO_Port GPIOA
#define D4_Pin GPIO_PIN_4
#define D4_GPIO_Port GPIOA
#define D5_Pin GPIO_PIN_5
#define D5_GPIO_Port GPIOA
#define D6_Pin GPIO_PIN_6
#define D6_GPIO_Port GPIOA
#define D7_Pin GPIO_PIN_7
#define D7_GPIO_Port GPIOA
#define LCD_TX_Pin GPIO_PIN_4
#define LCD_TX_GPIO_Port GPIOC
#define LCD_RX_Pin GPIO_PIN_5
#define LCD_RX_GPIO_Port GPIOC
#define A0_Pin GPIO_PIN_0
#define A0_GPIO_Port GPIOB
#define A1_Pin GPIO_PIN_1
#define A1_GPIO_Port GPIOB
#define A2_Pin GPIO_PIN_2
#define A2_GPIO_Port GPIOB
#define A10_Pin GPIO_PIN_10
#define A10_GPIO_Port GPIOB
#define A11_Pin GPIO_PIN_11
#define A11_GPIO_Port GPIOB
#define A12_Pin GPIO_PIN_12
#define A12_GPIO_Port GPIOB
#define A13_Pin GPIO_PIN_13
#define A13_GPIO_Port GPIOB
#define A14_Pin GPIO_PIN_14
#define A14_GPIO_Port GPIOB
#define A15_Pin GPIO_PIN_15
#define A15_GPIO_Port GPIOB
#define M1_Pin GPIO_PIN_6
#define M1_GPIO_Port GPIOC
#define RD_Pin GPIO_PIN_7
#define RD_GPIO_Port GPIOC
#define WR_Pin GPIO_PIN_8
#define WR_GPIO_Port GPIOC
#define CPU_CLK_Pin GPIO_PIN_8
#define CPU_CLK_GPIO_Port GPIOA
#define SOFTSERIAL_TX_Pin GPIO_PIN_9
#define SOFTSERIAL_TX_GPIO_Port GPIOA
#define USB_PULLUP_Pin GPIO_PIN_10
#define USB_PULLUP_GPIO_Port GPIOA
#define BUTTON_1_Pin GPIO_PIN_15
#define BUTTON_1_GPIO_Port GPIOA
#define BUTTON_2_Pin GPIO_PIN_10
#define BUTTON_2_GPIO_Port GPIOC
#define BUTTON_3_Pin GPIO_PIN_11
#define BUTTON_3_GPIO_Port GPIOC
#define BUTTON_4_Pin GPIO_PIN_12
#define BUTTON_4_GPIO_Port GPIOC
#define BUTTON_5_Pin GPIO_PIN_2
#define BUTTON_5_GPIO_Port GPIOD
#define A3_Pin GPIO_PIN_3
#define A3_GPIO_Port GPIOB
#define A4_Pin GPIO_PIN_4
#define A4_GPIO_Port GPIOB
#define A5_Pin GPIO_PIN_5
#define A5_GPIO_Port GPIOB
#define A6_Pin GPIO_PIN_6
#define A6_GPIO_Port GPIOB
#define A7_Pin GPIO_PIN_7
#define A7_GPIO_Port GPIOB
#define A8_Pin GPIO_PIN_8
#define A8_GPIO_Port GPIOB
#define A9_Pin GPIO_PIN_9
#define A9_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

#define GPIO_PIN_SET HIGH
#define GPIO_PIN_RESET LOW
#define CPU_ADDR_PORT GPIOB
#define CPU_DATA_PORT GPIOA
#define CPU_CTRL_PORT GPIOC

/* USER CODE END Private defines */

/**
  * @}
  */ 

/**
  * @}
*/ 

#endif /* __MXCONSTANT_H */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
