---
title: powershell学习.md
date: 2019-07-30 17:55:52
tags:
 - powershell
categories:
 - powershell
---
#### 新建utf-8文件
使用如下命令我们就可以得到一个UTF-8编码的空文件  
```
"" | Out-File -Encoding utf8 d:\2.txt
```
#### powershell远程sshlinux
- 命令
    - sudo service sshd restart`不支持ssh`
    
- 问题
    - [ssh免密码登录全过程](https://blog.csdn.net/zengqiang1/article/details/52997885)
    - sudo: no tty present and no askpass program specified 解决方法
        - [sudo: no tty present and no askpass program specified 解决方法](https://blog.csdn.net/gezehao/article/details/47317103)
        - [sudo: no tty present and no askpass program specified](https://blog.csdn.net/ksksjipeng/article/details/75267153)
    - [Trying to do ssh authentication with key files: server refused our key](https://askubuntu.com/questions/306798/trying-to-do-ssh-authentication-with-key-files-server-refused-our-key)
    - [putty 连接服务器 server refused our key](https://blog.csdn.net/weixin_40322495/article/details/81184227)
  
#### 参考
- [PowerShell创建一个utf-8编码的文件](http://www.splaybow.com/post/powershell-create-utf8-file.html)
- [Powershell快速入门（一） 安装和使用](https://www.jianshu.com/p/c8f5c374466a?utm_campaign=hugo&utm_medium=reader_share&utm_content=note&utm_source=weixin-friends)
- [Windows 终端美化，改造 PowerShell 的外观](https://www.jianshu.com/p/e4d71022ee48?utm_campaign=hugo&utm_medium=reader_share&utm_content=note&utm_source=weixin-friends)
- [Windows平台的开发者们，是时候抛弃 cmd 了！你应该选择 Powershell 的10个理由](https://www.jianshu.com/p/931ae4c34120?utm_campaign=hugo&utm_medium=reader_share&utm_content=note&utm_source=weixin-friends)
- [windows控制台主题美化工具-colortool](https://www.cnblogs.com/DHclly/p/10822804.html)
- [==windows与Linux间远程拷贝文件-pscp命令==](https://blog.csdn.net/huwei2003/article/details/45688565)
- [PowerShell官网](https://docs.microsoft.com/zh-cn/powershell/scripting/overview?view=powershell-5.0)