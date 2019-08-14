---
title: vscode
date: 2019-08-13 21:10:36
tags: vscode
categories: vscode
---
#### 常用插件  
- Debugger for Chrome
- Docker
- JavaScript (ES6) code snippets
- PowerShell
- shell-format
- Vetur
- Vue VSCode Snippets
- XML Tools
- vscode-icons

<!--more-->
#### vscode
- [VSCode安装shell、bash格式化工具](https://www.jianshu.com/p/484e5be21786)
- 控制台输出  
>`JavaScript (ES6) code snippets`
------
-  chrome 调试
> launch.json 配置
```
{
    // 使用 IntelliSense 了解相关属性。 
    // 悬停以查看现有属性的描述。
    // 欲了解更多信息，请访问: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "type": "chrome",
            "request": "launch",
            "name": "Chrome",
            "url": "http://localhost:8080",
            "webRoot": "${workspaceFolder}"
        }
    ]
}
```
