	.module crt0
	.globl	l__INITIALIZER
	.globl	s__INITIALIZED
	.globl	s__INITIALIZER
	.globl	_main

	vram_char_base_addr	.equ	0x8000
	vram_copy_ctrl_addr     .equ    0x92c1
	curser_addr     	.equ    0x92c2

	.area	_HEADER (ABS)
	;; Reset vector
	.org 	0
	jp	init

	.org	0x08
	reti
	.org	0x10
	reti
	.org	0x18
	reti
	.org	0x20
	reti
	.org	0x28
	reti
	.org	0x30
	reti
	.org	0x38
	reti

	.org	0x80
	.dw	#0x1600

	.org	curser_addr
	.dw	vram_char_base_addr

	.org	0x100
init:
	;; Set stack pointer directly above top of memory.
	ld	sp,#0xff00

	;; set cursor address to 0
	ld	hl, #vram_copy_ctrl_addr
	ld	(hl), #0xff

	;; Initialise global variables
	call	gsinit

	;; enable interrupt 
	ld	a, #0
	ld	i, a		; load interrupt register
	im	#2
	ei

	call	_main
	jp	_exit

	;; Ordering of segments for the linker.
	.area	_HOME
	.area	_CODE
	.area	_INITIALIZER
	.area   _GSINIT
	.area   _GSFINAL

	.area	_DATA
	.area	_INITIALIZED
	.area	_BSEG
	.area   _BSS
	.area   _HEAP

	.area   _CODE
__clock::
	ret

_exit::
	;; Exit - special code to the emulator
1$:
	halt
	jr	1$

	.area   _GSINIT
gsinit::
	ld	bc, #l__INITIALIZER
	ld	a, b
	or	a, c
	jr	Z, gsinit_next
	ld	de, #s__INITIALIZED
	ld	hl, #s__INITIALIZER
	ldir
gsinit_next:
	.area   _GSFINAL
	ret