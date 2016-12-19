
![Alt text](http://i.imgur.com/f08Pt1o.jpg)

![Alt text](http://i.imgur.com/XjIJ9EY.jpg)

I'm still building this up, don't look at it yet...


#FAP80, A Z80 retro computer for the future

FAP80 is a Z80-based retro computer with a sprinkling of modern twists to make the experience of designing, programming, and debugging this computer as painless and straightforward as possible.

A lot of retro computer projects today are rooted on nostalgia, they tend to use “period correct” components to get the “feelings” right, and the result often ends up on breadboard or self-made circuit boards, rudimentary video capacity or no video at all, few I/O ports, and a symphony of assorted through hole 74 series chips. 

Of course there is nothing wrong with that, but since I wasn’t around during the 80s home computer era, I didn’t have the same attachment to how things was done back then. So instead of trying to recreate the “good old days”, I made the decision to liberally use modern parts to simplify the design process, as well as making this computer highly flexible and easy to program and use with very little overheads.

## Specification

### Overview

* 5-slot active backplane, USB powered
* 8MHz CMOS Z80
* 32KB ROM 32KB RAM
* 64 color VGA graphics
* PS/2 keyboard, ESP8266, SD card, I2C EEPROM, RTC, UARTs

### Active Backplane

* 3.3V bus allows modern peripherals
* managed by STM32 microcontroller
* Z80 clock from PWM channel
* speed variable from single step to 8MHz
* read/write into EEPROM/RAM directly
* no need for separate EEPROM programmer
* bus address and data display on LCD
* breakpoints and traces
* pushbutton for Z80 reset, single step, run/stop, etc.

### CPU Board
* All signals buffered and shifted to 3.3V

### Memory Board
* 32KB ROM
* 32KB RAM
* buffered output
* ROM write-protected during normal execution

### Video Card
* FPGA based
* 64 colors
* 640x480 VGA output
* 80x30 codepage 437 text mode
* 16KB double-buffered VRAM, or 32KB single-buffered
* bitmap or sprite mode can be implemented easily

### I/O Board
* CPLD based
* STM32 IO/interrupt controller
* all interrupt modes supported
* 256 write ports, 16 read ports
* 2 UARTs
* I2C EEPROM
* SD card
* RTC
* PS/2 Keyboard

## Design philosophy

As I said above I made the decision to use modern parts for simplicity and flexibility in the design. Take the active backplane for example, the entire bus is connected to a STM32 microcontroller, and it provides clock to Z80 via one of the PWM channels. At the same time the uC monitors the contents on the bus, so setting breakpoints or obtaining execution traces is easily done. The uC can also reset the Z80, or even take over the bus and read/write directly into EEPROM and RAM.

Notice how a cheap modern part eliminates the need for separate reset circuitry, clock circuitry, debugger, and EEPROM programmer. And because the uC is programmable, it can be customized even after hardware design is done.

Similarly, a FPGA replaces the VDC, a CPLD replaces the sea of 74 series chips, and another STM32 is used as I/O and interrupt controller. This gives an enormous amount of flexibility to suit individual needs. Text mode graphics too limited? Write your own sprite/bitmap mode. Want more I/O ports or a different interrupt mode? Just modify the CPLD code. The ability to be able to continue expand and evolve the capability of the computer without having to change the hardware becomes an exciting aspect as a result.

I also intended this project as a study in embedded development as it involves a little bit of everything: microcontrollers, FPGAs, CPLDs, digital circuits, PCB design and fabrication, surface mount soldering, setting up cross assembling/compiling environment, assembly programming, and a lot others that I couldn't think of at the moment. Yes it's harder to put together than a through-hole kit, but it was all part of the challenge.


## Current Progress 

### Finished
* Current hardware design.
* Firmware for all uC/FPGA/CPLD
* Python script for program upload
* Cross assembler setup
* SDCC setup
* Basic print functionalities in C and assembly.

### In Progress
* Write an IRC client for FAP80
* Add more stuff to this repo

### Planned
* A new memory board with CPLD controller and 32MB flash memory for both ROM and RAM



