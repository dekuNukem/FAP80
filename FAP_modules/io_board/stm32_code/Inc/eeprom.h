#ifndef __EEPROM_H
#define __EEPROM_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"
#include "shared.h"
 	
void eeprom_write(uint16_t address, uint8_t data);
uint8_t eeprom_read(int32_t address);
void eeprom_fill(int32_t start, int32_t len, uint8_t value);

#ifdef __cplusplus
}
#endif

#endif


