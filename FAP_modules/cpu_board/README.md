FAP80 CPU Board

![Alt text](http://i.imgur.com/HIG0wyL.jpg)

The CPU board of FAP80, to be plugged in the backplane.

## Overview

This board is rather simple and straightforward. It breaks out required Z80 signals to the bus. It also buffers all address lines, data lines, and control output signals while converting all 5V signals to 3.3V, so the entire bus runs at 3.3V.

The jumper wires you see on the picture was to fix a small bug in the first revision of the PCB. It has since been fixed in the latest version of board and schematic file.

I recommend using CMOS versions of the Z80 CPU, as it uses less power and runs cooler.