This repo is still under construction, more information will be added as I continue to add to the documentations and clean up the codebase. 

## Memory map

![Alt text](http://i.imgur.com/IBxdGvUg.png)

## VRAM details

As 80x30 text mode has 2400 character cells, writing into any address from 0x8000 to 0x895F will display the corresponding code page 437 character on screen. 0x8000 is the top left corner, 0x895F the bottom right corner.

![Alt text](http://i.imgur.com/2tsq7oi.jpg)

Similarly, writing into any address from 0x8960 to 0x92BF sets the color of the corresponding character cell. The lower 6 bits of the attribute data goes into the DAC, resulting in 64 colors:

![Alt text](http://i.imgur.com/y4poiGpg.png)

## Getting started with FAP

A word of warning before we start, the FAP80 project is still ongoing, while all the hardware designs are finished, meaning you only have to have the PCB made once, I'm still experimenting with the firmware of all the boards, and I'll update them from time to time. If you know what you're doing I suggest you do the same, you'll learn more by digging into details.

Anyway, there are quite a number of softwares we need to install in order to get the whole thing working, first up is the STM32 development environment. Being a popular microcontroller platform there are plenty of IDEs and compilers to choose from, both closed and open source in nature. The one I'm using is Keil uVision 5 with ST's excellent STM32Cube configuration software. uVision is not free and usually you either have to live with a 32KB code size limit or pay 5-figure for a license. However ST provides a free license for their STM32F0 and STM32L0 lines, that's why I'm using F0 parts in FAP's design.

So go download the uVision MDK-ARM [here](https://www.keil.com/download/product/)

Install it, then get the free license [here](http://www2.keil.com/stmicroelectronics-stm32/mdk) and activate uVision.

Then download the [STM32CubeMX](http://www.st.com/content/st_com/en/products/embedded-software/mcus-embedded-software/stm32-embedded-software/stm32cube-embedded-software/stm32cubef0.html), it's a neat interactive graphical configuration software for STM32 microcontrollers. You set up the microcontroller and then it generates a skeleton C project with all the configuration done, then you can just start writing your own code.

If you're using windows, which you probably are because uVision is windows only, you'll also need the [STM32 USB serial driver](http://www.st.com/en/development-tools/stsw-stm32102.html) for the virtual serial port that the backplane uses. No driver is need for macOS and Linux.

