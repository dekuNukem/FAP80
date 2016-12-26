import sys
import time
import serial

if len(sys.argv) != 3:
	print("usage: load.py serial_port bin_file")
	exit()

ser = serial.Serial(sys.argv[1]) 
print("connected")

def write_eep(addr, data):
	ser.write(('w ' + str(addr) + " " + str(data) + '\r\n').encode())
	return int(ser.readline().decode().replace('\r', '').replace('\n', '').split("d=")[-1])

def read_eep(addr):
	ser.write(('r ' + str(addr) + '\r\n').encode())
	return int(ser.readline().decode().replace('\r', '').replace('\n', '').split("d=")[-1])

def zero_eeprom():
	print("zeroing EEPROM...")
	ser.write(('z\r\n').encode())
	print(ser.readline().decode().replace('\r\n', ''))
	print(ser.readline().decode().replace('\r\n', ''))

def enter_program_mode():
	print("entering program mode...")
	ser.write(('epm\r\n').encode())
	print(ser.readline().decode().replace('\r\n', ''))

def exit_program_mode():
	print("exiting program mode...")
	ser.write(('qpm\r\n').encode())
	print(ser.readline().decode().replace('\r\n', ''))

enter_program_mode()
zero_eeprom()

curr_addr = 0
with open(sys.argv[2], "rb") as f:
    while 1:
        byte = f.read(1)
        if byte == b"":
        	break
        if byte[0] == 0xff:
        	curr_addr += 1;
        	continue
        result = write_eep(curr_addr, byte[0])
        print(str(hex(curr_addr)) + ": " + str(hex(result)))
        curr_addr += 1;

exit_program_mode()