# FAP80 active backplane

![Alt text](http://i.imgur.com/pyDTVvv.png)

![Alt text](http://i.imgur.com/oTx3js5.jpg)

![Alt text](http://i.imgur.com/BP13ZbK.jpg)


The backbone of FAP80, all the modules plug into it. The backplane has 5 slots, each 2cm apart, a STM32F072RBT6, a 2.2 inch serial LCD for displaying execution status, and 6 buttons for controlling the computer.

The entire bus is connected to the STM32, which drives the Z80 clock through one of its PWM channels, the uC also monitors the bus content and display it on a LCD. It can also kick the Z80 off the bus and read/write ROM/RAM directly. The backplane communicates with a PC via USB, which also powers the FAP80.

## Usage

When powered on, the backplane resets the Z80 then stops. Press RUN/STOP button to start FAP80 execution at full speed, press CLK STEP for single clock step, press INS STEP for single instruction step(which takes variable numbers of clock cycles depending on the instruction), press Z80 RESET to reset the Z80, and MCU RESET to reset the backplane itself. TRACE button currently doesn't do anything, I'll implement trace function when I need it.

The backplane will appear as a USB serial device when plugged into a computer. send `epm` to enter program mode. Once entered, you can send `r address` to read a memory address, `w address value` to write to a memory address, and `z` to erase entire ROM to 0xff. Send `qpm` to quit program mode. Note all numerical arguments are in decimal, and all commands ends in `\r\n`.

## Bus connector

Each connector is a 38x2 double row female pin header, pinout below.
I used 2 rows to give more grip to modules that has been plugged in, as well as improving noise immunity.  All Z80 signals are available on the bus.

Interrupt chaining is supported. INTI is the interrupt input, while INTO is interrupt output. The board closest to the Z80 CPU board has the highest interrupt priority.

|     |        | 
|-----|--------| 
| GND | M1     | 
| GND | RD     | 
| GND | WR     | 
| GND | MREQ   | 
| GND | IORQ   | 
| HALT | BUACK  | 
| WAIT | BUSREQ | 
| REFRESH | RESET  | 
| GND | NMI    | 
| INTI | INTO    | 
| GND | D0     | 
| GND | D1     | 
| GND | D2     | 
| GND | D3     | 
| GND | D4     | 
| GND | D5     | 
| GND | D6     | 
| GND | D7     | 
| GND | A0     | 
| GND | A1     | 
| GND | A2     | 
| GND | A3     | 
| GND | A4     | 
| GND | A5     | 
| GND | A6     | 
| GND | A7     | 
| 3V3 | 3V3    | 
| CLK | CLK    | 
| 3V3 | 3V3    | 
| GND | A8     | 
| GND | A9     | 
| GND | A10    | 
| GND | A11    | 
| GND | A12    | 
| GND | A13    | 
| GND | A14    | 
| GND | A15    | 
| 5V  | 5V     | 

## LCD

I used a LCD from [Nextion](https://www.itead.cc/wiki/Nextion_HMI_Solution), they make a whole range of LCDs in different sizes, some with resistive touch screen. The neat thing is that they are controlled by standard serial, so it's much easier to use than I2C or SPI LCDs. And apparently it has a companion software on PC where you can design an entire UI and upload it into the LCD. For this project I didn't bother with any of that since it just displays some text strings. I used their smallest and cheapest one. The serial commands for it can be found [here](https://www.itead.cc/wiki/Nextion_Instruction_Set), the only two I used is CLS (clear screen) and XSTR(print string).

## Blog entries

For details about the old backplane, see [here](https://dekunukem.wordpress.com/2016/02/21/part-1-bus-board-cpu-board-and-freerunning-fap/)

For a brief introduction of the new backplane, see [here](https://dekunukem.wordpress.com/2016/12/22/fap-reborn-backplane/)
