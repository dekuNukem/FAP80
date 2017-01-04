#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "cpu_ctrl.h"
#include "hmi_lcd.h"
#include "helpers.h"
#include "my_usb.h"
#include "shared.h"
#include "delay_us.h"

#define PRINT_BUF_SIZE 32
char print_buf[PRINT_BUF_SIZE];

TIM_HandleTypeDef *clk_timer;

void cpu_ctrl_init(TIM_HandleTypeDef *tim)
{
  clk_timer = tim;
}

// start high speed Z80 clock
void hsc_start(void)
{
  GPIO_InitTypeDef GPIO_InitStruct;
  GPIO_InitStruct.Pin = CPU_CLK_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
  GPIO_InitStruct.Alternate = GPIO_AF2_TIM1;
  HAL_GPIO_Init(CPU_CLK_GPIO_Port, &GPIO_InitStruct);
  HAL_TIM_PWM_Start(clk_timer, TIM_CHANNEL_1);
}

// stop high speed clock
void hsc_stop(void)
{
  HAL_TIM_PWM_Stop(clk_timer, TIM_CHANNEL_1);

  GPIO_InitTypeDef GPIO_InitStruct;
  GPIO_InitStruct.Pin = CPU_CLK_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
  HAL_GPIO_Init(CPU_CLK_GPIO_Port, &GPIO_InitStruct);
  HAL_GPIO_WritePin(CPU_CLK_GPIO_Port, CPU_CLK_Pin, HIGH);
}

void cycle_clock(int32_t count)
{
  for(int32_t i = 0; i < count; i++)
  {
    HAL_GPIO_WritePin(CPU_CLK_GPIO_Port, CPU_CLK_Pin, LOW);
    HAL_Delay(10);
    HAL_GPIO_WritePin(CPU_CLK_GPIO_Port, CPU_CLK_Pin, HIGH);
    HAL_Delay(10);
  }
}

void cpu_reset(void)
{
  HAL_GPIO_WritePin(GPIOC, BUSREQ_Pin|NMI_Pin|INT_Pin, HIGH);
  HAL_GPIO_WritePin(GPIOC, RESET_Pin, LOW);
  cycle_clock(10);
  HAL_GPIO_WritePin(GPIOC, RESET_Pin, HIGH);
}

void claim_bus(void)
{
  HAL_GPIO_WritePin(BUSREQ_GPIO_Port, BUSREQ_Pin, LOW);
  while(HAL_GPIO_ReadPin(BUSACK_GPIO_Port, BUSACK_Pin) != LOW)
    cycle_clock(1);
}

void addr_input(void)
{
  // input mode
  CPU_ADDR_PORT->MODER = 0;
  // pull up
  CPU_ADDR_PORT->PUPDR = 0x55555555;
}

void data_input(void)
{
  // input mode
  CPU_DATA_PORT->MODER &= 0xffff0000;
  // pull up
  CPU_DATA_PORT->PUPDR |= 0x5555;
}

void addr_output(void)
{
  // output mode
  CPU_ADDR_PORT->MODER = 0x55555555;
  // pushpull
  CPU_ADDR_PORT->OTYPER &= 0xffff0000;
  // max speed
  CPU_ADDR_PORT->OSPEEDR = 0xffffffff;
}

void data_output(void)
{
  // output mode
  CPU_DATA_PORT->MODER |= 0x5555;
  // pushpull
  CPU_DATA_PORT->OTYPER &= 0xffffff00;
  // max speed
  CPU_DATA_PORT->OSPEEDR |= 0xffff;
}

void mem_ctrl_input(void)
{
  GPIO_InitTypeDef GPIO_InitStruct;
  GPIO_InitStruct.Pin = MREQ_Pin|RD_Pin|WR_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
}

void mem_ctrl_output(void)
{
  GPIO_InitTypeDef GPIO_InitStruct;
  GPIO_InitStruct.Pin = MREQ_Pin|RD_Pin|WR_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
  HAL_GPIO_WritePin(GPIOC, MREQ_Pin|RD_Pin|WR_Pin, HIGH);
}

void addr_data_display_update(void)
{
  curr_addr = CPU_ADDR_PORT->IDR;
  curr_data = CPU_DATA_PORT->IDR & 0xff;
  if(curr_addr != prev_addr || curr_data != prev_data)
  {
    HAL_Delay(10);
    sprintf(print_buf, "0x%X", curr_addr);
    lcd_print_width(130, 10, 180, 45, "YELLOW", print_buf);
    sprintf(print_buf, "0x%X", curr_data);
    lcd_print_width(130, 60, 180, 45, "YELLOW", print_buf);
    prev_addr = curr_addr;
    prev_data = curr_data;
  }
}

