uart.setup(0, 115200, 8, uart.PARITY_NONE, uart.STOPBITS_1, 0)
print("connecting to AP...")
wifi.setmode(wifi.STATION)
wifi.sta.config("dekuNukem", "UIUCslow91")
print(wifi.sta.status())

tmr.alarm(0, 5000, tmr.ALARM_SINGLE, function() dofile("irc.lua") end)