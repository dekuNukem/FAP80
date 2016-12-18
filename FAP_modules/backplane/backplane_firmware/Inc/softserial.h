#ifndef __SOFTSERIAL_H
#define __SOFTSERIAL_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"
#include "delay_us.h"

void softserial_init(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
void softserial_sendchar(uint8_t c);

#ifdef __cplusplus
}
#endif

#endif
