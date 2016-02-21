/**
  ******************************************************************************
  * File Name          : main.c
  * Date               : 20/02/2016 21:07:43
  * Description        : Main program body
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

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <string.h>
#define DEBUG_XMIT_SIZE 128
#define LCD_XMIT_SIZE 64

#define CPU_ADDR_PORT GPIOE
#define CPU_DATA_PORT GPIOD
#define CPU_CTRL_PORT GPIOC

#define CPU_CLK_PIN GPIO_PIN_4
#define CPU_RESET_PIN GPIO_PIN_10

/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef huart1;
UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */
char debug_xmit_buf[DEBUG_XMIT_SIZE];
char lcd_xmit_buf[LCD_XMIT_SIZE];
volatile uint32_t last_press;
volatile int8_t is_button_1_pressed;
volatile int8_t is_button_2_pressed;
volatile int8_t is_button_3_pressed;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_USART2_UART_Init(void);

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* USER CODE BEGIN 0 */

void pd_output()
{
  GPIOD->CRL = 0x33333333;
  GPIOD->CRH = 0x44444444;
}

void pd_input()
{
  GPIOD->CRL = 0x44444444;
  GPIOD->CRH = 0x44444444;
}

void cycle_clock(int count)
{
  for (int i = 0; i < count; i++)
  {
    HAL_GPIO_WritePin(CPU_CTRL_PORT, CPU_CLK_PIN, GPIO_PIN_RESET);
    HAL_Delay(10);
    HAL_GPIO_WritePin(CPU_CTRL_PORT, CPU_CLK_PIN, GPIO_PIN_SET);
    HAL_Delay(10);
  }
}

void cpu_reset()
{
  HAL_GPIO_WritePin(CPU_CTRL_PORT, CPU_RESET_PIN, GPIO_PIN_RESET);
  cycle_clock(10);
}

void cpu_init()
{
  HAL_GPIO_WritePin(CPU_CTRL_PORT, CPU_CLK_PIN, GPIO_PIN_SET);
  cpu_reset();
  HAL_GPIO_WritePin(CPU_CTRL_PORT, GPIO_PIN_2 | GPIO_PIN_3 | GPIO_PIN_8 | GPIO_PIN_9, GPIO_PIN_SET);
}

void lcd_say(char* buf)
{
  HAL_UART_Transmit(&huart1, buf, strlen(buf), 1000);
  HAL_UART_Transmit(&huart1, "\xff\xff\xff", 3, 1000);
}

/* USER CODE END 0 */

int main(void)
{

  /* USER CODE BEGIN 1 */

  // &&&&&&&&&&&&&&&&&&&&&&& right click on project, Optimize for Time

  /* USER CODE END 1 */

  /* MCU Configuration----------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART1_UART_Init();
  MX_USART2_UART_Init();

  /* USER CODE BEGIN 2 */

  HAL_UART_MspInit(&huart1);
  HAL_UART_MspInit(&huart2);

  HAL_Delay(1000);

  lcd_say("cls WHITE");
  lcd_say("xstr 10,10,120,45,2,BLACK,WHITE,0,0,1,\"ADDR:\"");
  lcd_say("xstr 110,10,205,45,2,BLACK,YELLOW,1,1,1,\"UNKNOWN\"");

  lcd_say("xstr 10,60,120,45,2,BLACK,WHITE,0,0,1,\"DATA:\"");
  lcd_say("xstr 110,60,205,45,2,BLACK,YELLOW,1,1,1,\"UNKNOWN\"");

  lcd_say("xstr 10,110,120,45,2,BLACK,WHITE,0,0,1,\"STAT:\"");
  lcd_say("xstr 110,110,205,45,2,BLACK,YELLOW,1,1,1,\"STOPPED\"");

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  cpu_init();
  pd_output();
  CPU_DATA_PORT->ODR = 0x0;
  HAL_GPIO_WritePin(CPU_CTRL_PORT, CPU_RESET_PIN, GPIO_PIN_SET);
  cycle_clock(3);

  uint16_t this_addr = 0;
  uint8_t this_data = 0;
  uint16_t prev_addr = 69;
  uint8_t prev_data = 69;

  uint32_t last_clock = 0;
  int8_t is_running = 0;

  while (1)
  {
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
    uint32_t now_ms = HAL_GetTick();

    if(is_running && now_ms - last_clock >= 1)
    {
      HAL_GPIO_TogglePin(CPU_CTRL_PORT, CPU_CLK_PIN);
      last_clock = now_ms;
    }

    this_addr = CPU_ADDR_PORT->IDR;
    this_data = CPU_DATA_PORT->IDR & 0xff;

    if(this_addr != prev_addr)
    {
      memset(lcd_xmit_buf, 0, LCD_XMIT_SIZE);
      sprintf(lcd_xmit_buf, "xstr 110,10,205,45,2,BLACK,YELLOW,1,1,1,\"0x%X\"", this_addr);
      lcd_say(lcd_xmit_buf);
      prev_addr = this_addr;
    }

    if(this_data != prev_data)
    {
      memset(lcd_xmit_buf, 0, LCD_XMIT_SIZE);
      sprintf(lcd_xmit_buf, "xstr 110,60,205,45,2,BLACK,YELLOW,1,1,1,\"0x%X\"", this_data);
      lcd_say(lcd_xmit_buf);
      prev_data = this_data;
    }

    if(is_button_1_pressed)
    {
      is_running = 0;
      lcd_say("xstr 110,110,205,45,2,BLACK,YELLOW,1,1,1,\"STOPPED\"");
      cpu_reset();
      HAL_GPIO_WritePin(CPU_CTRL_PORT, CPU_RESET_PIN, GPIO_PIN_SET);
      cycle_clock(3);
      is_button_1_pressed = 0;
    }

    if(is_button_2_pressed && is_running == 0)
    {
      lcd_say("xstr 110,110,205,45,2,BLACK,RED,1,1,1,\"Step\"");
      cycle_clock(1);
      lcd_say("xstr 110,110,205,45,2,BLACK,YELLOW,1,1,1,\"STOPPED\"");
      is_button_2_pressed = 0;
    }

    if(is_button_3_pressed)
    {
      is_running = (is_running + 1) % 2;
      memset(lcd_xmit_buf, 0, LCD_XMIT_SIZE);
      if(is_running)
        lcd_say("xstr 110,110,205,45,2,WHITE,GREEN,1,1,1,\"RUNNING\"");
      else
      {
        lcd_say("xstr 110,110,205,45,2,BLACK,YELLOW,1,1,1,\"STOPPED\"");
        HAL_GPIO_WritePin(CPU_CTRL_PORT, CPU_CLK_PIN, GPIO_PIN_SET);
      }
      lcd_say(lcd_xmit_buf);
      is_button_3_pressed = 0;
    }
  }
  /* USER CODE END 3 */

}

