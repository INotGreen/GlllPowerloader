介绍：

该工具集成了C/C++ 、C# 、nim 、PowerShell的免杀加载器





## 0x01.更新

[+]2022-4-27：

加载模块nim、powershell，免杀卡巴斯基，windows defender ，360，火绒

[+]2022-5-18:

添加C/C++加载模块，可免杀windows defender 、360、火绒

[+]2022-6-3改动：

删除了nim加载模块，添加了Csharp加载模块（降低了免杀的效果）

解决了csharp的版本兼容性（可以同时在win7、服务器win2008以上的windows版本同时运行）



## 0x02.环境配置

运行环境：windows10

C/C++编译环境，安装mingw，GCC/G++编译器,windows10自带C#编译器csc.exe

如果要使用Nim Lang的套接字还是需要安装Nim环境和Winim的第三方库



## 0x03.效果图：

### C/C++

![image-20220603115546523](https://user-images.githubusercontent.com/89376703/171785352-ef3ef6eb-3d7f-4e4a-89e5-85c34b757730.png)

![image-20220603115649027](https://user-images.githubusercontent.com/89376703/171785644-f5698bbe-7338-4286-adff-15d81f145a09.png)


![image-20220603115953626](https://user-images.githubusercontent.com/89376703/171785670-32590cff-2366-4ed2-97d6-00c75848ca36.png)


### Csharp

用CobaltStrike/MSF生成一个StagerLess的PowerShell脚本，用Base64加密解密一下脚本，或者用Obfuscation去混淆一下，将powershell脚本作分离处理

![image-20220603120218705](https://user-images.githubusercontent.com/89376703/171785685-08b2e011-18c0-449b-b7c1-d2823e002aa5.png)

将分离过的网址填入即可。（这边需要填一下.NET的版本，问题不大）
![image-20220603120218705](https://user-images.githubusercontent.com/89376703/171785748-ee462a2b-c733-4708-82bd-1dab18905e51.png)





### Powershell的加载器也是一样的操作



## 0x04.注释

新版本的加载器降低了免杀的效果，但是过国内、微软还是轻轻松松的

[!]注意：不要将免杀样本上传至VT、微步等公网沙箱，这些都是样本收集中心他们会无情地向安全厂商分享样本以此牟利，如果样本失效过快，我将会停止该项目的更新


## 此项目仅用于教育目的，禁止将该技术用于非法途径


## 0x05.付费版免杀框架

拥有更多免杀模块，更多的功能，免杀更多的杀软，支持多语言远控FUD加密
![image-20220603121239074](https://user-images.githubusercontent.com/89376703/171785705-b2f17c5e-aec8-4d16-99a2-b6a46c51cd49.png)

![image-20220603121257597](https://user-images.githubusercontent.com/89376703/171785718-a10306e0-2793-4b75-950e-faef1743a4bb.png)



## 0x06.学习独家免杀技巧
视频教程:https://www.bilibili.com/video/BV1HS4y1a7gu/
我的个人学习频道:Blibli搜索 我不是格林

# +知识星球学习免杀:

![image](https://user-images.githubusercontent.com/89376703/165324647-52f42926-cd0f-4da6-91cb-73bceffd5224.png)


