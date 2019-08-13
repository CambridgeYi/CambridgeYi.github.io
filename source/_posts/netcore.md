---
title: netcore
date: 2019-08-13 18:21:23
tags: netcore
categories: netcore
---

- 文档
    - [.NET Core官网](https://docs.microsoft.com/zh-cn/dotnet/core/)
    - [NuGet官网](https://docs.microsoft.com/zh-cn/nuget/what-is-nuget)
    - [ASP.NET Core 中文文档目录](https://www.cnblogs.com/dotNETCoreSG/p/aspnetcore-index.html)
    - [最全的.NET Core跨平台微服务学习资源](https://www.cnblogs.com/jackyfei/p/9955108.html)
    - [ASP.NET Core开发者路线图](https://github.com/MoienTajik/AspNetCore-Developer-Roadmap/blob/master/ReadMe.zh-Hans.md)
    - [issues](https://github.com/aspnet/AspNetCore/issues)
    - [dotnet 命令](https://docs.microsoft.com/zh-cn/dotnet/core/tools/dotnet?tabs=netcore21)
    - [通过 .NET CORE 提供的项目模板，减少重复劳动，提高效率](https://www.jianshu.com/p/180365ab2107?utm_campaign=hugo&utm_medium=reader_share&utm_content=note&utm_source=weixin-friends)
    - [动手造轮子：基于 Redis 的发布订阅实现 EventBus](https://www.jianshu.com/p/fd6732fcee37?utm_campaign=hugo&utm_medium=reader_share&utm_content=note&utm_source=weixin-friends)
<!--more-->
- dotnet 命令启动始终是默认端口5000 （说是release可以修改端口,实测无效,指定hosting.json也无效）
> 修改端口可以通过添加参数 --server.urls即dotnet xx.dll --server.urls=http://*.端口号
可以修改端口
- http响应乱码情况分析
    1. ==编码格式有问题==
    2. ==响应数据加密（通过fiddler 可查看是否加密）==,参考[C#实现通过Gzip来对数据进行压缩和解压](https://www.cnblogs.com/frankyou/p/5910074.html)
    
- vs 自动根据xml或json生成类(==xml很实用，自己手写容易出问题==)
> vs -> `编辑` -> 选择性粘贴 -> 将xml/json粘贴成类  
- 服务器 500
> ==直接cmd启动dotnet  XXXX.dll,然后访问接口,异常信息会输出到窗口中，端口使用***server.urls***配置==

- vs studio 编译/生成事件      
> 参考地址：https://blog.csdn.net/yyhero1/article/details/19272637

- [LINQ表连接大全](https://www.cnblogs.com/shenqiboy/p/3260105.html)
> 1. inner join 
> 2. left join
> 3. right join
> 4. full join
> 5. cross join

- dotnet core 自定义模板创建
    - 参考[创建 dotnet new 自定义模板](https://docs.microsoft.com/zh-cn/dotnet/core/tutorials/create-custom-template)
    - 注意==目前不支持.net core 3.0版本==
- linq查询必须要==先`skip`,然后再`Take`否则第二页开始就取不到数据==

- Task中的异常处理
    -  task逻辑不能包含async/await,否则异常无法捕获