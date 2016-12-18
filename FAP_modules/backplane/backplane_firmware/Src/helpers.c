#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "helpers.h"

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
  if(lb->curr_index < LB_SIZE - 1)
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
