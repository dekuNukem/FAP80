uint32_t start = micros();
    write_eep(addr, data);
    printf("wr:a=%d,d=%d took %d microsec\r\n", addr, data, micros() - start);
  if ((hUsbDeviceFS.dev_state != USBD_STATE_CONFIGURED) || (hUsbDeviceFS.ep0_state == USBD_EP0_STATUS_IN))
    return USBD_FAIL;
  lcd_print(10, 10, "WHITE", "ADDR:");
  lcd_print_width(130, 10, 180, 45, "YELLOW", "UNKNOWN");
  lcd_print(10, 60, "WHITE", "DATA:");
  lcd_print_width(130, 60, 180, 45, "YELLOW", "UNKNOWN");
  lcd_print(10, 110, "WHITE", "STAT:");
  lcd_print_width(130, 110, 180, 45, "YELLOW", "STOPPED");
void mem_test()
{
	for (uint32_t i = 0; i < 32768; ++i)
		write_eep(i, 0x55);

	for (uint32_t i = 0; i < 32768; ++i)
	{
		uint8_t result = read_eep(i);
		if(result != 0x55)
			while(1)
			{
				lcd_print(10, 120, "YELLOW", "MEM FAIL");
				HAL_Delay(500);
			}
	}
	lcd_print(10, 120, "YELLOW", "MEM PASSED");
}


void write_eeprom(uint16_t addr, uint8_t data)
{
	addr_output();
	data_output();
	CPU_ADDR_PORT->ODR = addr;
	CPU_DATA_PORT->ODR |= data;
  HAL_GPIO_WritePin(CPU_CTRL_PORT, MREQ_Pin, LOW);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, LOW);
  HAL_Delay(100);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, MREQ_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, HIGH);
}

void write_eeprom(uint16_t addr, uint8_t data)
{
  // first read the data on the current address, if it's the same we can save some time
  // uint8_t exsiting_byte = read_eep(addr);
  // if(exsiting_byte == data)
  //   return;

  // if not the same, set up write
  HAL_GPIO_WritePin(CPU_CTRL_PORT, MREQ_Pin, LOW);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, HIGH);
  // address latched on falling edge of 'WR
  CPU_ADDR_PORT->ODR = addr;
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, LOW);
  data_output();
  CPU_DATA_PORT->ODR = data;
  // data latched on rising edge of 'WR
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, HIGH);
  // switch back to input and keep polling to see if write is complete
  data_input();
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, LOW);
  while(1)
  {
    uint8_t exsiting_byte = CPU_DATA_PORT->IDR;
    if(exsiting_byte == data)
      break;
  }
  HAL_GPIO_WritePin(CPU_CTRL_PORT, MREQ_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, HIGH);
}

void write_eep(uint16_t addr, uint8_t data)
{
  uint8_t exsiting_byte = read_eep(addr);
  if(exsiting_byte == data)
    return;

	HAL_GPIO_WritePin(CPU_CTRL_PORT, MREQ_Pin, LOW);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, LOW);

  addr_output();
	data_output();
  CPU_ADDR_PORT->ODR = addr;
  CPU_DATA_PORT->ODR = data;
  
  HAL_Delay(100);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, HIGH);
  HAL_Delay(100);
  data_input();
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, LOW);
  while(1)
  {
    exsiting_byte = CPU_DATA_PORT->IDR;
    if(exsiting_byte == data)
      break;
  }
  addr_output();
	data_input();
  HAL_GPIO_WritePin(CPU_CTRL_PORT, MREQ_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, RD_Pin, HIGH);
  HAL_GPIO_WritePin(CPU_CTRL_PORT, WR_Pin, HIGH);
}


run_state run_status = STOPPED;
typedef enum {STOPPED, RUNNING, TRACING} run_state;


if(usb_recv_buf.buf[usb_recv_buf.curr_index - 2] == '\r')
      		usb_recv_buf.buf[usb_recv_buf.curr_index - 2] = 0;


printf("%s\n", usb_recv_buf.buf);


