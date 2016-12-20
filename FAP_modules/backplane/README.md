![Alt text](http://i.imgur.com/8QYtGAD.jpg)

![Alt text](http://i.imgur.com/BP13ZbK.jpg)


The backbone of FAP80, all the modules plug into it. The backplane has 5 slots, each 2cm apart, a STM32F072RBT6 controller, a 2.2 inch color serial LCD for displaying execution status, and 6 buttons for controlling the computer.

## Board size
The board is 16x10cm, maximum allowable size for Eagle educational, which can be obtained if you have a .edu email. This is the only board in this project that's larger than the max allowable size of eagle freeware.


## Bus slot
Each slot is a 38x2 double row female pin header, pinout below.
I used 2 rows to give more grip to modules plugged in, as well as improving noise immunity.


|     |        | 
|-----|--------| 
| GND | M1     | 
| GND | RD     | 
| GND | WR     | 
| GND | MREQ   | 
| GND | IORQ   | 
| GND | BUACK  | 
| GND | BUSREQ | 
| GND | RESET  | 
| GND | NMI    | 
| GND | INT    | 
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
| GND | 5V     | 

