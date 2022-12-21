
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