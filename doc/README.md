This repo is still under construction, more information will be added as I continue to add to the documentations and clean up the codebase. 

## Memory map

![Alt text](http://i.imgur.com/IBxdGvUg.png)

## VRAM details

As 80x30 text mode has 2400 character cells, writing into any address from 0x8000 to 0x895F will display the corresponding code page 437 character on screen. 0x8000 is the top left corner, 0x895F the bottom right corner.

![Alt text](http://i.imgur.com/2tsq7oi.jpg)

Similarly, writing into any address from 0x8960 to 0x92BF sets the color of the corresponding character cell. The lower 6 bits of the attribute data goes into the DAC:

![Alt text](http://i.imgur.com/OiliBPQ.png)

