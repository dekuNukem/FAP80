#ifndef __HELPERS_H
#define __HELPERS_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"

#define LB_SIZE 1024

#define latch1_activate() HAL_GPIO_WritePin(LATCH1_GPIO_Port, LATCH1_Pin, GPIO_PIN_RESET);
#define latch1_deactivate() HAL_GPIO_WritePin(LATCH1_GPIO_Port, LATCH1_Pin, GPIO_PIN_SET);

#define latch16_activate() HAL_GPIO_WritePin(LATCH16_GPIO_Port, LATCH16_Pin, GPIO_PIN_SET);
#define latch16_deactivate() HAL_GPIO_WritePin(LATCH16_GPIO_Port, LATCH16_Pin, GPIO_PIN_RESET);

#define interrupt_deactivate() HAL_GPIO_WritePin(Z80_INT_GPIO_Port, Z80_INT_Pin, GPIO_PIN_SET);

#define vect_load_activate() HAL_GPIO_WritePin(INTVECT_LOAD_GPIO_Port, INTVECT_LOAD_Pin, GPIO_PIN_SET);
#define vect_load_deactivate() HAL_GPIO_WritePin(INTVECT_LOAD_GPIO_Port, INTVECT_LOAD_Pin, GPIO_PIN_RESET);

typedef struct
{
	int32_t last_recv;
	int32_t curr_index;
	char buf[LB_SIZE];
} linear_buf;

int32_t linear_buf_init(linear_buf *lb);
int32_t linear_buf_reset(linear_buf *lb);
int32_t linear_buf_idle(linear_buf *lb);
int32_t linear_buf_line_available(linear_buf *lb);
int32_t linear_buf_add(linear_buf *lb, char c);
int32_t linear_buf_add_str(linear_buf *lb, char *s, uint32_t len);
int32_t get_arg(char* argstr, uint32_t index);
void rtc_update(char* argstr);
void print_rtc(void);

void data_input(void);
void addr_input(void);
void data_output(void);
void addr_output(void);

void interrupt_activate(uint8_t vector);
void preload16(uint8_t address, uint8_t data);

#ifdef __cplusplus
}
#endif

#endif


