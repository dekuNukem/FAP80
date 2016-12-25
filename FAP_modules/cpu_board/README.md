FAP80 CPU Board

![Alt text](http://i.imgur.com/HIG0wyL.jpg)

The CPU board of FAP80, to be plugged in the backplane.

## Overview

This board is rather simple and straightforward. It breaks out all Z80 signals onto the bus. It also buffers all address lines, data lines, and control output signals while converting all 5V signals to 3.3V, so the entire bus runs at 3.3V.

The jumper wires you see on the picture was to fix a small bug in the first revision of the PCB. It has since been fixed in the latest version of board and schematic file.

I recommend using CMOS versions of the Z80 CPU, as it uses less power and runs cooler.

## Blog entry

For details about running the CPU, see [here](https://dekunukem.wordpress.com/2016/02/21/part-1-bus-board-cpu-board-and-freerunning-fap/)

For a brief introduction of the new boards, see [here](https://dekunukem.wordpress.com/2016/12/24/fap-reborn-cpu-board-memory-board-video-card/)