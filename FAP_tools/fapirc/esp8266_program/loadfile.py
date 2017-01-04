import os
import sys

if(len(sys.argv) != 2):
    print(__file__ + ' file.lua')
    exit()

lua_file = sys.argv[1]
os.system("python2.7 luatool.py --port /dev/tty.SLAB_USBtoUART --src " + lua_file + " --dest "  + lua_file +  " --baud 115200")