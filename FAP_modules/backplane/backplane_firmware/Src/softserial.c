#include "softserial.h"

GPIO_TypeDef *ss_port;
uint16_t ss_pin;

void softserial_init(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin)
{
  ss_port = GPIOx;
  ss_pin = GPIO_Pin;
}

// 9600bps
void softserial_sendchar(uint8_t c)
{
  __disable_irq();
  HAL_GPIO_WritePin(ss_port, ss_pin, GPIO_PIN_RESET);
  delay_us(101);
  for (int i = 0; i < 8; i++)
  {
    if(c & (1 << i))
      HAL_GPIO_WritePin(ss_port, ss_pin, GPIO_PIN_SET);
    else
      HAL_GPIO_WritePin(ss_port, ss_pin, GPIO_PIN_RESET);
    delay_us(101);
  }
  HAL_GPIO_WritePin(ss_port, ss_pin, GPIO_PIN_SET);
  delay_us(101);
  __enable_irq();
}
