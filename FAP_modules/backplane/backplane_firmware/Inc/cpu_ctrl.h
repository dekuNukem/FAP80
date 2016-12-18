#ifndef __CPU_CTRL_H
#define __CPU_CTRL_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"

void cpu_ctrl_init(TIM_HandleTypeDef *tim);
void hsc_start(void);
void hsc_stop(void);
void cycle_clock(int32_t count);
void cpu_reset(void);
void claim_bus(void);

void addr_input(void);
void data_input(void);
void addr_output(void);
void data_output(void);
void mem_ctrl_input(void);
void mem_ctrl_output(void);

void addr_data_display_update(void);
void program_mode(void);
void build_ui(void);

#ifdef __cplusplus
}
#endif

#endif


