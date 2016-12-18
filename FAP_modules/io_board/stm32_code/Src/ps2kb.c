#include "stm32f0xx_hal.h"
#include "ps2kb.h"
#include "shared.h"
#include "delay_us.h"
#include <stdio.h>
#include <string.h>

#define PS2_CLK_TIMEOUT 500

typedef enum
{
  IDLE = 0,
  BIT0,
  BIT1,
  BIT2,
  BIT3,
  BIT4,
  BIT5,
  BIT6,
  BIT7,
  PARITY,
  STOP
} ps2_read_status;

uint8_t ps2_keymap_lower[] = {0, PS2_F9, 0, PS2_F5, PS2_F3, PS2_F1, PS2_F2, PS2_F12,
	0, PS2_F10, PS2_F8, PS2_F6, PS2_F4, PS2_TAB, '`', 0,
	0, 0 /*Lalt*/, 0 /*Lshift*/, 0, 0 /*Lctrl*/, 'q', '1', 0,
	0, 0, 'z', 's', 'a', 'w', '2', 0,
	0, 'c', 'x', 'd', 'e', '4', '3', 0,
	0, ' ', 'v', 'f', 't', 'r', '5', 0,
	0, 'n', 'b', 'h', 'g', 'y', '6', 0,
	0, 0, 'm', 'j', 'u', '7', '8', 0,
	0, ',', 'k', 'i', 'o', '0', '9', 0,
	0, '.', '/', 'l', ';', 'p', '-', 0,
	0, 0, '\'', 0, '[', '=', 0, 0,
	0 /*CapsLock*/, 0 /*Rshift*/, PS2_ENTER /*Enter*/, ']', 0, '\\', 0, 0,
	0, 0, 0, 0, 0, 0, PS2_BACKSPACE, 0,
	0, '1', 0, '4', '7', 0, 0, 0,
	'0', '.', '2', '5', '6', '8', PS2_ESC, 0 /*NumLock*/,
	PS2_F11, '+', '3', '-', '*', '9', PS2_SCROLL, 0,
	0, 0, 0, PS2_F7 };

uint8_t ps2_keymap_caps[] = {0, PS2_F9, 0, PS2_F5, PS2_F3, PS2_F1, PS2_F2, PS2_F12,
	0, PS2_F10, PS2_F8, PS2_F6, PS2_F4, PS2_TAB, '`', 0,
	0, 0 /*Lalt*/, 0 /*Lshift*/, 0, 0 /*Lctrl*/, 'q', '1', 0,
	0, 0, 'Z', 'S', 'A', 'W', '2', 0,
	0, 'C', 'X', 'D', 'E', '4', '3', 0,
	0, ' ', 'V', 'F', 'T', 'R', '5', 0,
	0, 'N', 'B', 'H', 'G', 'Y', '6', 0,
	0, 0, 'M', 'J', 'U', '7', '8', 0,
	0, ',', 'K', 'I', 'O', '0', '9', 0,
	0, '.', '/', 'L', ';', 'P', '-', 0,
	0, 0, '\'', 0, '[', '=', 0, 0,
	0 /*CapsLock*/, 0 /*Rshift*/, PS2_ENTER /*Enter*/, ']', 0, '\\', 0, 0,
	0, 0, 0, 0, 0, 0, PS2_BACKSPACE, 0,
	0, '1', 0, '4', '7', 0, 0, 0,
	'0', '.', '2', '5', '6', '8', PS2_ESC, 0 /*NumLock*/,
	PS2_F11, '+', '3', '-', '*', '9', PS2_SCROLL, 0,
	0, 0, 0, PS2_F7 };

