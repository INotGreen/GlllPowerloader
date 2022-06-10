## 说明：

迫于开源项目引来不必要的麻烦，我不得不将停止该项目的维护，并且以后不会参与开源Bypass的开发。

如果你有需求或者学习免杀的意向请联系我，可私人定制免杀(可过国内外主流杀软)，获取免杀资料可加知识星球。

## 0x01.更新

该工具集成了C/C++ 、C# 、nim 、PowerShell的免杀加载器

[+]2022-4-27：

加载模块:nim、powershell，可免杀卡巴斯基，windows defender ，360，火绒

[+]2022-5-18:

1.添加C/C++加载模块，可免杀windows defender 、360、火绒

2.添加了套接字模块，Nim socket实现跨平台，并且免杀主流杀软

[+]2022-6-3改动:

1.添加了文件格式转换模块，并且ps1转vbs、ps1转exe皆可绕过windows defender

2.删除了nim加载模块，添加了Csharp加载模块（降低了免杀的效果）

3.解决了csharp的版本兼容性（可以同时在win7、服务器win2008以上的windows版本同时运行）

[+]2022-6-10:
1.添加链接:C++加载器参考:https://github.com/icyguider/Shhhloader
2.停止该开源项目的发布和维护


## 0x02.环境配置

运行环境：windows10

1.C/C++编译环境: 安装mingw，GCC/G++编译器，并且配置环境变量

输入G++,GCC 出现以下情况说明环境安装成功

![image](https://user-images.githubusercontent.com/89376703/172179649-32d3ba7d-c48b-4098-b58f-6154d2c312bf.png)

2.C#编译环境: Windows自带C#编译器（csc.exe）

3.Nim编译环境: 如果要使用Nim Lang的套接字还是需要安装Nim环境和Winim的第三方库，最后配置环境变量

输入nim -version查看是否安装成功

![image](https://user-images.githubusercontent.com/89376703/172186202-d8d2127c-d834-4bc3-8644-e8a87df14064.png)


## 0x03.工具介绍

启动程序

```
python.exe .\Gllloader.py
```

![image](https://user-images.githubusercontent.com/89376703/172190784-8a87774b-ce88-484d-93d5-936e922b16dc.png)


### 该工具shellcode加载模块目前有7种加载方式，C/C++五种。

### PowerShell和C#各一种，并且采用分离的方式进行加载。

![image](https://user-images.githubusercontent.com/89376703/172180872-f2c7204b-e5ed-47c7-a0f3-9ff5e3ed6e8d.png)

1.C/C++加载器特点:随机化系统调用函数名称和XOR动态密钥使得每次生成的二进制文件硬编码数据不同，让杀软难以捕获特征。

2.Powershell和C#shellcode加载特点:AMSI内存初始化失败，绕过AMSI的runtime和scantime后记载二进制文件以防止杀软对恶意进程的系统监控

3.文件转换格式的使用方式也是大同小异，都是将powershellbase64加密解密然后分离，最后输入网址即可自动化生成VBS和exe文件

4.套接字模块，输入IP和端口即可自动化生成文件，这里生成Nim的套接字是跨平台的可以在任意的windows、Linux、unix上运行

## 0x04.效果图：

### C/C++
注意这里请使用stageless的shellcode(beacon.bin)
![image-20220603115546523](https://user-images.githubusercontent.com/89376703/171785352-ef3ef6eb-3d7f-4e4a-89e5-85c34b757730.png)

![image-20220603115649027](https://user-images.githubusercontent.com/89376703/171785644-f5698bbe-7338-4286-adff-15d81f145a09.png)


![image-20220603115953626](https://user-images.githubusercontent.com/89376703/171785670-32590cff-2366-4ed2-97d6-00c75848ca36.png)


### Csharp

用CobaltStrike/MSF生成一个StagerLess的PowerShell脚本，用Base64加密解密一下脚本，或者用Obfuscation去混淆一下，将powershell脚本作分离处理

![image-20220603120218705](https://user-images.githubusercontent.com/89376703/171785685-08b2e011-18c0-449b-b7c1-d2823e002aa5.png)

将分离过的网址填入即可。（这边需要填一下.NET的版本，问题不大）
![image-20220603120218705](https://user-images.githubusercontent.com/89376703/171785748-ee462a2b-c733-4708-82bd-1dab18905e51.png)



### Powershell的加载器也是一样的操作



## 0x05.注释

新版本的加载器降低了免杀的效果，但是过国内、微软还是轻轻松松的

[!]注意：不要讲样本上传至VT、weibu等公网沙箱，他们会分享样本给厂商。本项目仅用作免杀思路的学习，为了保持它的免杀效果，请不要将他滥用。谢谢！


## 此项目仅用于教育目的，禁止将该技术用于非法途径


## 0x06.付费版免杀框架

拥有更多免杀模块，更多的功能，免杀更多的杀软，支持多语言远控FUD加密
![image-20220603121239074](https://user-images.githubusercontent.com/89376703/171785705-b2f17c5e-aec8-4d16-99a2-b6a46c51cd49.png)

![image-20220603121257597](https://user-images.githubusercontent.com/89376703/171785718-a10306e0-2793-4b75-950e-faef1743a4bb.png)



## 0x07.学习独家免杀技巧
视频教程:https://www.bilibili.com/video/BV1HS4y1a7gu/
我的个人学习频道:Blibli搜索 我不是格林

# +知识星球学习免杀:

![image](https://user-images.githubusercontent.com/89376703/165324647-52f42926-cd0f-4da6-91cb-73bceffd5224.png)

# 参考
Jthuraisamy 的SysWhispers：https ://github.com/jthuraisamy/SysWhispers

OutFlank 用于创建 InlineWhispers（Mingw-w64 兼容 SysWhispers）：https ://github.com/outflanknl/InlineWhispers

FalconForceTeam 支持 SysWhispers2 的系统调用生成工具：https ://github.com/FalconForceTeam/SysWhispers2BOF

Snovvcrash 用于他们的 NimHollow 项目，我将其用作流程空心化的模板：https ://github.com/snovvcrash/NimHollow

Snovvcrash 我将其用作许多包含的注入技术的模板：https ://github.com/snovvcrash/DInjector



