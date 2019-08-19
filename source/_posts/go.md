---
title: go
date: 2019-08-14 14:53:45
tags: go
categories: go
---
#### 注释和生成
- [godoc注释](https://blog.cyeam.com/golang/2018/09/03/godoc)
#### go linux 发布
-  打开cmd终端，cd到项目src目录下，执行如下操作,这样在main.go同目录下会生产mai     n二进制文件
-  将main二进制文件上传到服务器(==配置文件也需要上传到服务器上,如yaml,json,ini文件等==)
-  修改main二进制文件权限chmod -R 777 main ，直接运行之
- linux 后台运行: ==nohup ./程序名 &==
- 命令kill -9 PID(`9是信号量，表示强制终止`)实现重启
``` 
    SET CGO_ENABLED=0
    SET GOOS=linux
    SET GOARCH=amd64
    go build main.go
```
<!--more-->
#### go install/go get
生成可执行文件到$GOPATH/bin下
#### go如何在window服务器部署
- 编译成 exe 直接运行
- 编译成 exe，用 winsw 之类的软件构建 windows 服务运行
- 使用 ldflags 构建后台运行项目，并编写守护进程
- 用 windows 的 sc 命令构建服务运行

#### go依赖包
- go依赖包安装
    > 根据==import==，直接到***[github官网](https://github.com)***下载源码，然后解压，根据GOPATH直接放到src路径下

- 替换依赖包(墙)
    > 参考[Go modules 从入门到放弃 (go1.11)](https://www.jianshu.com/p/e8159888bb47)
    > 参考[go mod replace 记录](https://www.cnblogs.com/a-flydog/p/10815207.html)

- 修改go.mod默认依赖项
    > replace cloud.google.com/go => github.com/GoogleCloudPlatform/google-cloud-go latest

#### gin/gorm 更新数据
1.  使用`First() ,设置值,Save()`方式 完成==全量更新==数据
2.  使用`Update/Updates`方式进行==局部更新==,`不能使用该方式进行全量更新,会有部分数据无法更新的问题`
#### gorm启动自动迁移(***只能创建表,不能修改表结构***)
1. db.AutoMigrate(`表名`)
- gorm启用sql输出
1. db.LogMode(true)
#### 参考
- [GORM中文文档](https://learnku.com/docs/gorm/2018/migration/3799)
- [<font color=#dd00dd size=3>go入门教程</font>](https://github.com/astaxie/build-web-application-with-golang/blob/master/zh/01.0.md)
- [gorm中文](http://gorm.book.jasperxu.com/crud.html#c)
- [grpc中文](https://doc.rpcx.site/part1/quickstart.html)
- [go常见问题](https://colobu.com/2015/09/07/gotchas-and-common-mistakes-in-go-golang/)
- [go提升](https://colobu.com/categories/Go/dotnetcore)
- [Go 开发者路线图](https://github.com/Quorafind/golang-developer-roadmap-cn)
- [Golang标准库文档](https://studygolang.com/pkgdoc)
- [gin web文档](https://github.com/gin-gonic/gin)
