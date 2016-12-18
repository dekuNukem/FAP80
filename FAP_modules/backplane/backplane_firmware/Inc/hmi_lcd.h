#ifndef __HMI_LCD_H
#define __HMI_LCD_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"

void hmi_lcd_init(UART_HandleTypeDef *huart);
void lcd_say(char* buf);
void lcd_print(int32_t x, int32_t y, char* bg, char* message);
void lcd_print_width(int32_t x, int32_t y, int32_t width, int32_t height, char* bg, char* message);
void lcd_clear(void);

#ifdef __cplusplus
}
#endif

#endif


