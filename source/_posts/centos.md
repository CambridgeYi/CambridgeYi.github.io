---
title: centos
date: 2019-08-13 18:14:08
tags: centos
categories: centos
---
#### htop
1. ##### 描述
linux 监控软件，比top更强大
2. ##### 安装 
```
yum install epel-release -y
yum install htop -y
```
<!--more--> 
---
#### centos7修改yum镜像源
1. ##### 命令
```
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup #备份
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo 
yum makecache
```
1. ##### 参考
- [linux修改yum源镜像源](https://blog.csdn.net/qq_28710983/article/details/79339116)
- [【CentOS7】yum安装时出现错误[Errno 14] curl#6 - "Could not resolve host: mirrors.aliyuncs.com; Unknown e的解决办法](https://blog.csdn.net/oschina_41140683/article/details/82426831)
- [docker配置国内阿里云镜像源](https://blog.csdn.net/m0_37886429/article/details/80323149)
- [如何查看yum 安装的软件路径（不要再忘了）](https://blog.csdn.net/wd2014610/article/details/79659073)
      