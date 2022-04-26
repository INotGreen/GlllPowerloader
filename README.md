# Gllllnimloader

## 这是一个nim的加载器，我用Python将它进行了脚本化快速编译，和其它ShellCode加载器不同的是，它是一个PowerShell的加载器，出于PowerShell语言的灵活性，Gllllnimloader可以加载任何形式上的powershell

# 用法：

## 提前配置好nim和python3的环境，建议在windows下进行编译

## 用CobaltStrike生成一个stageless的Powershell脚本
![image](https://user-images.githubusercontent.com/89376703/165303519-bce20d59-6ffb-4f09-bcfb-15dfc8c04d5e.png)

## 将Powershell脚本挂在公网，你也可以挂在pastebin或者Github上，或者你也可以本地起一个http服务，然后输入网址链接即可编译

![image](https://user-images.githubusercontent.com/89376703/165304429-a801191f-3334-429f-80c4-27d74d475224.png)

![image](https://user-images.githubusercontent.com/89376703/165304900-f276f5d0-4f76-4823-a5f3-a89df583ca9b.png)

# 免杀效果：

### Karpersky
仅弹计算器作演示，lasass dump暂时不考虑
![image](https://user-images.githubusercontent.com/89376703/165305458-d4a074d6-5adb-4cc6-9996-5d32abdc0b21.png)

### Windows Defender(win 2016)
![image](https://user-images.githubusercontent.com/89376703/165306383-b304bce6-1911-4671-8777-36557f06f0f8.png)
