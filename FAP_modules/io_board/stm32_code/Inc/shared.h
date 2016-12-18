#ifndef __shared_H
#define __shared_H

#include "ff.h"
#include "stm32f0xx_hal.h"
#include "main.h"

#define HIGH GPIO_PIN_SET
#define LOW GPIO_PIN_RESET

extern FRESULT sd_fresult;
extern FATFS sd_fs;
extern FIL sd_file;

extern SPI_HandleTypeDef hspi1;
#define sd_spi_ptr (&hspi1)

extern I2C_HandleTypeDef hi2c2;
#define i2c_ptr (&hi2c2)

extern RTC_HandleTypeDef hrtc;
#define rtc_ptr (&hrtc)

extern UART_HandleTypeDef huart1;
#define debug_uart_ptr (&huart1)

#define CPLD_ADDR_PORT GPIOB
#define CPLD_DATA_PORT GPIOB

#endif
