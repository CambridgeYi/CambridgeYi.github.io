---
title: python
date: 2019-08-13 21:12:23
tags: python
categories: python
---
#### python3安装
- [Linux系统Centos安装Python3.7
](https://www.cnblogs.com/zhanglong8681/p/8421512.html)
- wget http://mirror.centos.org/centos/7.6.1810/os/x86_64/Packages/yum-3.4.3-161.el7.centos.noarch.rpm
- rpm -ivh yum-3.4.3-161.el7.centos.noarch.rpm
- [Install Python 2.7.10 on CentOS/RHEL](https://myopswork.com/install-python-2-7-10-on-centos-rhel-75f90c5239a5)
- wget http://mirror.centos.org/centos/7/os/x86_64/Packages/yum-3.4.3-161.el7.centos.noarch.rpm
- wget http://mirror.centos.org/centos/7/os/x86_64/Packages/yum-metadata-parser-1.1.4-10.el7.x86_64.rpm
- wget http://mirror.centos.org/centos/7/os/x86_64/Packages/yum-utils-1.1.31-50.el7.noarch.rpm
- wget http://mirror.centos.org/centos/7/os/x86_64/Packages/yum-updateonboot-1.1.31-50.el7.noarch.rpm
- wget http://mirror.centos.org/centos/7/os/x86_64/Packages/yum-plugin-fastestmirror-1.1.31-50.el7.noarch.rpm
<!--more-->
#### PyCharm
- 开始启动时，要进行Run\Debug配置,参考[Pycharm的run\debug配置](https://blog.csdn.net/sunaxp/article/details/80363705)
- PEP8编码约定
    - 参考[Pycharm配置autopep8：自动调整代码为PEP8风格
阅读目录](https://www.cnblogs.com/xiao-apple36/p/9242069.html)
- pip安装依赖包
    - python -m pip install(不要添加--user不然import导入会有问题 no module named XXXX)
#### 问题
- pycharm中出现unresolved reference的解决办法
    - 参考[pycharm中出现unresolved reference的解决办法](https://blog.csdn.net/YeziTong/article/details/88103891)
- Pycharm出现No Python interpreter selected解决方法
    - 参考[Pycharm出现No Python interpreter selected解决方法](https://blog.csdn.net/weixue9/article/details/79316748)