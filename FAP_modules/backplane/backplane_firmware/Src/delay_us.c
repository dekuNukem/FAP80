#include "delay_us.h"

TIM_HandleTypeDef* us_timer;

void delay_us_init(TIM_HandleTypeDef* htim_base)
{
	us_timer = htim_base;
}

void delay_us(uint32_t delay)
{
	// for best result delay should be subtracted by 2 to
	// offset the time spent calling this function
  uint32_t startTime = us_timer->Instance->CNT;
  while(us_timer->Instance->CNT - startTime < delay);
}

uint32_t micros(void)
{
  return us_timer->Instance->CNT;
}
