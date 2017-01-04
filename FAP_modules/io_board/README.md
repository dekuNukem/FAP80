FAP80 I/O Board

![Alt text](http://i.imgur.com/yJo01Dy.png)

![Alt text](http://i.imgur.com/3U35owW.jpg)

This is the I/O board that takes care of Z80 port I/O and interrupts. An EPM570 CPLD replaces 2 dozens of 74 series chips, and a STM32F051C8T6 take on the role of Port and Interrupt controller.

## Overview

* EPM570 CPLD glue logic
* STM32 IO/interrupt controller
* all interrupt modes supported
* 16 ports
* RTC
* UARTs
* Timers
* SD card
* I2C EEPROM
* PS/2 Keyboard
* ESP8266 Header

## Design details

Please see this detailed write-up about the design of this board: [click here](https://dekunukem.wordpress.com/2016/12/25/fap-rebord-the-new-io-card/)