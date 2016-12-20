FAP80 I/O Board

![Alt text](http://i.imgur.com/Ii25Azt.jpg)

The I/O Board of FAP80, to be plugged in the backplane.

## Overview

This is the I/O board that takes care of Z80 port I/O and interrupts. An EPM570 CPLD replaces 2 dozens of 74 series chips, and a STM32F051C8T6 take on the role of Port and Interrupt controller.

Large number of peripherals are available to use for FAP80 on this board. Including PS/2 Keyboard, SD card, I2C EEPROM, RTC, timers, and 2 UARTs (one for ESP8266, one general purpose). 

STM32 talks to CPLD via a mini-bus with 8-bit data, 4-bit address, and a handful of control signals.

## Mode 2 Interrupt

The STM32 can trigger all 3 modes of Z80 interrupts, although only mode 2 is implemented right now, since it's the most flexible.

## Port Writes

## Port Reads
