---
title: docker
date: 2019-08-13 18:14:55
tags: docker
categories: docker
---

#### gitlab自动构造
根据官方 Dockerfile配置进行自定义配置
- [gitlab-runner](https://hub.docker.com/r/gitlab/gitlab-runner) 
1. 镜像库拉取
    - 先在本地拉取到官方镜像库
    - 然后将官方镜像库提交到==自己的阿里云镜像库==
    - 之后的拉取直接从自己的阿里云镜像库中拉取（==拉取会快很多==）
2. .dockerignore文件排除
    - copy操作会直接根据这个文件进行镜像生成，==.dockerignore会排除很多文件==
    - 拉取dotnetcore镜像(使用国内的仓库daocloud)
    ```
    echo "DOCKER_OPTS=\"\$DOCKER_OPTS --registry-mirror=http://f2d6cb40.m.daocloud.io\"" | sudo tee -a /etc/default/docker`   
    sudo systemctl docker restart`
    ```

#### docker 命令：
```
    docker build -t friendlyname .# 使用此目录的 Dockerfile 创建镜像 -t 标签名    
    docker run -p 4000:80 friendlyname  # 运行端口 4000 到 90 的“友好名称”映射   docker run -d -p 4000:80 friendlyname         # 内容相同，但在分离模式下    
    docker ps                                 # 查看所有正在运行的容器的列表   
    docker stop <hash>                     # 平稳地停止指定的容器   
    docker ps -a           # 查看所有容器的列表，甚至包含未运行的容器   
    docker kill <hash>                   # 强制关闭指定的容器   
    docker rm <hash>              # 从此机器中删除指定的容器   
    docker rm $(docker ps -a -q)           # 从此机器中删除所有容器   
    docker images -a                               # 显示此机器上的所有镜像  
    docker rmi <imagename>            # 从此机器中删除指定的镜像   
    docker rmi $(docker images -q)             # 从此机器中删除所有镜像   
    docker login             # 使用您的 Docker 凭证登录此 CLI 会话   
    docker tag <image> username/repository:tag  # 标记 <image> 以上传到镜像库   
    docker push username/repository:tag            # 将已标记的镜像上传到镜像库    
    docker run username/repository:tag                   # 运行镜像库中的镜像` 
    docker logs 容器ID  # 查看容器的日志
```


#### 参考
    - [docker官网](https://docs.docker.com/v17.12/docker-cloud/apps/stack-yaml-reference/#stack-file-example)
    - [microsoft/aspnetcore dockerfile(主要来源)](https://hub.docker.com/r/microsoft/aspnetcore/dockerfile)
    - [Using Supervisor with Docker](https://www.ctolib.com/docs/sfile/Docker-Tutorials/Demo/Docker_Supervisor.html)
    - [Docker网络模型对比](https://www.jianshu.com/p/421c9181456e?utm_campaign=hugo&utm_medium=reader_share&utm_content=note&utm_source=weixin-friends)
    - [Docker 常用指令详解](https://www.jianshu.com/p/7c9e2247cfbd?utm_campaign=hugo&utm_medium=reader_share&utm_content=note&utm_source=weixin-friends)
    - [docker logs－查看docker容器日志](https://www.jianshu.com/p/1eb1d1d3f25e)
    - [实时查看Docker容器占用的CPU，内存状态](https://blog.csdn.net/liuzhang6966/article/details/89532061)