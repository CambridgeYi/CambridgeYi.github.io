---
title: supervisor
date: 2019-08-14 19:50:11
tags: supervisor
---
#### supervisor安装
```
    yum install python-setuptools  
    easy_install supervisor 
```
<!--more-->
#### supervisor守护go,conf文件
```
    [program:golang-http-server]
    command=/home/golang/simple_http_server
    autostart=true
    autorestart=true
    startsecs=10
    stdout_logfile=/var/log/simple_http_server.log
    stdout_logfile_maxbytes=1MB
    stdout_logfile_backups=10
    stdout_capture_maxbytes=1MB
    stderr_logfile=/var/log/simple_http_server.log
    stderr_logfile_maxbytes=1MB
    stderr_logfile_backups=10
    stderr_capture_maxbytes=1MB
```
配置说明:  
    - command：表示运行的命令，填入完整的路径即可  
    - autostart：表示是否跟随supervisor一起启动。  
    - autorestart：如果该程序挂了，是否重新启动。   
    - stdout_logfile：终端标准输出重定向文件。  
    - stderr_logfile：终端错误输出重定向文件。
#### 参考
[Linux Supervisor的安装与使用入门](https://www.cnblogs.com/Hai--D/p/5820718.html)
