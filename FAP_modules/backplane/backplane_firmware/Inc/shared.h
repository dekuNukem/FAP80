#ifndef __shared_H
#define __shared_H

#include "stm32f0xx_hal.h"
  
extern volatile int8_t is_button_1_pressed;
extern volatile int8_t is_button_2_pressed;
extern volatile int8_t is_button_3_pressed;
extern volatile int8_t is_button_4_pressed;
extern volatile int8_t is_button_5_pressed;

extern uint16_t curr_addr;
extern uint8_t curr_data;
extern uint16_t prev_addr;
extern uint8_t prev_data;

#endif
