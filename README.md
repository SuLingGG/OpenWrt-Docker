# [OpenWrt-Rpi-Docker](https://github.com/SuLingGG/OpenWrt-Rpi-Docker)

[![GitHub Stars](https://img.shields.io/github/stars/SuLingGG/OpenWrt-Rpi-Docker.svg?style=flat-square&label=Stars&logo=github)](https://github.com/SuLingGG/OpenWrt-Rpi-Docker/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/SuLingGG/OpenWrt-Rpi-Docker.svg?style=flat-square&label=Forks&logo=github)](https://github.com/SuLingGG/OpenWrt-Rpi-Docker/fork)
[![Docker Stars](https://img.shields.io/docker/stars/sulinggg/openwrt.svg?style=flat-square&label=Stars&logo=docker)](https://hub.docker.com/r/sulinggg/openwrt)
[![Docker Pulls](https://img.shields.io/docker/pulls/sulinggg/openwrt.svg?style=flat-square&label=Pulls&logo=docker&color=orange)](https://hub.docker.com/r/sulinggg/openwrt)

本项目旨在构建适用于树莓派 1~4 、arm/arm64/amd64/i386 平台的 OpenWrt 镜像 (每日更新)。

Github: <https://github.com/SuLingGG/OpenWrt-Rpi-Docker>

DockerHub: <https://hub.docker.com/r/sulinggg/openwrt>

## 支持设备及镜像版本

本项目基于 Lean 大 OpenWrt 源码，每日上午 8 点编译适用于树莓派 1~4 与 x86 平台 (包含 64 位和 32 位) 的 OpenWrt 镜像，镜像构建完成后将同时推送到 [DockerHub](https://hub.docker.com/r/sulinggg/openwrt) 和 阿里云镜像仓库 (上海) 。

对于国内用户，为提高镜像拉取体验，可以考虑拉取存放于阿里云镜像仓库的镜像，镜像名称及标签如下表所示:

|   支持设备/平台    |          DockerHub           |                    阿里云镜像仓库 (上海)                     |
| :----------------: | :--------------------------: | :----------------------------------------------------------: |
|     树莓派 1B      |    sulinggg/openwrt:rpi1     |    registry.cn-shanghai.aliyuncs.com/suling/openwrt:rpi1     |
|     树莓派 2B      |    sulinggg/openwrt:rpi2     |    registry.cn-shanghai.aliyuncs.com/suling/openwrt:rpi2     |
|  树莓派 3B / 3B+   |    sulinggg/openwrt:rpi3     |    registry.cn-shanghai.aliyuncs.com/suling/openwrt:rpi3     |
|     树莓派 4B      |    sulinggg/openwrt:rpi4     |    registry.cn-shanghai.aliyuncs.com/suling/openwrt:rpi4     |
|        arm         |     sulinggg/openwrt:arm     |      registry.cn-shanghai.aliyuncs.com/suling/openwrt:       |
|       arm64        |    sulinggg/openwrt:arm64    |     registry.cn-shanghai.aliyuncs.com/suling/openwrt:arm     |
|   x86_64 (64 位)   |   sulinggg/openwrt:x86_64    |   registry.cn-shanghai.aliyuncs.com/suling/openwrt:x86_64    |
| x86_generic (32位) | sulinggg/openwrt:x86_generic | registry.cn-shanghai.aliyuncs.com/suling/openwrt:x86_generic |

## 注意事项

- 其中，树莓派 2B 镜像同时适用于 2B/3B/3B+/4B 。 

- 若拉取镜像时不加任何标签，则将使用 latest 标签拉取镜像，latest 指向的镜像与树莓派 2B 镜像实际上为同一镜像。

- 镜像中软件包的集成情况基本上与 [SuLingGG/OpenWrt-Rpi](SuLingGG/OpenWrt-Rpi) 项目中相同，但在 SuLingGG/OpenWrt-Rpi 项目的基础上，去掉了一些和无线有关的软件包。

- 由于 Docker 容器与宿主机共享内核，所以 Docker 容器的内核特性与宿主机当前的内核特性相同。

镜像详细使用方法请参考博客文章:

「在 Docker 中运行 OpenWrt 旁路网关」

<https://mlapp.cn/376.html>

## 鸣谢

P3TERX/Actions-OpenWrt (本项目基于此项目):

<https://github.com/P3TERX/Actions-OpenWrt>

OpenWrt Source Repository:

<https://github.com/openwrt/openwrt/>

Lean's OpenWrt source:

<https://github.com/coolsnowwolf/lede>

CTCGFW's Team:

<https://github.com/project-openwrt>