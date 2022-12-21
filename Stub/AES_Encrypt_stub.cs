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
            byte[] Key = Convert.FromBase64String("KEY_RETURN");
            byte[] IV = Convert.FromBase64String("IV_RETURN");

            byte[] shell = new byte[] {SHELLCODE_RETURN};  //将shellcode填方该处
            byte[] encshell = AESEncryptShellCode(shell, Key, IV);
            StringBuilder hexCodes = new StringBuilder(encshell.Length * 2);
            foreach (byte b in encshell)
            {
                hexCodes.AppendFormat("0x{0:x2},",b);
            }
            string finalencoded = hexCodes.ToString();
            finalencoded = finalencoded.Substring(0, finalencoded.Length - 1);

            string newFileName = "AES256Enc.txt";
            FileStream fileStream = File.Create(newFileName);
            
            byte[] bytes = new UTF8Encoding(true).GetBytes(finalencoded);
            fileStream.Write(bytes, 0, bytes.Length);
            fileStream.Close();
        }

      
        public static byte[] AESEncryptShellCode(byte[] baShellcode, byte[] key, byte[] iv)
        {
            using (var aes = Aes.Create())
            {
                aes.KeySize = 256;
                aes.BlockSize = 128;
                aes.Padding = PaddingMode.PKCS7;
                aes.Mode = CipherMode.CBC;

                aes.Key = key;
                aes.IV = iv;

                using (var encryptor = aes.CreateEncryptor(aes.Key, aes.IV))
                {
                    return GetAESEncryptedShellCode(baShellcode, encryptor);
                }
            }
        }
        private static byte[] GetAESEncryptedShellCode(byte[] baShellCode, ICryptoTransform cryptoTransform)
        {
            using (var ms = new MemoryStream())
            using (var cryptoStream = new CryptoStream(ms, cryptoTransform, CryptoStreamMode.Write))
            {
                cryptoStream.Write(baShellCode, 0, baShellCode.Length);
                cryptoStream.FlushFinalBlock();
                return ms.ToArray();
            }
        }
    }
}