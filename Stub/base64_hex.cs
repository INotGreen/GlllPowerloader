using System;
using System.IO;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
using System.Threading;

namespace Encrypt
{
    class Program
    {
        static void Main(string[] args)
        {

            byte[] shell = Convert.FromBase64String("return_base64");  //将shellcode填方该处            
            StringBuilder hexCodes = new StringBuilder(shell.Length * 2);
            foreach (byte b in shell)
            {
                hexCodes.AppendFormat("0x{0:x2},",b);
            }
            string finalencoded = hexCodes.ToString();
            finalencoded = finalencoded.Substring(0, finalencoded.Length - 1);
            string newFileName = "shellcode(hex).txt";
            FileStream fileStream = File.Create(newFileName);
            byte[] bytes = new UTF8Encoding(true).GetBytes(finalencoded);
            fileStream.Write(bytes, 0, bytes.Length);
            fileStream.Close();
        }
    }
}