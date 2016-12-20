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

A simple memory mapped VRAM is implemented for the text mode. As 80x30 text mode has 2400 character cells, writing into any address from 0x8000 to 0x895f will display the corresponding code page 437 character on screen. 0x8000 is the top left corner, 0x896f the bottom right corner.

![Alt text](http://i.imgur.com/2tsq7oi.jpg)

Similarly, writing into any address from 0x8960 to 0x92bf sets the color of the corresponding character cell. The lower 6 bits goes into the DAC.

Double buffering is used. There are 2 identical VRAMs, and CPU normally writes into the back VRAM. During VBLANK the back VRAM is copied to front VRAM to be displayed, after which back VRAM is available for writing again. This eliminates screen tearing and reduces overhead as instead of wasting 90% of the time waiting for VBLANK, the CPU only have to wait 1.1% of the time. 

But 1.1% of the time still matters, as if you try to write during VRAM copying it will be ignored. To combat this I implemented a virtual register at 0x92c1, writing a 0 into it disable VRAM copying while writing 0xff enables it. It's recommenced to disable VRAM copying before writing into VRAM, and enable it afterwards, so no changes gets lost. 

## Limitations

Make no mistake, the current design absolutely works and is plenty capable, but there are still one or two thing I wish to improve upon on the next iteration.

It turned out although Mojo V3 broke out most of the Spartan-6 pins, it was still not enough. As a result I had to omit an address line on the VRAM, making it only 16KB/32KB instead of 32KB/64KB. I also had to omit a number of CPU control signals, so the FPGA runs on its internal 50MHz clock instead of CPU clock. Another oversight is FPGA memory space overlaps the RAM space, it won't be a problem for memory write as it writes into both VRAM and RAM, but for reads there would be a bus contention as FPGA and RAM would both try to drive the bus. So try making video registers write-only in the meantime.