FAP80 VGA Video Card

![Alt text](http://i.imgur.com/RHG6iHQ.jpg)
![Alt text](http://i.imgur.com/f2OT7do.jpg)

The VGA Video Card of FAP80, to be plugged in the backplane.

## Overview

This is an FPGA-based video card capable of 640x480 60Hz VGA output.

I used an off-the-shelf FPGA board called Mojo V3, it contains a Spartan-6 FPGA with most of the pins broken out, and an Arduino-compatible ATmega32U4 uploads bitstream via USB, so a FPGA programmer is not needed. I really like this kind of clever and no-nonsense dev boards.

Two IS61LV256 32KB SRAM chips are used for double buffering, so the CPU can write into VRAM at (almost) any time and not worry about waiting for VBLANK.

6-bit R-2R DAC, 64 colors. (2 bit each for red, green, blue)

NMI can be used to trigger VBLANK interrupt if you want.

