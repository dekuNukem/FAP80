;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Mac OS X i386)
;--------------------------------------------------------
	.module hellofap
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _end_absolute_code
	.globl _isr_0
	.globl _begin_absolute_code
	.globl _main
	.globl _cursor_advance
	.globl _clear_screen
	.globl _set_cursor
	.globl _strlen
	.globl _cursor_pos_reg
	.globl _kb_index
	.globl _kb_buf
	.globl _boot_msg
	.globl _cursor_lookup
	.globl _check_scroll
	.globl _my_puts
	.globl _my_itoa
	.globl _my_putc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_kb_port	=	0x0001
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_kb_buf::
	.ds 32
_kb_index::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_cursor_pos_reg::
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;hellofap.c:32: void check_scroll()
;	---------------------------------
; Function check_scroll
; ---------------------------------
_check_scroll::
;hellofap.c:34: return;
	ret
_cursor_lookup:
	.dw #0x8000
	.dw #0x8050
	.dw #0x80a0
	.dw #0x80f0
	.dw #0x8140
	.dw #0x8190
	.dw #0x81e0
	.dw #0x8230
	.dw #0x8280
	.dw #0x82d0
	.dw #0x8320
	.dw #0x8370
	.dw #0x83c0
	.dw #0x8410
	.dw #0x8460
	.dw #0x84b0
	.dw #0x8500
	.dw #0x8550
	.dw #0x85a0
	.dw #0x85f0
	.dw #0x8640
	.dw #0x8690
	.dw #0x86e0
	.dw #0x8730
	.dw #0x8780
	.dw #0x87d0
	.dw #0x8820
	.dw #0x8870
	.dw #0x88c0
	.dw #0x8910
_boot_msg:
	.ascii "this is a global variable. hello world this is a very long m"
	.ascii "essage i hope it still works. does it work when changing int"
	.ascii "o a new line? only one way to find out! what the fuck is hap"
	.ascii "pening here? needs to be longer to find out. how about even "
	.ascii "longer? now i'm going past 256 characters, will it break?"
	.db 0x00
;hellofap.c:37: void set_cursor(uint8_t x, uint8_t y)
;	---------------------------------
; Function set_cursor
; ---------------------------------
_set_cursor::
	push	ix
	ld	ix,#0
	add	ix,sp
;hellofap.c:39: *cursor_pos_reg = cursor_lookup[y] + x;
	ld	bc,(_cursor_pos_reg)
	ld	de,#_cursor_lookup+0
	ld	l,5 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,4 (ix)
	ld	h,#0x00
	add	hl,de
	ex	de,hl
	ld	a,e
	ld	(bc),a
	inc	bc
	ld	a,d
	ld	(bc),a
;hellofap.c:40: check_scroll();
	pop	ix
	jp	_check_scroll
;hellofap.c:43: void clear_screen()
;	---------------------------------
; Function clear_screen
; ---------------------------------
_clear_screen::
;hellofap.c:49: *vram_copy_ctrl = 0;
	ld	hl,#0x92c1
	ld	(hl),#0x00
;hellofap.c:51: while(current_char < (uint8_t*)VRAM_CHAR_END_ADDR)
	ld	hl,#0x8000
00101$:
	ld	a,l
	sub	a, #0x5f
	ld	a,h
	sbc	a, #0x89
	jr	NC,00112$
;hellofap.c:53: *current_char = '.';
	ld	(hl),#0x2e
;hellofap.c:54: current_char++;
	inc	hl
	jr	00101$
;hellofap.c:57: while(current_attri < (uint8_t*)0x92c0)
00112$:
	ld	hl,#0x8960
00104$:
	ld	a,l
	sub	a, #0xc0
	ld	a,h
	sbc	a, #0x92
	jr	NC,00106$
;hellofap.c:59: *current_attri = 0x0f;
	ld	(hl),#0x0f
;hellofap.c:60: current_attri++;
	inc	hl
	jr	00104$
00106$:
;hellofap.c:63: *vram_copy_ctrl = 0xff;
	ld	hl,#0x92c1
	ld	(hl),#0xff
	ret
