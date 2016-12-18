#include "stm32f0xx_hal.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "eeprom.h"

#define EEP_READ_ADDR 0xA1
#define EEP_WRITE_ADDR 0xA0

void eeprom_write(uint16_t address, uint8_t data)
{
	uint8_t upper_mask = (address >> 7) & 0x6;
	uint8_t lower = address & 0xff;
	uint8_t command_buf[2] = {lower, data};
	HAL_I2C_Master_Transmit(i2c_ptr, EEP_WRITE_ADDR | upper_mask, command_buf, 2, 100);
	while(HAL_I2C_IsDeviceReady(i2c_ptr, EEP_WRITE_ADDR, 1, 100) != HAL_OK)
		;
}

uint8_t eeprom_read(int32_t address)
{
  uint8_t upper_mask = (address >> 7) & 0x6;
  uint8_t lower = address & 0xff;
  uint8_t ret = 69;
  HAL_I2C_Master_Transmit(i2c_ptr, EEP_WRITE_ADDR | upper_mask, &lower, 1, 100);
  HAL_I2C_Master_Receive(i2c_ptr, EEP_READ_ADDR | upper_mask, &ret, 1, 100);
  return ret;
}

void eeprom_fill(int32_t start, int32_t len, uint8_t value)
{
  for (int i = start; i < start + len; i++)
  	if(eeprom_read(i) != value)
    	eeprom_write(i, value);
}
