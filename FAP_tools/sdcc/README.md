# Programming FAP80 in C

This is a FAP80 program in C. It displays a long test message, then listens to keyboard and prints whatever you type on the screen.

I'm using SDCC as the compiler, download it [here](https://sourceforge.net/projects/sdcc/files/) and follow the install instructions, it should copy a whole bunch of stuff into PATH or bin.

Using a C compiler is much more complicated than plain assembly, and there are one or two things to keep in mind:

The `crt0_fap.s` is the bootstrap file that is executed before entering main. It needs to be customized to suit different computers, although I already did it for FAP. It sets up interrupt vector, stack pointer, initializes global variables, turns on interrupt, then go into main(), you can also add your own stuff should you want.

compile.py runs a few bash commands to assemble, link, compile and generate a binary file. Keep an eye on --code-loc 0x200 --data-loc 0xc000 argument, --code-loc is where main() is in the memory, while --data-loc is where the start of RAM is. Normally you don't have to change those unless you try something funky.

Because I'm just starting, all the program is in a single file `hellofap.c`. To compile it run compile.py, you can also take a look at the resulting asm file in hellofap.asm.

Finally use load.py to upload the program into the FAP80. And press RUN/STOP to start executing at full speed.