;hellofap.c:66: void my_puts(uint8_t* data)
;	---------------------------------
; Function my_puts
; ---------------------------------
_my_puts::
	push	ix
	ld	ix,#0
	add	ix,sp
;hellofap.c:69: uint16_t len = strlen(data);
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_strlen
	pop	af
	ld	c,l
	ld	b,h
;hellofap.c:70: for (i = 0; i < len; ++i)
	ld	de,#0x0000
00103$:
	ld	a,e
	sub	a, c
	ld	a,d
	sbc	a, b
	jr	NC,00105$
;hellofap.c:71: my_putc(data[i]);
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,de
	ld	h,(hl)
	push	bc
	push	de
	push	hl
	inc	sp
	call	_my_putc
	inc	sp
	pop	de
	pop	bc
;hellofap.c:70: for (i = 0; i < len; ++i)
	inc	de
	jr	00103$
00105$:
	pop	ix
	ret
;hellofap.c:74: void my_itoa(uint8_t val)
;	---------------------------------
; Function my_itoa
; ---------------------------------
_my_itoa::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;hellofap.c:77: uint8_t buf[5] = {0,0,0,0,0};
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ld	e, c
	ld	d, b
	inc	de
	xor	a, a
	ld	(de),a
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	xor	a, a
	ld	(de),a
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	xor	a, a
	ld	(de),a
	ld	hl,#0x0004
	add	hl,bc
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;hellofap.c:78: for(i=1; i<=3; i++)
	ld	-5 (ix),#0x01
00102$:
;hellofap.c:80: buf[3-i] = (uint8_t) ((uint8_t)(val % 10) + '0');
	ld	a,#0x03
	sub	a, -5 (ix)
	add	a, c
	ld	-4 (ix),a
	ld	a,#0x00
	adc	a, b
	ld	-3 (ix),a
	push	bc
	push	de
	ld	a,#0x0a
	push	af
	inc	sp
	ld	a,4 (ix)
	push	af
	inc	sp
	call	__moduchar
	pop	af
	pop	de
	pop	bc
	ld	a,l
	add	a, #0x30
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),a
;hellofap.c:81: val /= 10;
	push	bc
	push	de
	ld	a,#0x0a
	push	af
	inc	sp
	ld	a,4 (ix)
	push	af
	inc	sp
	call	__divuchar
	pop	af
	pop	de
	pop	bc
	ld	4 (ix),l
;hellofap.c:78: for(i=1; i<=3; i++)
	inc	-5 (ix)
	ld	a,#0x03
	sub	a, -5 (ix)
	jr	NC,00102$
;hellofap.c:83: buf[3] = ';';
	ld	a,#0x3b
	ld	(de),a
;hellofap.c:84: buf[4] = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;hellofap.c:85: my_puts(buf);
	push	bc
	call	_my_puts
	ld	sp,ix
	pop	ix
	ret
;hellofap.c:88: void cursor_advance()
;	---------------------------------
; Function cursor_advance
; ---------------------------------
_cursor_advance::
;hellofap.c:90: (*cursor_pos_reg)++;
	ld	hl,(_cursor_pos_reg)
	push	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	inc	bc
	ld	(hl),c
	inc	hl
	ld	(hl),b
;hellofap.c:91: check_scroll();
	jp  _check_scroll
;hellofap.c:94: void my_putc(uint8_t character)
;	---------------------------------
; Function my_putc
; ---------------------------------
_my_putc::
	push	ix
	ld	ix,#0
	add	ix,sp
;hellofap.c:97: uint8_t* current_char = (uint8_t*)(*cursor_pos_reg);
	ld	hl,(_cursor_pos_reg)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;hellofap.c:100: *vram_copy_ctrl = 0;
	ld	hl,#0x92c1
	ld	(hl),#0x00
;hellofap.c:97: uint8_t* current_char = (uint8_t*)(*cursor_pos_reg);
	ld	hl,(_cursor_pos_reg)
;hellofap.c:102: if(character == 127)
	ld	a,4 (ix)
	sub	a, #0x7f
	jr	NZ,00105$
;hellofap.c:104: cursor_goback();
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	hl
	dec	de
	ld	(hl),e
	inc	hl
	ld	(hl),d
