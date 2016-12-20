#include "hmi_lcd.h"
#include <stdio.h>
#include <string.h>
#define LCD_BUF_SIZE 256

UART_HandleTypeDef *lcd_uart;
char lcd_buf[LCD_BUF_SIZE];

void hmi_lcd_init(UART_HandleTypeDef *huart)
{
	lcd_uart = huart;
}

void lcd_say(char* buf)
{
  HAL_UART_Transmit(lcd_uart, buf, strlen(buf), 250);
  // all hmi lcd commands end in 3 bytes of 0xff
  HAL_UART_Transmit(lcd_uart, "\xff\xff\xff", 3, 250);
}

void lcd_print(int32_t x, int32_t y, char* bg, char* message)
{
	memset(lcd_buf, 0, LCD_BUF_SIZE);
	int32_t width = strlen(message) * 22;
	int32_t height = 45;
	sprintf(lcd_buf, "xstr %d,%d,%d,%d,2,BLACK,%s,1,1,1,\"%s\"", x, y, width, height, bg, message);
	lcd_say(lcd_buf);
}

void lcd_print_width(int32_t x, int32_t y, int32_t width, int32_t height, char* bg, char* message)
{
	memset(lcd_buf, 0, LCD_BUF_SIZE);
	sprintf(lcd_buf, "xstr %d,%d,%d,%d,2,BLACK,%s,1,1,1,\"%s\"", x, y, width, height, bg, message);
	lcd_say(lcd_buf);
}

void lcd_clear(void)
{
	lcd_say("cls WHITE");
}
