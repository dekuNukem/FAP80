import os

os.system("clear")

print("\nassembling crt0...\n")
if(os.system("sdasz80 -o crt0_fap.s") != 0):
	exit()

print("\ncompiling hellofap.c...\n")
if os.system("sdcc -mz80 --code-loc 0x200 --data-loc 0xa000 --no-std-crt0 crt0_fap.rel hellofap.c") != 0:
	exit()

print("\nconverting to bin...\n")
os.system("hex2bin hellofap.ihx")

print("\ndone")