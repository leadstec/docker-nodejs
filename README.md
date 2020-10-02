# Nodejs image for VCubi Platform

![Nodejs](https://img.shields.io/badge/nodejs-12.18.4,_latest-blue)
![x86_64](https://img.shields.io/badge/x86_64-supported-brightgreen)
![aarch64](https://img.shields.io/badge/aarch64-supported-brightgreen)

## How to Use

### Pull image
    # from Docker Hub
    docker pull leadstec/nodejs:[tag]
    docker pull leadstec/nodejs-aarch64:[tag]
    # from Tencent CR
    docker pull leadstec.tencentcloudcr.com/leadstec/nodejs:[tag]
    docker pull leadstec.tencentcloudcr.com/leadstec/nodejs-aarch64:[tag]

### Build image
    docker-compose build nodejs

### LCS Schema & ENV

| ENV Variable              | Description               | Default | Accept Values |
|---------------------------|---------------------------|---------|---------------|
| NODE_ENV                  |                           | development |     |

## Image Structure Test
    container-structure-test test --image leadstec/nodejs:tag --config tests/nodejs.yaml

## CHANGELOG

**2020/10/02**
* Update: Nodejs 12.18.4

**2020/01/16**
* Update - NodeJS 12.14.0

**2019/12/12**
* NodeJS 10.16.3
* Based on Alpine 3.10.3

**8.11.4**
* 基于Alpine 3.8
* 支持compose v2,v3写法

**8.9.3**
* 更新2018年
* just update alpine to 3.7
* just update nodejs to 8.9.3

**6.10.3**
* 基于alpine 3.6（LCS 1.5.1）

**6.9.5**
* 发布到cangku.cloud
* Production Release
* update docker-compose to v3

**6.9.2**
* 基于alpine 3.5（LCS 1.4）

**6.7.0**

* 更新nodejs版本
* 只保留npm自更新，删除其余npm global modules

**6.2.0**

* 支持LCS 1.2.0
* 整理结构，支持node_modules caching
* node user 配置实用淘宝repos

**4.3.0**


**0.12.2**

* 0.12.2-9
    - 支持captool机制
* 0.12.2-
    - 基于Alpine 3.2.2，大幅度减小image体积
    - 升级到0.12.2

**0.10.36**

* 0.10.36-1
    - 添加node用户，支持SSH连接
    - 去掉PhantomJS安装（非必要）
* 0.10.36-
    - 基于base:0.6.2
    - 添加node用户运行nodejs应用
    - 增加${APP_DIR} /data/app用于放置代码
    - 预安装phamton.js（全局）

**0.10.33**

* 0.10.33-3
    - 基于base:0.6.1
    - 删除/setup目录
* 0.10.33-2
    - 基于base:0.6.0
    - 根据base:0.6的思路，简化首次启动脚本为runonce.sh
* 0.10.33-1
    - 基于base:0.5.2
    - 移除ENV设置
    - ENABLE_METEOR（meteor将独立成一个image）

**采用Nodejs版本号**

**0.4.1**

* Based on image reg.leadstec.com/base:0.4.1 (Refer to base/0.4.1 for details)
* Remove EXPOSE ports from Dockerfile, please map ports while creating the container

**0.4**

* Combine dev and runtime into one image.
* Based on image reg.leadstec.com/base:0.4 (Refer to base/0.4 for details)

**0.3.1**

* Bug fixed on 0.3 run script about starting supervisord.

**0.3**

* Update to use supervisorctl control processes within container and prevent restart container frequently.

**0.2.1**

* Add meteor.js framework

**0.2**

* Based on reg.leadstec.com/dev:0.2
* Dockerfile support up to docker version 1.2+

**0.1**

* initial image



