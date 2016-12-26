# Getting started with FAP

A word of warning before we start, it goes without saying this project in its current form is not for the faint of the heart. You should at least have some experience with embedded development before tackling this. While FAP80's hardware design is finished, meaning you only have to have the PCB made once, I'm still experimenting with the firmware of all the boards, and I'll update them from time to time. If you know what you're doing I suggest you do the same, after all you can change a lot of stuff to suit your own needs.

## Programmers

There are two programmers you need to buy, namely ST-Link V2 for STM32 and USB Blaster for Altera CPLD. Luckily they are dirt cheap thanks to the Chinese clones, just go to ebay and search "st link v2" and "usb blaster" and buy anything that looks like one of those below.

ST-Link V2:

![Alt text](http://i.imgur.com/4PHxkto.jpg)

Altera USB blaster:

![Alt text](http://i.imgur.com/q1qbn0s.jpg)

Shouldn't be more than a few dollars each, and they work fine for me. Although you luck might vary, at least they are cheap right?

## STM32 softwares

Anyway, there are quite a number of softwares we need to install in order to get the whole thing working, first up is the STM32 development environment. Being a popular microcontroller platform there are plenty of IDEs and compilers to choose from, both closed and open source in nature. The one I'm using is Keil uVision 5 with ST's excellent STM32Cube configuration software. uVision is not free and usually you either have to live with a 32KB code size limit or pay 5-figure for a license. However ST provides a free license for their STM32F0 and STM32L0 lines, that's why I'm using F0 parts in FAP's design.

So go download the uVision MDK-ARM [here](https://www.keil.com/download/product/)

Install and activate it with the free license [here](http://www2.keil.com/stmicroelectronics-stm32/mdk).

Then get the [STM32CubeMX](http://www.st.com/content/st_com/en/products/embedded-software/mcus-embedded-software/stm32-embedded-software/stm32cube-embedded-software/stm32cubef0.html), it's a neat official STM32 configuration software. You set up the microcontroller in an interactive and graphical UI, and then it generates a C project with all the configuration you picked, then you can just start writing your own code.

[ST-LINK utility](http://www.st.com/en/embedded-software/stsw-link004.html) is a pretty useful software too, it can dump firmware, program, erase, configure and read off information about any STM32 chip. Most importantly though, it comes with the driver for the ebay special ST-Link V2 you just bought.

If you're using windows, which you probably are because uVision is windows only, you'll also need the [STM32 USB serial driver](http://www.st.com/en/development-tools/stsw-stm32102.html) for the virtual serial port that the backplane uses. No driver is need for macOS and Linux.

You'll probably need a serial port monitor too, I use [coolterm](http://freeware.the-meiers.org) which is free and available on all major OSes.

## FPGA softwares

[ISE WebPACK Design Software](https://www.xilinx.com/products/design-tools/ise-design-suite/ise-webpack.html) is needed to synthesis the video card, in order to upload it though, you need [Mojo Loader](https://embeddedmicro.com/tutorials/mojo-software-and-updates/installing-mojo-loader)

However, ISE is kind of old and isn't officially supported on windows 10. Although Xilinx themselves posted a workaround to make it work, [so do it if you're on windows 10](https://www.xilinx.com/support/answers/62380.html).


## CPLD softwares

[Quartus Prime Lite Edition](http://dl.altera.com/?edition=lite) is needed. 

make sure to select "direct download", and only download the Quartus Prime and MAX II support files.

![Alt text](http://i.imgur.com/7p7FpTv.png)

## Ordering PCB

places like [OSH park](https://oshpark.com) and [DirtyPCB](http://dirtypcbs.com) will happily turn the EAGLE file into PCBs, however they are outrageously expensive. If you go this route the total cost should be around $100. However if you're willing to wait a little and have them made in China it will end up much cheaper.

## Buying parts and assembling

Well this is the one you'll be on your own. I suggest buying parts from a reputable source like [mouser](http://www.mouser.com) or [digikey](http://www.mouser.com), two particular part to pay attention to is AT24C08 EEPROM on the I/O board, and AT28C256 EEPROM on the memory board. I have encountered a number of fakes of those two, fake AT24C08 simply doesn't work, and the fake AT28C256 is actually a AT28C64.

As for soldering, the whole thing should be easily hand solderable with a proper temperature controlled iron and some prior experience. You can also use a reflow oven, which is much simpler.
