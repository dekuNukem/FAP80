PCB and firmware source files for FAP80's backplane. More info coming soon...

This repo is still under construction, more information will be added as I continue to add to the documentations and clean up the codebase. 

The backplane is the backbone of FAP80, as all the modules plug into it. The backplane has 5 slots, each 2cm apart, a STM32F072RBT6 controller, a 2.2 inch color serial LCD for displaying execution status, and 6 buttons for controlling the computer. the STM32 monitors 

board size
The board is 16x10cm, maximum allowable size for Eagle educational, which can be obtained if you have a .edu email. This is the only board in this project that's larger than the max allowable size of eagle freeware.


Bus slot
38x2 double row pin headers, with VCC and CPU signals on one row, and GND on the other. 

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
