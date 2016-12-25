FAP80 32KB Memory Board

![Alt text](http://i.imgur.com/yQoSXTw.png)

![Alt text](http://i.imgur.com/4p9VmfO.jpg)

The memory board of FAP80, to be plugged in the backplane.

## Overview

This board has 32KB AT28C256 ROM from 0x0000 to 0x7fff, and 16KB HM62256 RAM from 0xC000 to 0xffff, a simple design.

ROM is write-protected during normal execution so if your program misbehaves it won't mess up what's inside ROM.

Data outputs are shifted to 3.3V and buffered. 

Several LEDs indicates the current memory operation.

I'm actually planning to design a more advanced memory board using a 32MB flash memory for both ROM and RAM and a CPLD as configurable memory controller, but this will have to do in the meantime.

## Blog entries

For details about FAP's memory, see [here](https://dekunukem.wordpress.com/2016/02/24/part-2-memories-of-fap/) and [here](https://dekunukem.wordpress.com/2016/03/03/part-3-programming-fap/)

For a brief introduction of the new memory board, see [here](https://dekunukem.wordpress.com/2016/12/24/fap-reborn-cpu-board-memory-board-video-card/)