/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;

  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  HAL_RCC_OscConfig(&RCC_OscInitStruct);

  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_SYSCLK|RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
  HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2);

}

/* USART1 init function */
void MX_USART1_UART_Init(void)
{

  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  HAL_UART_Init(&huart1);

}

/* USART2 init function */
void MX_USART2_UART_Init(void)
{

  huart2.Instance = USART2;
  huart2.Init.BaudRate = 9600;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  HAL_UART_Init(&huart2);

}

/** Configure pins as 
        * Analog 
        * Input 
        * Output
        * EVENT_OUT
        * EXTI
*/
void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct;

  /* GPIO Ports Clock Enable */
  __GPIOE_CLK_ENABLE();
  __GPIOC_CLK_ENABLE();
  __GPIOA_CLK_ENABLE();
  __GPIOB_CLK_ENABLE();
  __GPIOD_CLK_ENABLE();

  /*Configure GPIO pins : PE2 PE3 PE4 PE5 
                           PE6 PE7 PE8 PE9 
                           PE10 PE11 PE12 PE13 
                           PE14 PE15 PE0 PE1 */
  GPIO_InitStruct.Pin = GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5 
                          |GPIO_PIN_6|GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9 
                          |GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_13 
                          |GPIO_PIN_14|GPIO_PIN_15|GPIO_PIN_0|GPIO_PIN_1;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

  /*Configure GPIO pins : PC0 PC1 PC5 PC6 
                           PC7 PC11 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_5|GPIO_PIN_6 
                          |GPIO_PIN_7|GPIO_PIN_11;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : PC2 PC3 PC4 PC8 
                           PC9 PC10 */
  GPIO_InitStruct.Pin = GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_8 
                          |GPIO_PIN_9|GPIO_PIN_10;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : PB12 PB13 PB14 */
  GPIO_InitStruct.Pin = GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING_FALLING;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : PD0 PD1 PD2 PD3 
                           PD4 PD5 PD6 PD7 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3 
                          |GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI15_10_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

}

/* USER CODE BEGIN 4 */

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  uint32_t now = HAL_GetTick();
  if(now - last_press < 300)
    return;

  last_press = now;
  if(GPIO_Pin == GPIO_PIN_12 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_12) == GPIO_PIN_RESET)
   is_button_1_pressed = 1;
  else if(GPIO_Pin == GPIO_PIN_13 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_13) == GPIO_PIN_RESET)
    is_button_2_pressed = 1;
  else if(GPIO_Pin == GPIO_PIN_14 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_14) == GPIO_PIN_RESET)
    is_button_3_pressed = 1;
}

/* USER CODE END 4 */

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