if(usb_recv_buf.curr_index > 1)
    {
      if(usb_recv_buf.buf[usb_recv_buf.curr_index - 1] == '\n')
      {
        cmd_handler(usb_recv_buf.buf);
        linear_buf_reset(&usb_recv_buf);
      }
      else if(HAL_GetTick() - usb_recv_buf.last_recv > 250)
      {
        printf("timeout\n");
        linear_buf_reset(&usb_recv_buf);
      }
    }


    this_addr = CPU_ADDR_PORT->IDR;
    this_data = CPU_DATA_PORT->IDR & 0xff;
    if(this_addr != prev_addr || this_data != prev_data)
    {
      print_addr_data(this_addr, this_data);
      prev_addr = this_addr;
      prev_data = this_data;
    }


HAL_GPIO_TogglePin(SOFTSERIAL_TX_GPIO_Port, SOFTSERIAL_TX_Pin);
    delay_us(98);

void lcd_print(int32_t x, int32_t y, int32_t width, int32_t height, int32_t font_id, char* ink_color, char* bg_color, char* message)
{
	memset(lcd_buf, 0, LCD_BUF_SIZE);
	sprintf(lcd_buf, "xstr %d,%d,%d,%d,%d,%s,%s,1,1,1,\"%s\"", x, y, width, height, font_id, ink_color, bg_color, message);
	lcd_say(lcd_buf);
}

lcd_say("cls WHITE");
  HAL_Delay(500);
  // lcd_say("xstr 10,10,310,45,2,BLACK,YELLOW,0,0,1,\"BUSACK...\"");
  lcd_print(10, 10, "HELLO WORLD");


if(is_button_1_pressed)
    {
      printf("button 1\n");
      is_button_1_pressed = 0;
    }

if(HAL_GetTick() - usb_recv_buf.last_recv > 5 && usb_recv_buf.buf[0])
    {
      printf("%s\n", usb_recv_buf.buf);
      linear_buf_reset(&usb_recv_buf);
    }
    if(usb_recv_buf.curr_index > 0 && usb_recv_buf.buf[usb_recv_buf.curr_index - 1] == '\n')
    {
      printf("%s\n", usb_recv_buf.buf);
      linear_buf_reset(&usb_recv_buf);
    }
    if(HAL_GetTick() - usb_recv_buf.last_recv > 100)

if(usb_recv_buf.curr_index > 0)
    {
      if(usb_recv_buf.buf[usb_recv_buf.curr_index - 1] == '\n')
      {
        printf("%s\n", usb_recv_buf.buf);
        linear_buf_reset(&usb_recv_buf);
      }
      else if(HAL_GetTick() - usb_recv_buf.last_recv > 250)
      {
        printf("timeout\n");
        linear_buf_reset(&usb_recv_buf);
      }
    }

void addr_input(void)
{
	// input with pull
	GPIOB->CRL = 0x88888888;
  GPIOB->CRH = 0x88888888;
  // pull up
  GPIOB->ODR |= 0xffff;
}

void data_input(void)
{
	GPIOA->CRL = 0x88888888;
  GPIOA->ODR |= 0xff;
}

void addr_output(void)
{
	GPIOB->CRL = 0x33333333;
  GPIOB->CRH = 0x33333333;
}

void data_output(void)
{
	GPIOA->CRL = 0x33333333;
}
// max speed
	GPIOB->OSPEEDR = 0xffffffff;



int32_t usb_sendlen(char* buf, int32_t len)
{
  uint8_t result = USBD_FAIL;
  int32_t retry_count = 0;
  while(1)
  {
    result = CDC_Transmit_FS(buf, len);
    if(result == USBD_OK)
      return 0;
    if(result == USBD_BUSY)
    {
      HAL_Delay(2);
      if(++retry_count >= 10)
        return 2;
      continue;
    }
    if(result == USBD_FAIL)
      return 1;
  }
}

void usb_sendall_len(char* buf, int32_t length)
{
  if(length <= 0)
    return;
  char* buf_end = buf + length;
  int32_t chunks = length / 64;
  for (int i = 0; i <= chunks; i++)
  {
    char* chunk_start = buf + i * 64;
    if(buf_end - chunk_start >= 64)
      usb_sendlen(chunk_start, 64);
    else
      usb_sendlen(chunk_start, buf_end - chunk_start);
  }
}

void usb_sendall(char* buf)
{
  usb_sendall_len(buf, strlen(buf));
}

void usb_sendall(char* buf);
void usb_sendall_len(char* buf, int32_t length);
