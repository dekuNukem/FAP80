#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "helpers.h"
#include "shared.h"
#include "eeprom.h"

#define INT32MAX (0x7FFFFFFF)

RTC_TimeTypeDef time_to_update;
RTC_DateTypeDef date_to_update;
RTC_TimeTypeDef rtc_current_time;
RTC_DateTypeDef rtc_current_date;

int32_t linear_buf_init(linear_buf *lb)
{
  if(lb == NULL)
    return 1;
  linear_buf_reset(lb);
  lb->last_recv = 0;
  return 0;
}

int32_t linear_buf_reset(linear_buf *lb)
{
  if(lb == NULL)
    return 1;
  lb->curr_index = 0;
  memset(lb->buf, 0, LB_SIZE);
  return 0;
}

int32_t linear_buf_add(linear_buf *lb, char c)
{
  if(lb == NULL)
    return 1;
  lb->buf[lb->curr_index] = c;
  if(lb->curr_index < LB_SIZE)
    lb->curr_index++;
  lb->last_recv = HAL_GetTick();
  return 0;
}

int32_t linear_buf_add_str(linear_buf *lb, char *s, uint32_t len)
{
  if(lb == NULL || s == NULL)
    return 1;
  for(uint32_t i = 0; i < len; i++)
    linear_buf_add(lb, s[i]);
  lb->buf[LB_SIZE-1] = 0;
  return 0;
}

int32_t linear_buf_line_available(linear_buf *lb)
{
  // only checks last slot, if not called frequently enough might miss the 
  // sentense
  if(lb == NULL || lb->curr_index <= 0)
    return 0;
  if(lb->curr_index >= LB_SIZE && lb->buf[lb->curr_index - 1] != '\n')
  {
    linear_buf_reset(lb);
    return 0;
  }
  if(lb->buf[lb->curr_index - 1] == '\n')
    return 1;
  return 0;
}

int32_t linear_buf_idle(linear_buf *lb)
{
  if(lb == NULL || lb->curr_index <= 0)
    return 0;
  if(lb->curr_index >= LB_SIZE)
  {
    linear_buf_reset(lb);
    return 0;
  }
  if(HAL_GetTick() - lb->last_recv > 10)
    return 1;
  return 0;
}

int32_t get_arg(char* argstr, uint32_t index)
{
  if(argstr == NULL)
    return INT32MAX;

  char* str_end = argstr + strlen(argstr);
  char* curr = argstr;
  int32_t count = 0;

  while(curr < str_end && *curr != ' ')
    curr++;
  curr++;
  if(curr >= str_end)
    return INT32MAX - 1;
  if(index == 0)
    return atoi(curr);

  while(curr < str_end)
  {
    if(*curr == ' ')
      count++;
    if(count == index)
      break;
    curr++;
  }
  curr++;
  if(curr >= str_end)
    return INT32MAX - 2;
  return atoi(curr);
}

void rtc_update(char* argstr)
{
  date_to_update.Year = get_arg(argstr, 0);
  date_to_update.Month = get_arg(argstr, 1);
  date_to_update.Date = get_arg(argstr, 2);
  time_to_update.Hours = get_arg(argstr, 3);
  time_to_update.Minutes = get_arg(argstr, 4);
  time_to_update.Seconds = get_arg(argstr, 5);
  HAL_RTC_SetTime(rtc_ptr, &time_to_update, RTC_FORMAT_BIN);
  HAL_RTC_SetDate(rtc_ptr, &date_to_update, RTC_FORMAT_BIN);
  printf("rtc updated: 20%02d %d %d, %d %d %d\n", date_to_update.Year, date_to_update.Month, date_to_update.Date, time_to_update.Hours, time_to_update.Minutes, time_to_update.Seconds);
}

void print_rtc(void)
{
  HAL_RTC_GetTime(rtc_ptr, &rtc_current_time, RTC_FORMAT_BIN);
  HAL_RTC_GetDate(rtc_ptr, &rtc_current_date, RTC_FORMAT_BIN);
  printf("rtc now: 20%02d %d %d, %d %d %d\n", rtc_current_date.Year, rtc_current_date.Month, rtc_current_date.Date, rtc_current_time.Hours, rtc_current_time.Minutes, rtc_current_time.Seconds);
}

void data_input(void)
{
  // input mode
  CPLD_DATA_PORT->MODER &= 0xffff0000;
  // pull up
  CPLD_DATA_PORT->PUPDR &= 0xff000000;
}

void addr_input(void)
{
  // input mode
  CPLD_ADDR_PORT->MODER &= 0xff00ffff;
  // pull up
  CPLD_ADDR_PORT->PUPDR &= 0xff000000;
}

void data_output(void)
{
  // output mode
  CPLD_DATA_PORT->MODER |= 0x5555;
  // pushpull
  CPLD_DATA_PORT->OTYPER &= 0xff00;
}

void addr_output(void)
{
  // output mode
  CPLD_ADDR_PORT->MODER |= 0x550000;
  // pushpull
  CPLD_ADDR_PORT->OTYPER &= 0xf0ff;
}

void interrupt_activate(uint8_t vector)
{
  CPLD_DATA_PORT->ODR &= 0xff00;
  CPLD_DATA_PORT->ODR |= vector;
  printf("interrupt ODR: 0x%X\n", CPLD_DATA_PORT->ODR);
  data_output();
  vect_load_activate();
  vect_load_deactivate();
  data_input();
  HAL_GPIO_WritePin(Z80_INT_GPIO_Port, Z80_INT_Pin, GPIO_PIN_RESET);
}

void preload16(uint8_t address, uint8_t data)
{
  uint16_t value = 0;
  value = (address & 0xf) << 8;
  value = value | data;
  CPLD_DATA_PORT->ODR &= 0xf000;
  CPLD_DATA_PORT->ODR |= value;
  data_output();
  addr_output();
  latch16_activate();
  latch16_deactivate();
  data_input();
  addr_input();
}




