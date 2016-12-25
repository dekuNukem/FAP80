FAP80 I/O Board

![Alt text](http://i.imgur.com/Ii25Azt.jpg)

The I/O Board of FAP80, to be plugged in the backplane.

## Overview

This is the I/O board that takes care of Z80 port I/O and interrupts. An EPM570 CPLD replaces 2 dozens of 74 series chips, and a STM32F051C8T6 take on the role of Port and Interrupt controller. Large number of peripherals are available to use for FAP80 on this board. Including PS/2 Keyboard, SD card, I2C EEPROM, RTC, timers, and 2 UARTs (one for ESP8266, one general purpose). 

## Design details

Please see this detailed write-up about the design of this board: [click here](https://dekunukem.wordpress.com/2016/12/25/fap-rebord-the-new-io-card/)