from asyncio import sleep
import base64
import os
import random
import string

class DAZZLINGCOLORS:
    OKPINK = '\033[95m'       # pink
    OKBLUE = '\033[94m'       # blue
    OKGREEN = '\033[92m'      # green
    OKYELLOW = '\033[93m'      # yellow
    OKRED = '\033[91m'         # red
    OKBLACK = '\033[0m'          # black
    BLACKBOLD = '\033[1m'          # black+bold
    UNDERLINE = '\033[4m' 

class Encryptor:
    def generateKey(length):
        letters = string.ascii_letters + string.digits
        key = ''.join(random.choice(letters) for i in range(length))
        return key
        # 生成随机密钥

    def xor(shellcode, key):
        new_shellcode = ""
        key_len = len(key)
        # 对shellcode的每一位进行xor亦或处理
        for i in range(0, len(shellcode)):
            s = ord(shellcode[i])
            p = ord((key[i % key_len]))
            s = s ^ p  # 与p异或，p就是key中的字符之一
            s = chr(s)
            new_shellcode += s
        return new_shellcode

    def add_random_code(shellcode, key):
        new_shellcode = ""
        key_len = len(key)
        # 每个字节后面添加随机一个字节，随机字符来源于key
        for i in range(0, len(shellcode)):
            new_shellcode += shellcode[i]
            new_shellcode += key[i % key_len]
        return new_shellcode
    # 将shellcode打印输出

    def str_to_hex(shellcode):
        raw = ""
        for i in range(0, len(shellcode)):
            s = hex(ord(shellcode[i])).replace("0x", '')
            if len(s) == 1:
                s = "0" + s
            raw = raw + "\\x" + s
        return raw
    # 这是异或和增加随机字符使用的key，为了提高复杂度也可以使用两个key

    def XOREncryptor(self):
        key = Encryptor.generateKey(49)
        print("\n")
        print("Dynamic random key:", key)

        # 首先对shellcode进行异或处理
        XORENC = Encryptor.xor(self, key)
        # 然后在shellcode中增加随机字符
        XORENCADD = Encryptor.add_random_code(XORENC, key)
        a = ",0x"
        b = ""
        # 将shellcode打印出来
        Shell_code = "00" + Encryptor.str_to_hex(XORENCADD).replace('\\x', a)
        Shellcode = Shell_code.replace("00,", b)
        file = open("XOR_ENC.txt", "w")
        file.write(Shellcode)
        file.close()
        os.system("XOR_ENC.txt")
    # def statickeyXOREncryptor(self.key):

    def AES256EncKeyIV(self, AES_Encrypt_stub):
        aeskey = Encryptor.generateKey(32)
        aesenckey = base64.b64encode(aeskey.encode('utf-8')).decode("utf-8")
        print(DAZZLINGCOLORS.OKRED + "\n" +"[!] Base64 encrypted dynamic key:" + aesenckey + "\n")
        IV = Encryptor.generateKey(16)
        EncIV = base64.b64encode(IV.encode('utf-8')).decode("utf-8")
        print(DAZZLINGCOLORS.OKRED + "[!] Base64 encrypted dynamic IV:" + EncIV + "\n")
        AES_Encrypt_stub = AES_Encrypt_stub.replace("KEY_RETURN", aesenckey)

        AES_Encrypt_stub = AES_Encrypt_stub.replace("IV_RETURN", EncIV)
        AES_Encrypt_stub = AES_Encrypt_stub.replace("SHELLCODE_RETURN", self)
        AES_Encryp = open("AES256Encryptor.cs", "w")
        AES_Encryp.write(AES_Encrypt_stub)
        AES_Encryp.close()
        try:
            os.system("cmd/c C:\\Windows\Microsoft.NET\\Framework\\v4.0.30319\csc.exe /nologo /target:winexe AES256Encryptor.cs")
            
            os.system("AES256Encryptor.exe")
        except:
            print("[!] Please enter the shellcode in the correct format")
        os.system("del AES256Encryptor.cs && del AES256Encryptor.exe && AES256Enc.txt")
