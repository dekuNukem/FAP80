FAP80 VGA Video Card

![Alt text](http://i.imgur.com/RHG6iHQ.jpg)
![Alt text](http://i.imgur.com/f2OT7do.jpg)

The VGA Video Card of FAP80, to be plugged in the backplane.

## Overview

This is an FPGA-based video card capable of 640x480 60Hz VGA output.

I used an off-the-shelf FPGA board called Mojo V3, it contains a Spartan-6 FPGA with most of the pins broken out, and uses Arduino-compatible ATmega32U4 to configure the FPGA via USB, so a programmer is not needed. I really like this kind of clever and no-nonsense dev boards.

Two IS61LV256 SRAM chips are used for double buffering, so the CPU can write into the 16KB VRAM at (almost) any time and not worry about waiting for VBLANK. If you don't want to use double buffering the VRAM doubles to 32KB.

Currently a 80x30 codepage 437 text mode is implemented. It won't be hard to implement sprite or bitmap mode if I (or someone else) put in the work.


6-bit R-2R DAC, 64 colors. (2 bit each for red, green, blue)

NMI can be used to trigger VBLANK interrupt if you want.

## Memory mapped VRAM

## Limitations

Make no mistake the current design absolutely works and is plenty capable, but there are still one or two thing I wish to improve upon on the next iteration.

It turned out although Mojo V3 broke out most of the Spartan-6 pins, it was still not enough. As a result I had to omit an address line on the VRAM, making it only 16KB/32KB instead of 32KB/64KB. I also had to omit a number of CPU control signals, so the FPGA runs on its internal 50MHz clock instead of CPU clock. Another oversight is FPGA memory space overlaps the RAM space, it won't be a problem for memory write as it writes both into VRAM and RAM, but for reads there would be a bus contention as FPGA and RAM would both try to drive the bus. So don't do that in the meantime.