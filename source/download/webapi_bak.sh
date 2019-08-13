#!/bin/bash
set -e
cd /home/api/apis/WebApi.Restful/
dirname=$(date +%Y%m%d%H%m)
newDirectory="app-"$dirname
if [ ! -d $newDirectory ]; then
    mkdir $newDirectory
    echo "文件夹"$newDirectory"创建成功"
else
    read -p "文件夹"$newDirectory"已经存在，是否创建新文件夹(y/n):" isCreate
    echo $isCreate
    if [ $isCreate = "y" ]; then
        newDirectory1="app-"$(date +%Y%m%d%H%m%s)
        mkdir $newDirectory1
        echo "文件夹/home/api/apis/WebApi.Restful/"$newDirectory1"创建成功"
    else
        exit 1
    fi
fi
echo "开始备份"
cp -r /home/api/apis/WebApi.Restful/app/. /home/api/apis/WebApi.Restful/$newDirectory/ || {
    echo "备份失败"
    exit 1
}
echo '备份成功'

read -p "是否删除目录:/home/api/apis/WebApi.Restful/app/(y/n):" val

if [ $val = "y" ]; then
    rm -rf /home/api/apis/WebApi.Restful/app/* || {
        echo "删除目录失败"
        exit 1
    }
    cp /home/api/apis/WebApi.Restful/{*.json,*.config} /home/api/apis/WebApi.Restful/app/ ||{
        echo "拷贝配置文件失败"
        exit 1
    }
    echo "配置文件拷贝完成"
else
    exit 0
fi
