---
title: goland
date: 2019-08-13 18:17:46
tags: goland
categories: goland
---
#### goland激活
- [激活](https://blog.csdn.net/hi_liuxiansheng/article/details/89078405)
#### goland Terminal
很多情况不起效果,直接使用cmd

<!--more-->
#### goland 文件头注释
- 打开GoLand的setting选项 > Editor >CodeStyle >File and Code Templates >Go File 
```
  /*
    @Time : ${DATE} ${TIME} 
    @Author : ${USER}
    @File : ${NAME}
    @Software: ${PRODUCT_NAME}
    */
    package ${GO_PACKAGE_NAME}
```
#### goland 配置注释后面是否跟一个空格 
- setting > Editor > Code Style > Go > Other > Add leading space to comments
