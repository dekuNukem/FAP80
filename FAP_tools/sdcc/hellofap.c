#include <stdio.h>
#include <string.h>

#define COPY_CTRL_REG_ADDR 0x92c1
#define CURSOR_POS_REG_ADDR 0x92c2

#define VRAM_CHAR_START_ADDR 0x8000
#define VRAM_CHAR_END_ADDR 0x895f
#define VRAM_ATTRI_START_ADDR 0x8960
#define VRAM_ATTRI_END_ADDR 0x92bf
#define BUF_SIZE 32

#define cursor_goback() (*cursor_pos_reg)--

typedef unsigned char uint8_t;
typedef unsigned int uint16_t;

// const values are put in ROM
const uint16_t cursor_lookup[30] = {0x8000, 0x8050, 0x80a0, 0x80f0, 0x8140, 0x8190, 0x81e0, 0x8230, 0x8280, 0x82d0, 0x8320, 0x8370, 0x83c0, 0x8410, 0x8460, 0x84b0, 0x8500, 0x8550, 0x85a0, 0x85f0, 0x8640, 0x8690, 0x86e0, 0x8730, 0x8780, 0x87d0, 0x8820, 0x8870, 0x88c0, 0x8910};
const uint8_t boot_msg[] = "this is a global variable. hello world this is a very long message i hope it still works. does it work when changing into a new line? only one way to find out! what the fuck is happening here? needs to be longer to find out. how about even longer? now i'm going past 256 characters, will it break?";

uint16_t* cursor_pos_reg = (uint16_t*)CURSOR_POS_REG_ADDR;
__sfr __at 0x1 kb_port;

volatile uint8_t kb_buf[BUF_SIZE];
volatile uint8_t kb_index;

void my_putc(uint8_t character);
void my_itoa(uint8_t val);
void my_puts(uint8_t* data);
void check_scroll();

void check_scroll()
{
	return;
}

void set_cursor(uint8_t x, uint8_t y)
{
	*cursor_pos_reg = cursor_lookup[y] + x;
	check_scroll();
}

void clear_screen()
{
	uint8_t* vram_copy_ctrl = (uint8_t*)COPY_CTRL_REG_ADDR;
	uint8_t* current_char = (uint8_t*)VRAM_CHAR_START_ADDR;
	uint8_t* current_attri = (uint8_t*)VRAM_ATTRI_START_ADDR;

	*vram_copy_ctrl = 0;

	while(current_char < (uint8_t*)VRAM_CHAR_END_ADDR)
	{
		*current_char = '.';
		current_char++;
	}

	while(current_attri < (uint8_t*)0x92c0)
	{
		*current_attri = 0x0f;
		current_attri++;
	}

	*vram_copy_ctrl = 0xff;
}

void my_puts(uint8_t* data)
{
	uint16_t i;
	uint16_t len = strlen(data);
	for (i = 0; i < len; ++i)
		my_putc(data[i]);
}

void my_itoa(uint8_t val)
{
	uint8_t i;
	uint8_t buf[5] = {0,0,0,0,0};
	for(i=1; i<=3; i++)
	{
		buf[3-i] = (uint8_t) ((uint8_t)(val % 10) + '0');
		val /= 10;
	}
	buf[3] = ';';
	buf[4] = 0;
	my_puts(buf);
}

void cursor_advance()
{
	(*cursor_pos_reg)++;
	check_scroll();
}

void my_putc(uint8_t character)
{
	uint8_t current_y;
	uint8_t* current_char = (uint8_t*)(*cursor_pos_reg);
	uint8_t* vram_copy_ctrl = (uint8_t*)COPY_CTRL_REG_ADDR;

	*vram_copy_ctrl = 0;

	if(character == 127)
	{
		cursor_goback();
		*current_char = 27;
	}
	else if(character == '\n')
	{
		current_y = ((*cursor_pos_reg) & 0x7fff) / 80;
		set_cursor(0, current_y + 1);
	}
	else
	{
		*current_char = character;
		cursor_advance();
	}
	*vram_copy_ctrl = 0xff;
}

void main()
{
	kb_index = 0;
	memset(kb_buf, 0, BUF_SIZE);
	clear_screen();
	set_cursor(6, 9);
	my_puts(boot_msg);
	while(1)
	{
		if(kb_index != 0)
		{
			my_puts(kb_buf);
			kb_index = 0;
			memset(kb_buf, 0, BUF_SIZE);
		}
	}
}

// this is a hack to put the keyboard ISR exactly where it needs to be
void begin_absolute_code(void) __naked
{
    __asm
          .area	_ISR (ABS)
          .org 0x1600
    __endasm;
}

void  isr_0(void) __critical __interrupt(0) __naked
{	
	kb_buf[kb_index] = kb_port;
	if(kb_index <= BUF_SIZE - 2)
		kb_index++;
	else
		kb_index = 0;
	__asm
		ei
		reti
	__endasm;
}

void end_absolute_code(void) __naked
{
    __asm
        .area _ISR
    __endasm;
}