void build_ui(void)
{
  lcd_print(10, 10, "WHITE", "ADDR:");
  lcd_print(10, 60, "WHITE", "DATA:");
  lcd_print(10, 110, "WHITE", "STAT:");
  lcd_print_width(130, 110, 180, 45, "YELLOW", "STOPPED");
}

int32_t goto_next_arg(int32_t current_pos, char* buf)
{
  int32_t buf_size = strlen(buf);
  while(current_pos < buf_size && buf[current_pos] != ' ')
    current_pos++;
  while(current_pos < buf_size && buf[current_pos] == ' ')
    current_pos++;
  return current_pos;
}

uint8_t read_eep(uint16_t addr)
{
  uint8_t ret;
  CPU_ADDR_PORT->ODR = addr;
  addr_output();
  data_input();
  HAL_GPIO_WritePin(CPU_CTRL_PORT, MREQ_Pin, LOW);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, LOW);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, HIGH);
  ret = CPU_DATA_PORT->IDR & 0xff;
  HAL_GPIO_WritePin(CPU_CTRL_PORT, MREQ_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, HIGH);
  addr_input();
  data_input();
  return ret;
}

void write_eep(uint16_t addr, uint8_t data, uint8_t wait)
{
  uint8_t exsiting_byte = read_eep(addr);
  if(exsiting_byte == data)
    return;

  CPU_ADDR_PORT->ODR = addr;
  CPU_DATA_PORT->ODR = data;
  addr_output();
  data_output();
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, MREQ_Pin, LOW);
  // address latched on falling edge of 'WR
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, LOW);
  // data latched on rising edge of 'WR
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, MREQ_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, HIGH);

  if(wait)
  {
    while(read_eep(addr) != data)
      ;
  }

  addr_input();
  data_input();
}


void cmd_handler(char* cmd_buf)
{
  if(cmd_buf == NULL)
    return;

  for (int i = 0; i < strlen(cmd_buf); ++i)
    if(cmd_buf[i] == '\n' || cmd_buf[i] == '\r')
      cmd_buf[i] = 0;

  if(strncmp(cmd_buf, "r ", 2) == 0)
  {
    int32_t arg1_pos = goto_next_arg(0, cmd_buf);
    uint16_t addr = atoi(cmd_buf + arg1_pos);
    uint8_t data = read_eep(addr);
    printf("rd:a=%d,d=%d\n", addr, data);
  }

  if(strncmp(cmd_buf, "w ", 2) == 0)
  {
    int32_t arg1_pos = goto_next_arg(0, cmd_buf);
    uint16_t addr = atoi(cmd_buf + arg1_pos);
    int32_t arg2_pos = goto_next_arg(arg1_pos, cmd_buf);
    uint8_t data = atoi(cmd_buf + arg2_pos);
    write_eep(addr, data, addr < 0x8000);
    printf("wr:a=%d,d=%d\r\n", addr, data);
  }
  if(strncmp(cmd_buf, "z", 1) == 0)
  {
    printf("zeroing...\n");
    for (int i = 0; i < 0x8000; i++)
      write_eep(i, 0xff, 1);
    printf("zero complete\n");
  }
  if(strncmp(cmd_buf, "epm", 3) == 0)
    printf("already in program mode\n");
}

void program_mode(void)
{
  lcd_clear();
  lcd_print(10, 10, "YELLOW", "Setting up");

  hsc_stop();
  cpu_reset();
  claim_bus();
  addr_output();
  data_input();
  mem_ctrl_output();

  printf("in program mode\n");
  lcd_print(10, 10, "YELLOW", "Program Mode");
  lcd_print(10, 60, "YELLOW", "Awaiting cmd...");

  while(1)
  {
    usb_data = my_usb_readline();
    if(usb_data != NULL)
    {
      cmd_handler(usb_data);
      if(strncmp(usb_data, "qpm", 3) == 0)
      {
        printf("exiting program mode...\n");
        lcd_clear();
        hsc_stop();
        mem_ctrl_input();
        addr_input();
        data_input();
        cpu_reset();
        return;
      }
    }
  }
}
