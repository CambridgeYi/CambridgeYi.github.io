---
title: linux
date: 2019-08-13 21:12:04
tags: linux
categories: linux
---
1. 修改文件所属的组
    > ==chgrp -R 用户组名 文件名==
1. 修改文件所有者
    > chown -R 用户名 文件名
         ==-R ****表示递归目录及子目录****==
1. [linu下添加，删除，修改，查看用户和用户组](https://www.jianshu.com/p/f468e02f38a0)
    > gpasswd -a user1 group1 ==将用户user1添加到group1组中（用户可以属于多个组）==
1. mkdir -p 
    > ==**-p p表示parent 自动创建多级目录**==
1. hostnamectl --static set-hostname ==++nname++==
    > ==设置主机机器名==
1. sudo netstat -anp |grep PID或port
    > ==通过进程PID查看端口占用或通过port查看PID==
1. ps -ef |grep port或PID
    > ==查看进程PID或port启动情况==
<!--more-->
1. du -sm * |sort -nr
    > ==按照文件夹大小降序显示文件夹列表==
1. centos7:can not resolve host
    > - sudo vi /etc/resolv.conf   
    > - 注释所有内容,添加nameserver 8.8.8.8
    > - 重启 reboot 
    1. 查看端口占用情况
    > lsof -i 端口
1. 查找文件夹及子文件夹文件,接着删除
    > sudo find ./ -name "*.log" | xargs sudo rm -f
1. 查看文件夹占用情况
    > du -s  /home/api/logs/*  |sort -rn
1. ==命令都需要加上sudo，防止出现错误==
2. 除了文件都删除
    - shopt -s extglob
    - rm -rf !((filename1|filename2))
        - sudo rm -rf !(appsettings.json|log4net.config|hostsettings.json)

1. 修改文件夹所属用户和用户组
    - chown -R jay:fefjay a.txt #修改文件所属用户为jay，所属用户组为fefjay
    - chgrp -R jay a.txt
    -
1. 防火墙设置
    > firewall-cmd --state # 查看防火墙状态  
    > systemctl stop/disable firewalld.service # 停止/禁用防火墙
1. [Linux scp命令](https://www.runoob.com/linux/linux-comm-scp.html)
    > scp -r ./ root@10.10.101.96:/home/notify_uat
1. copy -r /xx/app/. /destination和copy -r /xx/app/ /destination区别
    > 没有.会将app文件夹也拷贝,有.则只会拷贝app下内容(不拷贝app文件夹)
1. rm -rf /xx/app/和rm -rf /xx/app/*区别
    > 前者会将app文件夹删除,后者会保留app文件夹
1. which pwd /whereis pwd
    > 查看命令所在位置
    