I'm still building this up, don't look at it yet...

actually do what you want, not like I can stop you 

![Alt text](http://i.imgur.com/f08Pt1o.jpg)

![Alt text](http://i.imgur.com/XjIJ9EY.jpg)

#FAP80, A Z80 retro computer for the future

FAP80 is a Z80 retro computer with modern twists to make the experience of designing, programming, and debugging this computer as painless and straightforward as possible.

## Technical Highlights

### Active Backplane

FAP80 has an active backplane managed by a STM32F072 microcontroller. The uC provides Z80's clock signal using one of its PWM channels, so it is configurable from single step all the way up to 8MHz.

In addition to providing clock signal, the uC monitors the content of the bus and displays the current memory address and data value on a 2.2-inch color LCD. You can also set breakpoints or obtain a trace of the program execution.

The uC can also take over the bus and write into the EEPROM and RAM directly, eliminating the need to take off the EEPROM to put in a dedicated programmer. The whole FAP80 is powered by a 

