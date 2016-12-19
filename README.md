
![Alt text](http://i.imgur.com/f08Pt1o.jpg)

![Alt text](http://i.imgur.com/XjIJ9EY.jpg)

I'm still building this up, don't look at it yet...


#FAP80, A Z80 retro computer for the future

FAP80 is a Z80 retro computer with a sprinkling of modern twists to make the experience of designing, programming, and debugging this computer as painless and straightforward as possible.

A lot of retro computer projects are rooted on nostalgia, they tend to use “period correct” components to get the “feelings” right, and the result often ends up on breadboard or self-made circuit boards, with rudimentary video capacity or no video at all, few I/O ports, and a symphony of through hole 74 series chips. 

Of course there is nothing wrong with that, but since I wasn’t around during the 80s home computer era, I didn’t have the same attachment to how things was done back then. So instead of trying to recreate the “good old days”, I made the decision to liberally use modern parts to simplify the design process, as well as making this computer highly flexible and easy to program and use.

Take the active backplane as an example of this design philosophy, the bus is connected to a STM32 microcontroller, and it provides Z80 clock via one of the PWM channels. At the same time the uC monitors the contents on the bus, so setting breakpoints or obtaining execution traces is easily done. The uC can also reset the Z80, or even take over the bus and read/write directly into EEPROM and RAM.

Notice how a simple modern part eliminates the need for separate reset circuitry, clock circuitry, debugger, and EEPROM programmer. And because the uC is programmable, it can be customized to suit individual needs. Clock speed can be set anywhere from DC to 8MHz, new features like trace dump can be added on a later date. This is the kind of flexibility that I think make this project stands out from the rest.


## Technical Highlights

### Active Backplane

* 3.3V bus allows modern peripherals
* managed by STM32 microcontroller
* power and data over USB
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
* ROM write protected during normal execution

### Video Card
* FPGA based
* 64 colors
* 640x480 VGA output
* 80x30 codepage 437 text mode
* 16KB double-buffered VRAM, no need to wait for VBLANK
* can also be used as 32KB single-buffered VRAM
* bitmap or sprite mode can be implemented in FAGA easily

### I/O Board
* CPLD glue logic
* STM32 IO/interrupt controller
* all interrupt modes supported
* 256 write ports, 16 read ports
* 2 UARTs, one for ESP8266 one general purpose
* I2C EEPROM
* SD card
* RTC
* PS/2 Keyboard

## Current Progress