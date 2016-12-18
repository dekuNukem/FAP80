  	HAL_Delay(1000);
  	printf("EEP address %d: %d\n", count, eeprom_read(count));
  	HAL_GPIO_TogglePin(DEBUG_LED_GPIO_Port, DEBUG_LED_Pin);
  	count++;


while (1)
  {
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
    HAL_UART_Receive_IT(&huart1, debug_byte_buf, 1);
    HAL_UART_Receive_IT(&huart2, esp_byte_buf, 1);
    if(linear_buf_line_available(&debug_lb))
    {
      printf("debug_lb: %s\n", debug_lb.buf);
      linear_buf_reset(&debug_lb);
    }
  }

printf("HIGH\n");
    HAL_GPIO_WritePin(DEBUG_LED_GPIO_Port, DEBUG_LED_Pin, HIGH);
    HAL_GPIO_WritePin(INTVECT_LOAD_GPIO_Port, INTVECT_LOAD_Pin, HIGH);
    HAL_GPIO_WritePin(LATCH1_GPIO_Port, LATCH1_Pin, HIGH);
    HAL_GPIO_WritePin(LATCH16_GPIO_Port, LATCH16_Pin, HIGH);
    HAL_GPIO_WritePin(Z80_INT_GPIO_Port, Z80_INT_Pin, HIGH);
    HAL_Delay(3000);

    printf("LOW\n");
    HAL_GPIO_WritePin(DEBUG_LED_GPIO_Port, DEBUG_LED_Pin, LOW);
    HAL_GPIO_WritePin(INTVECT_LOAD_GPIO_Port, INTVECT_LOAD_Pin, LOW);
    HAL_GPIO_WritePin(LATCH1_GPIO_Port, LATCH1_Pin, LOW);
    HAL_GPIO_WritePin(LATCH16_GPIO_Port, LATCH16_Pin, LOW);
    HAL_GPIO_WritePin(Z80_INT_GPIO_Port, Z80_INT_Pin, LOW);
    HAL_Delay(3000);




  while (1)
  {
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
    HAL_UART_Receive_IT(&huart1, debug_byte_buf, 1);
    HAL_UART_Receive_IT(&huart2, esp_byte_buf, 1);
    if(linear_buf_line_available(&debug_lb))
    {
      printf("debug_lb: %s\n", debug_lb.buf);

      if(strstr(debug_lb.buf, "st ") != NULL)
        rtc_update(debug_lb.buf);

      linear_buf_reset(&debug_lb);
    }

    if(linear_buf_line_available(&esp_lb))
    {
      printf("esp_lb: %s\n", esp_lb.buf);
      linear_buf_reset(&esp_lb);
    }

    if(HAL_GetTick() > next_print)
    {
      print_rtc();
      next_print = HAL_GetTick() + 1000;
    }

    int32_t ps2_char = ps2_get_char();
    if(ps2_char != -1)
      printf("%c", ps2_char);
  }


if(HAL_GetTick() > next_print)
    {
      print_rtc();
      next_print = HAL_GetTick() + 1000;
    }

void data_input(void)
{
  // input mode
  CPU_DATA_PORT->MODER &= 0xffff0000;
  // // pull up
  // CPU_DATA_PORT->PUPDR &= 0xffff5555;
}

void data_output(void)
{
  // output mode
  CPU_DATA_PORT->MODER |= 0xffff;
  // pushpull
  CPU_DATA_PORT->OTYPER &= 0xffff00ff;
  CPU_DATA_PORT->ODR |= 0xff;
}

void addr_input(void)
{
  // input mode
  CPU_ADDR_PORT->MODER &= 0xff00ffff;
  // // pull up
  // CPU_ADDR_PORT->PUPDR |= 0x550000;
}

void addr_output(void)
{
  // output mode
  CPU_ADDR_PORT->MODER |= 0x550000;
  // pushpull
  CPU_ADDR_PORT->OTYPER &= 0xfffff0ff;
  CPU_ADDR_PORT->ODR |= 0xf00;
}

printf("IOWR addr: %d, data: %d\n", cpld_addr, cpld_data);

void latch1_activate(void)
{
  HAL_GPIO_WritePin(LATCH1_GPIO_Port, LATCH1_Pin, GPIO_PIN_RESET);
}

void latch1_deactivate(void)
{
  HAL_GPIO_WritePin(LATCH1_GPIO_Port, LATCH1_Pin, GPIO_PIN_SET);
}

void latch16_activate(void)
{
  HAL_GPIO_WritePin(LATCH16_GPIO_Port, LATCH16_Pin, GPIO_PIN_SET);
}

