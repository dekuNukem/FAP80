import os
import sys

os.system("clear")

if len(sys.argv) != 2:
	print(__file__ + " z80_asm_file")
	exit()

filename = sys.argv[1]


print("assembling " + filename + "...")
if(os.system("zmac " + filename) != 0):
	exit()

print("generiting hex file...")
if(os.system("cp ./zout/*.hex ./") != 0):
	exit()

print("generiting bin file...")
if(os.system("hex2bin *.hex") != 0):
	exit()

os.system("rm ./*.hex")