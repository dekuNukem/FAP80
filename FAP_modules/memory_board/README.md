FAP80 32KB Memory Board

![Alt text](http://i.imgur.com/4p9VmfO.jpg)

The memory board of FAP80, to be plugged in the backplane.

## Overview

This board has 32KB ROM from 0x0000 to 0x7fff and 32KB RAM from 0x8000 to 0xffff, a simple design.

AT28C256 32KB EEPROM, HM62256 32KB SRAM.

ROM is write-protected during normal execution so if your program misbehaves it won't mess up the stored program.

Data outputs are shifted to 3.3V and buffered. 

Several LEDs indicates the current memory operation.

I'm actually planning to design a more advanced memory board using a 32MB flash memory for both ROM and RAM and a CPLD as configurable memory controller, but this will have to do in the meantime.