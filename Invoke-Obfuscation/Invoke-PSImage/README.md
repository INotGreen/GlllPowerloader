# Invoke-PSImage

# Invoke-PSImage



参考链接：https://github.com/peewpw/Invoke-PSImage

https://github.com/s3venup/Mavis

视频教程：https://www.bilibili.com/video/BV1qr4y1x7uK/

## 注释(Notes)：

​		该技术在2016年的时候就被广泛用于Powershell的恶意攻击中，作者在2019年的时候就停止了更新，本次更新是我在原作者的代码基础之上进行修改，用以在红队工作时规避AV/EDR.

​		Invoke PS-Image 是一种使用 LSB 隐写术将恶意 Powershell 脚本注入图像的工具。Invoke PS-Image 提供两种模式：

- 模式 1：不需要封面图像。生成的图像由恶意 PowerShell 脚本的字节创建。使用所有三个颜色通道。在通道（R、G、B）的每个字节中，都会注入一个恶意 PowerShell 字节。
- 模式2：需要封面图片。恶意 PowerShell 脚本的每个字节都被注入到蓝色和绿色通道中。4 MSB 注入蓝色通道，4 LSB 注入绿色通道。

​		在 PNG /JPG文件的像素中编码 PowerShell 脚本并生成要执行的 oneliner Invoke-PSImage 采用 PowerShell 脚本并将脚本的字节编码为 PNG/JPG 图像的像素。它生成一个单行器，用于从网络文件或文件执行。 它可以仅使用有效负载数据创建新图像，也可以将有效负载嵌入现有图像的最低有效字节中，使其看起来像实际图片。图像保存为 PNG/JPG，并且可以无损压缩而不会影响执行有效负载的能力，因为数据存储在颜色本身中。在创建新图像时，普通的 PowerShell 脚本实际上会被显着压缩，通常会生成一个文件大小约为原始脚本 50% 的 png。



## 特点：

1.扫描进程初始化失败，规避内存扫描，脱离系统监控

2.Invoke PS-Image可以一定程度上隐藏C2的流量特征, 因此可以规避一些AV/EDR/流量检测设备。

## 参数(Arguments)

**-Script** [filepath]

要嵌入到图像中的脚本的路径。(The path to the script to embed in the Image.)

**-Out** [filepath]

将生成的图像保存到的文件（图像将是 PNG）(The file to save the resulting image to (image will be a PNG))

**-Image** [filepath]

嵌入脚本的图像。（可选）The image to embed the script in. (optional)

**-Web**

使用 Net.WebClient 输出用于从 Web 读取图像的命令。
您将需要托管图像并将 URL 插入命令中。(Output a command for reading the image from the web using Net.WebClient.
You will need to host the image and insert the URL into the command.)

**-PictureBox**

使用 System.Windows.Forms.PictureBox 输出用于从 Web 读取图像的命令。
您将需要托管图像并将 URL 插入命令中。(Output a command for reading the image from the web using System.Windows.Forms.PictureBox.
You will need to host the image and insert the URL into the command.)

## 例子(Example)

准备一张1920x1200的JPG/PNG图片

用CobaltStrike/MSF生成一个payload.ps1

```
PS>Import-Module .\Invoke-PSImage.ps1
PS>Invoke-PSImage -Script .\payload.ps1 -Out .\456.png -Image .\demo.jpg -Web
```
![image-20220529141338863](https://user-images.githubusercontent.com/89376703/170855011-87816880-e3bc-4399-8467-1fe345aa6837.png)

将生成的图片马上传至图床(CobaltStrike有这个功能，具体可以看视频讲解，非常简单)，并复制URL链接

将(http://example/456.png)替换成URL链接

![image](https://user-images.githubusercontent.com/89376703/171013306-ea3c5167-5951-48ad-8f6a-1c7fdfeb4eb2.png)



## 目前测试(AV Test)
测试时间:2022-5-29

Windows Defender（√）

Kaspersky （√）

McAfee（√）

ESET Nod32（√）

Norton 360（√）

## 加入知识星球学习更多免杀

![image](https://user-images.githubusercontent.com/89376703/171014106-c24152d6-4a8d-49ae-9623-9a0c282a50eb.png)