;hellofap.c:105: *current_char = 27;
	ld	a,#0x1b
	ld	(bc),a
	jr	00106$
00105$:
;hellofap.c:107: else if(character == '\n')
	ld	a,4 (ix)
	sub	a, #0x0a
	jr	NZ,00102$
;hellofap.c:109: current_y = ((*cursor_pos_reg) & 0x7fff) / 80;
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	res	7, b
	ld	hl,#0x0050
	push	hl
	push	bc
	call	__divuint
	pop	af
	pop	af
	ld	b,l
;hellofap.c:110: set_cursor(0, current_y + 1);
	inc	b
	push	bc
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_cursor
	pop	af
	jr	00106$
00102$:
;hellofap.c:114: *current_char = character;
	ld	a,4 (ix)
	ld	(bc),a
;hellofap.c:115: cursor_advance();
	call	_cursor_advance
00106$:
;hellofap.c:117: *vram_copy_ctrl = 0xff;
	ld	hl,#0x92c1
	ld	(hl),#0xff
	pop	ix
	ret
;hellofap.c:120: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;hellofap.c:122: kb_index = 0;
	ld	hl,#_kb_index + 0
	ld	(hl), #0x00
;hellofap.c:123: memset(kb_buf, 0, BUF_SIZE);
	ld	hl,#_kb_buf
	ld	b, #0x20
00116$:
	ld	(hl), #0x00
	inc	hl
	djnz	00116$
;hellofap.c:124: clear_screen();
	call	_clear_screen
;hellofap.c:125: set_cursor(6, 9);
	ld	hl,#0x0906
	push	hl
	call	_set_cursor
;hellofap.c:126: my_puts(boot_msg);
	ld	hl, #_boot_msg
	ex	(sp),hl
	call	_my_puts
	pop	af
;hellofap.c:127: while(1)
00104$:
;hellofap.c:129: if(kb_index != 0)
	ld	a,(#_kb_index + 0)
	or	a, a
	jr	Z,00104$
;hellofap.c:131: my_puts(kb_buf);
	ld	hl,#_kb_buf
	push	hl
	call	_my_puts
	pop	af
;hellofap.c:132: kb_index = 0;
	ld	hl,#_kb_index + 0
	ld	(hl), #0x00
;hellofap.c:133: memset(kb_buf, 0, BUF_SIZE);
	ld	hl,#_kb_buf
	ld	b, #0x20
00118$:
	ld	(hl), #0x00
	inc	hl
	djnz	00118$
	jr	00104$
;hellofap.c:138: void begin_absolute_code(void) __naked
;	---------------------------------
; Function begin_absolute_code
; ---------------------------------
_begin_absolute_code::
;hellofap.c:143: __endasm;
	.area	_ISR (ABS)
	.org	0x1600
;hellofap.c:146: void  isr_0(void) __critical __interrupt(0) __naked
;	---------------------------------
; Function isr_0
; ---------------------------------
_isr_0::
;hellofap.c:148: kb_buf[kb_index] = kb_port;
	ld	bc,#_kb_buf+0
	ld	hl,(_kb_index)
	ld	h,#0x00
	add	hl,bc
	in	a,(_kb_port)
	ld	(hl),a
;hellofap.c:149: if(kb_index <= BUF_SIZE - 2)
	ld	a,#0x1e
	ld	iy,#_kb_index
	sub	a, 0 (iy)
	jr	C,00102$
;hellofap.c:150: kb_index++;
	inc	0 (iy)
	jr	00103$
00102$:
;hellofap.c:152: kb_index = 0;
	ld	iy,#_kb_index
	ld	0 (iy),#0x00
00103$:
;hellofap.c:156: __endasm;
	ei
	reti
;hellofap.c:159: void end_absolute_code(void) __naked
;	---------------------------------
; Function end_absolute_code
; ---------------------------------
_end_absolute_code::
;hellofap.c:163: __endasm;
	.area	_ISR
	.area _CODE
	.area _INITIALIZER
__xinit__cursor_pos_reg:
	.dw #0x92c2
	.area _CABS (ABS)
