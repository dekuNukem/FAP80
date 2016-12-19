I'm still building this up, don't look at it yet...

![Alt text](http://i.imgur.com/f08Pt1o.jpg)

![Alt text](http://i.imgur.com/XjIJ9EY.jpg)

#FAP80, A Z80 retro computer for the future

FAP80 is a Z80 retro computer with modern twists to make the experience of designing, programming, and debugging this computer as painless and straightforward as possible.

## Technical Highlights

### Active Backplane

* 3.3V bus allows modern peripherals
* managed by STM32 microcontroller
* Z80 clock from PWM channel
* speed variable from single step to 8MHz
* read/write into EEPROM/RAM directly
* no need for separate EEPROM programmer
* bus address and data display on LCD
* breakpoints and traces
* power and data over USB
* pushbutton for reset, single clock, single step, run, etc.

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
* 16KB double-buffered or 32KB single-buffered VRAM
* bitmap or sprite mode can be implemented in FAGA easily

### I/O Board
* CPLD glue logic
* STM32 IO/interrupt controller
* 2 UARTs, one for ESP8266 one general purpose
* I2C EEPROM
* SD card
* RTC
* PS/2 Keyboard
* all interrupt modes supported
