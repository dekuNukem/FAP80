#include "delay_us.h"

TIM_HandleTypeDef* us_timer;

// a 32-bit timer is configured to count up every microsecond
// the counter value is then the number of us passed 

void delay_us_init(TIM_HandleTypeDef* htim_base)
{
	us_timer = htim_base;
}

void delay_us(uint32_t delay)
{
  uint32_t startTime = us_timer->Instance->CNT;
  while(us_timer->Instance->CNT - startTime < delay);
}

uint32_t micros(void)
{
  return us_timer->Instance->CNT;
}
