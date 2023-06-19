# mingyue_docker

## 1. 下载docker desktop （不是必要）

https://www.docker.com/products/docker-desktop/

## 2. 更改docker engine环境

安装：https://blog.csdn.net/qq_39611230/article/details/108641842

```
{
  "debug": false,
  "experimental": false,
  "features": {
    "buildkit": true
  },
  "insecure-registries": [],
  "registry-mirrors": [
    "http://hub-mirror.c.163.com",
    "https://docker.mirrors.ustc.edu.cn/"
  ]
}
```

## 3. 下载系统环境image

进入windows cmd, 运行

```
docker pull ubuntu
```

下载完成ubuntu镜像

```
docker images
```

## 3. 更据Dockerfile下载其他环境

注：可根据自己需求在Dockerfile里安装所需package

进入当前Dockerfile所在目录, 构建基于ubuntu的镜像，自行命名为ubuntu_python:v1

```
docker build -t ubuntu_python:v1 .
```

## 3. 运行容器，进入bash

本地当前目录下有project1文件，映射到docker里project2文件

```
docker run -it -v /project1:/project2 ubuntu_python:v1 /bin/bash
```