void latch16_deactivate(void)
{
  HAL_GPIO_WritePin(LATCH16_GPIO_Port, LATCH16_Pin, GPIO_PIN_RESET);
}

void interrupt_activate(void)
{
  HAL_GPIO_WritePin(Z80_INT_GPIO_Port, Z80_INT_Pin, GPIO_PIN_RESET);
}

void interrupt_deactivate(void)
{
  HAL_GPIO_WritePin(Z80_INT_GPIO_Port, Z80_INT_Pin, GPIO_PIN_SET);
}

void vect_load


void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  HAL_GPIO_TogglePin(DEBUG_LED_GPIO_Port, DEBUG_LED_Pin);
  if(GPIO_Pin == PS2_CLK_Pin)
  {
    ps2_readbit(HAL_GPIO_ReadPin(PS2_DATA_GPIO_Port, PS2_DATA_Pin));
  }

  if(GPIO_Pin == IOWR_Pin)
  {
    data_input();
    addr_input();
    latch1_activate();
    cpld_addr = 0;
    cpld_addr = 0;
    cpld_data = CPLD_DATA_PORT->IDR & 0xff;
    cpld_addr = CPLD_ADDR_PORT->IDR & 0xf00 >> 8;
    latch1_deactivate();
    addr_history[test_counter] = cpld_addr;
    data_history[test_counter] = cpld_data;
    test_counter++;
    if(test_counter > 127)
      HAL_NVIC_DisableIRQ(EXTI4_15_IRQn);
  }
}


module dlatch8(
  input wire [7:0] data, 
  input wire LE_H,
  input wire OE_L,
  output reg [7:0] q
  );

reg [7:0] q_internal;

always @ (LE_H or OE_L or data)
if (OE_L) begin
  q <= 8'bzzzzzzzz;
end
else if (LE_H) begin
  q_internal <= data;
end
else if (~OE_L) begin
  q <= q_internal;
end
endmodule

module dlatch4(
  input wire [3:0] data, 
  input wire LE_H,
  input wire OE_L,
  output reg [3:0] q
  );

reg [3:0] q_internal;

always @ (LE_H or OE_L or data)
if (OE_L) begin
  q <= 4'bzzzz;
end
else if (LE_H) begin
  q_internal <= data;
end
else if (~OE_L) begin
  q <= q_internal;
end
endmodule

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  HAL_GPIO_TogglePin(DEBUG_LED_GPIO_Port, DEBUG_LED_Pin);
  if(GPIO_Pin == PS2_CLK_Pin)
  {
    ps2_readbit(HAL_GPIO_ReadPin(PS2_DATA_GPIO_Port, PS2_DATA_Pin));
  }

  if(GPIO_Pin == IOWR_Pin)
  {
    data_input();
    addr_input();
    latch1_activate();
    wtf[test_counter] = CPLD_DATA_PORT->IDR;
    latch1_deactivate();
    test_counter++;
  }
}
volatile int32_t cpld_data = 0;
volatile int32_t cpld_addr = 0;

  // HAL_Delay(1500);
  // printf("activitying interrupt...\n");
  // interrupt_activate(14);

  while(1)
  {
    printf("latch1_activate\n");
    latch1_activate();
    HAL_Delay(2000);
    printf("latch1_deactivate\n");
    latch1_deactivate();
    HAL_Delay(2000);

    printf("latch16_activate\n");
    latch16_activate();
    HAL_Delay(2000);
    printf("latch16_deactivate\n");
    latch16_deactivate();
    HAL_Delay(2000);
  }



void preload16(uint8_t address, uint8_t data)
{
  uint16_t value = 0;
  value = (address & 0xf) << 8;
  CPLD_DATA_PORT->ODR &= 0xf000;
  CPLD_DATA_PORT->ODR |= 0x2ab;
  data_output();
  addr_output();
  latch16_activate();
  HAL_Delay(100);
  latch16_deactivate();
  data_input();
  addr_input();
  printf("latch16 activated\n");
}


void preload16(uint8_t address, uint8_t data)
{
  uint16_t value = 0;
  value = (address & 0xf) << 8;
  value = value | data;
  printf("value: 0x%X\n", value);
  CPLD_DATA_PORT->ODR &= 0xf000;
  CPLD_DATA_PORT->ODR |= value;
  printf("ODR: 0x%X\n", CPLD_DATA_PORT->ODR);
  data_output();
  addr_output();
  latch16_activate();
  HAL_Delay(100);
  latch16_deactivate();
  data_input();
  addr_input();
}