uint8_t ps2_keymap_upper[] = {0, PS2_F9, 0, PS2_F5, PS2_F3, PS2_F1, PS2_F2, PS2_F12,
	0, PS2_F10, PS2_F8, PS2_F6, PS2_F4, PS2_TAB, '~', 0,
	0, 0 /*Lalt*/, 0 /*Lshift*/, 0, 0 /*Lctrl*/, 'Q', '!', 0,
	0, 0, 'Z', 'S', 'A', 'W', '@', 0,
	0, 'C', 'X', 'D', 'E', '$', '#', 0,
	0, ' ', 'V', 'F', 'T', 'R', '%', 0,
	0, 'N', 'B', 'H', 'G', 'Y', '^', 0,
	0, 0, 'M', 'J', 'U', '&', '*', 0,
	0, '<', 'K', 'I', 'O', ')', '(', 0,
	0, '>', '?', 'L', ':', 'P', '_', 0,
	0, 0, '"', 0, '{', '+', 0, 0,
	0 /*CapsLock*/, 0 /*Rshift*/, PS2_ENTER /*Enter*/, '}', 0, '|', 0, 0,
	0, 0, 0, 0, 0, 0, PS2_BACKSPACE, 0,
	0, '1', 0, '4', '7', 0, 0, 0,
	'0', '.', '2', '5', '6', '8', PS2_ESC, 0 /*NumLock*/,
	PS2_F11, '+', '3', '-', '*', '9', PS2_SCROLL, 0,
	0, 0, 0, PS2_F7 };

ps2_read_status ps2_status;
int32_t latest_keystroke;
int32_t kb_data;
int32_t last_recv;
int32_t is_break;
int32_t is_extra;
int32_t is_shift_held;
int32_t is_cap_lock;

void ps2_init(void)
{
	ps2_status = IDLE;
	latest_keystroke = -1;
	last_recv = 0;
	kb_data = 0;
}

int32_t is_scancode_shift(int32_t code)
{
	return code == 0x12 || code == 0x59;
}

void ps2_readbit(GPIO_PinState state)
{
	if(ps2_status != IDLE && micros() - last_recv > PS2_CLK_TIMEOUT)
	{
		ps2_status = BIT0;
		kb_data = 0;
	}

	last_recv = micros();
	uint8_t value = state & 0x1;

	if(ps2_status == IDLE)
	{
		ps2_status = BIT0;
		kb_data = 0;
		return;
	}

	if(ps2_status == BIT0)
	{
		kb_data |= value;
		ps2_status = BIT1;
		return;
	}

	if(ps2_status == BIT1)
	{
		kb_data = kb_data | (value << 1);
		ps2_status = BIT2;
		return;
	}

	if(ps2_status == BIT2)
	{
		kb_data = kb_data | (value << 2);
		ps2_status = BIT3;
		return;
	}

	if(ps2_status == BIT3)
	{
		kb_data = kb_data | (value << 3);
		ps2_status = BIT4;
		return;
	}

	if(ps2_status == BIT4)
	{
		kb_data = kb_data | (value << 4);
		ps2_status = BIT5;
		return;
	}

	if(ps2_status == BIT5)
	{
		kb_data = kb_data | (value << 5);
		ps2_status = BIT6;
		return;
	}

	if(ps2_status == BIT6)
	{
		kb_data = kb_data | (value << 6);
		ps2_status = BIT7;
		return;
	}

	if(ps2_status == BIT7)
	{
		kb_data = kb_data | (value << 7);
		ps2_status = PARITY;
		return;
	}

	if(ps2_status == PARITY)
	{
		ps2_status = STOP;
		return;
	}

	if(ps2_status == STOP)
	{
		ps2_status = IDLE;

		if(is_break) // this byte is break repeat
		{
			if(is_shift_held && is_scancode_shift(kb_data))
				is_shift_held = 0;
			is_break = 0;
			is_extra = 0;
			return;
		}

		if(kb_data == 0xf0) // next byte is break
		{
			is_break = 1;
			return;
		}

		if(kb_data == 0xe0) // next byte is extra
		{
			is_extra = 1;
			return;
		}

		if(kb_data == 0x58)
		{
			is_cap_lock = (is_cap_lock + 1) % 2;
			return;
		}

		if(is_scancode_shift(kb_data))
		{
			is_shift_held = 1;
			return;
		}

		latest_keystroke = kb_data;
		return;
	}
}

int32_t ps2_get_scancode(void)
{
	int32_t ret = -1;
	if(latest_keystroke != -1)
	{
		ret = latest_keystroke;
		latest_keystroke = -1;
	}
	return ret;
}

int32_t ps2_get_char(void)
{
	int32_t scancode = ps2_get_scancode();
	if(scancode != -1)
	{
		is_extra = 0;
		if(is_shift_held)
		{
			if(is_cap_lock)
				return ps2_keymap_lower[scancode];
			else
				return ps2_keymap_upper[scancode];
		}
		else if(is_cap_lock)
			return ps2_keymap_caps[scancode];
		else
			return ps2_keymap_lower[scancode];
	}
	return -1;
}
