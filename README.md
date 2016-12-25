
![Alt text](http://i.imgur.com/f08Pt1o.jpg)

![Alt text](http://i.imgur.com/XjIJ9EY.jpg)



#FAP80, A retro computer without the retro baggage

FAP80 is a Z80-based retro computer with a sprinkling of modern twists to make the experience of designing, programming, and debugging this computer as painless and straightforward as possible.

A lot of retro computer projects today are rooted on nostalgia, they tend to use “period correct” components to get the “feelings” right, and the result often ends up on perfboard or self-etched circuit boards, rudimentary video capacity if at all, few I/O ports, and a symphony of 74 series chips. 

While there is nothing wrong with that, I wasn’t around during the 80s home computer era, so I didn’t have the same attachment to how things was done back then. So instead of trying to recreate the “good old days”, I made the decision to liberally use modern parts to simplify the design process, as well as making this computer highly flexible and easy to program and use with very little overheads.

The project started life hand-assembled, but now properly on PCBs because of noise problems. See [my blog](https://dekunukem.wordpress.com) for detailed write-ups about this project.

## Specification

### Overview

* 8MHz CMOS Z80
* 5-slot active backplane, USB powered
* 32KB ROM, 16KB RAM, 16KB double buffered VRAM
* 64 color 640x480 VGA graphics
* PS/2 keyboard, ESP8266, SD card, I2C EEPROM, RTC, UART, Timers

### Active Backplane

* 3.3V bus allows modern peripherals
* All Z80 signals on bus
* managed by STM32 microcontroller
* Z80 clock from PWM channel
* speed variable from single step to 8MHz
* breakpoints and traces
* read/write into EEPROM/RAM directly
* interrupt chaining supported
* bus address and data display on LCD
* pushbutton for Z80 reset, single step, run/stop, etc.

### CPU Board
* All signals buffered and shifted to 3.3V

### Memory Board
* 32KB ROM
* 16KB RAM
* buffered output
* ROM write-protected during normal execution

### Video Card
* FPGA based
* 64 colors
* 640x480 VGA output
* 80x30 codepage 437 text mode
* 16KB double-buffered VRAM, or 32KB unbuffered
* bitmap or sprite mode can be implemented easily

### I/O Board
* CPLD based
* STM32 IO/interrupt controller
* all interrupt modes supported
* 16 ports
* 2 UARTs
* I2C EEPROM
* SD card
* RTC
* PS/2 Keyboard

## Design philosophy

As I said above I made the decision to use modern parts for simplicity and flexibility in the design. Take the active backplane for example, the entire bus is connected to a STM32 microcontroller, which drives Z80 clock via one of its PWM channels. At the same time the uC monitors the contents on the bus, so setting breakpoints or obtaining execution traces can be easily done. The uC can also reset the Z80, or even take over the bus and read/write directly into EEPROM and RAM.

Notice how a cheap modern part eliminates the need for separate reset circuitry, clock circuitry, debugger, and EEPROM programmer. And because the uC is programmable, it can be customized even after hardware design is done.

Similarly, a FPGA replaces the VDC, a CPLD replaces 2 dozens of 74 chips, and another STM32 is used as I/O and interrupt controller. This gives an enormous amount of flexibility to suit individual needs. Text mode graphics too limited? Write your own sprite/bitmap mode. Want more I/O ports or a different interrupt mode? Just modify the CPLD code. The ability to be able to continue expand and evolve the capability of the computer without having to change the hardware becomes an exciting aspect as a result.

I also intended this project as a study in embedded development as it involves a little bit of everything: microcontrollers, FPGAs, CPLDs, digital circuits, PCB design and fabrication, surface mount soldering, setting up cross assembling/compiling environment, assembly programming, and a lot others that I couldn't think of at the moment. Yes it's harder to put together than a through-hole kit, but it was all part of the challenge.


## Current Progress 

### Finished

* Current hardware design
* Firmware for all uC/FPGA/CPLD
* Python script for program upload
* Cross assembler setup
* SDCC setup
* Simple print functionalities in C and assembly

### In Progress

* Finish up project documentation
* Write an IRC client for FAP80

### Planned

* A new memory board with 32MB flash memory for both ROM and RAM and a CPLD controller for configurable memory decoding and paging
* A new VGA video card with on-board FPGA instead of using Mojo V3 with larger VRAM and more interrupt options

## Getting Started

Coming soon...

## Acknowledgments

* This project is heavily inspired by [Quinn Dunki’s Veronica](http://quinndunki.com/blondihacks/?p=680), a 6502-based retro computer.

* FAP stands for FPGA Assisted Processor, inspired by Steve Ciarcia's 1981 book *Build Your Own Z80 Computer*, in which he called his computer ZAP, short for Z80 Application Processor.


