nick = "dekuNukem"
pass = "oauth:qmdwk3rsm4qau59zf2dpxixsf4wxzf"
server = {"irc.chat.twitch.tv", 6667}
channel = "sodapoppin"
recv_buf = ""

is_configured = false

function fuck(fuck_msg, sSeparator, nMax, bRegexp)
    local aRecord = {}
    if string.len(fuck_msg) > 0 then
        local bPlain = not bRegexp
        nMax = nMax or -1

        local nField, nStart = 1, 1
        local nFirst,nLast = string.find(fuck_msg, sSeparator, nStart, bPlain)
        while nFirst and nMax ~= 0 do
            aRecord[nField] = string.sub(fuck_msg, nStart, nFirst-1)
            nField = nField+1
            nStart = nLast+1
            nFirst,nLast = string.find(fuck_msg, sSeparator, nStart, bPlain)
            nMax = nMax-1
        end
        aRecord[nField] = string.sub(fuck_msg, nStart)
    end
    return aRecord
end

function tablelength(T)
  local count = 0
  for k, v in pairs(T) do count = count + 1 end
  return count
end

function parse_msg(msg)
    local username = ""
    local comment = ""
    errors, msg_split = pcall(fuck, msg, '!', 1)
    if tablelength(msg_split) >= 2 then
      username = string.sub(msg_split[1], 2)
      errors, shittttt = pcall(fuck, msg_split[2], ':', 1)
      if tablelength(shittttt) >= 2 then
        comment = shittttt[2]
        print(username .. ": " .. comment)
      end
    end
end

print("wifi status: " .. wifi.sta.status())
print("type a channel name to connect")

function run_irc(irc_channel)
  connect_msg = "PASS " .. pass .. "\r\n" .. "NICK " .. nick .. "\r\n" .. "USER " .. nick .. " " .. server[1] .. " bla:" .. nick .. "\r\n" .."JOIN #" .. irc_channel .. "\r\n\r\n" 
  irc = net.createConnection(net.TCP, 0)

  irc:on("receive", function(sck, c)
      recv_buf = recv_buf .. c
      errors, buf_split = pcall(fuck, recv_buf, '\r\n')
      count = 0
      for k, v in pairs(buf_split) do
        -- print("got raw line: ", v)
        if string.find(v, "PRIVMSG") then
          parse_msg(v)
        elseif string.find(v, "PING") then
          print(">>>>>>>> " .. v)
          irc:send("PONG tmi.twitch.tv\r\n\r\n")
        end
        count = count + 1
      end
      recv_buf = buf_split[count]
  end)

  irc:on("connection", function(sck, c)
      irc:send(connect_msg)
  end)

  irc:on("disconnection", function(sck, c)
      print("Connection closed")
  end)

  irc:connect(server[2], server[1])
  print("running...")

  uart.on("data", "\n",
  function(data)
    data = string.gsub(data, "\r", "")
    data = string.gsub(data, "\n", "")
    irc:send("PRIVMSG #" .. channel .. " :" .. data .. "\r\n")
    print(nick .. ": " .. data)
  end, 0)
end

uart.on("data", "\n",
  function(data)
    if string.len(data) > 2 then
      channel = string.gsub(data, "\r", "")
      channel = string.gsub(channel, "\n", "")
      if channel == "cd" then
        channel = "_chatotdungeon_1481039460679"
      end
      print("channel is " .. channel)
      uart.on("data")
      is_configured = true
      run_irc(channel)
    else
      print("too short")
    end
end, 0)

-- tmr.alarm(0, 5000, tmr.ALARM_AUTO, function() uart.write(0, "Hello, world\n") end)

