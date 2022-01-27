# [OpenWrt-Docker](https://github.com/SuLingGG/OpenWrt-Docker)

[![GitHub Stars](https://img.shields.io/github/stars/SuLingGG/OpenWrt-Rpi-Docker.svg?style=flat-square&label=Stars&logo=github)](https://github.com/SuLingGG/OpenWrt-Rpi-Docker/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/SuLingGG/OpenWrt-Rpi-Docker.svg?style=flat-square&label=Forks&logo=github)](https://github.com/SuLingGG/OpenWrt-Rpi-Docker/fork)
[![Docker Stars](https://img.shields.io/docker/stars/sulinggg/openwrt.svg?style=flat-square&label=Stars&logo=docker)](https://hub.docker.com/r/sulinggg/openwrt)
[![Docker Pulls](https://img.shields.io/docker/pulls/sulinggg/openwrt.svg?style=flat-square&label=Pulls&logo=docker&color=orange)](https://hub.docker.com/r/sulinggg/openwrt)

本项目旨在构建适用于树莓派 1~4 、适用于 armv6/armv7/armv8(aarch64)/x86_64(amd64) 平台设备的 OpenWrt 镜像 (每日更新)。

Github: <https://github.com/SuLingGG/OpenWrt-Docker>

DockerHub: <https://hub.docker.com/r/sulinggg/openwrt>

## 支持设备及镜像版本

本项目基于 [immortalwrt: openwrt-18.06-k5.4](https://github.com/immortalwrt/immortalwrt/tree/openwrt-18.06-k5.4)，每日上午 8 点编译 OpenWrt 镜像，镜像构建完成后将同时推送到 [DockerHub](https://hub.docker.com/r/sulinggg/openwrt) 和 阿里云镜像仓库 (上海) 。

对于国内用户，为提高镜像拉取体验，可以考虑拉取存放于阿里云镜像仓库的镜像，镜像名称及标签如下表所示:

### OpenWrt 标准镜像

OpenWrt 标准镜像为集成常用软件包的 Docker 镜像，镜像自带软件包可满足大多数情景下的使用需求。

|  支持设备/平台  |        DockerHub        |                  阿里云镜像仓库 (上海)                  |
| :-------------: | :---------------------: | :-----------------------------------------------------: |
|    树莓派 1B    |  sulinggg/openwrt:rpi1  |  registry.cn-shanghai.aliyuncs.com/suling/openwrt:rpi1  |
|    树莓派 2B    |  sulinggg/openwrt:rpi2  |  registry.cn-shanghai.aliyuncs.com/suling/openwrt:rpi2  |
| 树莓派 3B / 3B+ |  sulinggg/openwrt:rpi3  |  registry.cn-shanghai.aliyuncs.com/suling/openwrt:rpi3  |
|    树莓派 4B    |  sulinggg/openwrt:rpi4  |  registry.cn-shanghai.aliyuncs.com/suling/openwrt:rpi4  |
|      armv7      | sulinggg/openwrt:armv7  | registry.cn-shanghai.aliyuncs.com/suling/openwrt:armv7  |
|  arm8/aarch64   | sulinggg/openwrt:armv8  | registry.cn-shanghai.aliyuncs.com/suling/openwrt:armv8  |
|  x86_64/amd64   | sulinggg/openwrt:x86_64 | registry.cn-shanghai.aliyuncs.com/suling/openwrt:x86_64 |

### OpenWrt-Mini 镜像

OpenWrt-Mni 镜像为几乎未添加额外软件包的 Docker 镜像，你可以自行通过 opkg 安装你需要的软件包。

|  支持设备/平台  |        DockerHub        |                  阿里云镜像仓库 (上海)                  |
| :-------------: | :---------------------: | :-----------------------------------------------------: |
|    树莓派 1B    |  sulinggg/openwrt-mini:rpi1  |  registry.cn-shanghai.aliyuncs.com/suling/openwrt-mini:rpi1  |
|    树莓派 2B    |  sulinggg/openwrt-mini:rpi2  |  registry.cn-shanghai.aliyuncs.com/suling/openwrt-mini:rpi2  |
| 树莓派 3B / 3B+ |  sulinggg/openwrt-mini:rpi3  |  registry.cn-shanghai.aliyuncs.com/suling/openwrt-mini:rpi3  |
|    树莓派 4B    |  sulinggg/openwrt-mini:rpi4  |  registry.cn-shanghai.aliyuncs.com/suling/openwrt-mini:rpi4  |
|      armv7      | sulinggg/openwrt-mini:armv7  | registry.cn-shanghai.aliyuncs.com/suling/openwrt-mini:armv7  |
|  arm8/aarch64   | sulinggg/openwrt-mini:armv8  | registry.cn-shanghai.aliyuncs.com/suling/openwrt-mini:armv8  |
|  x86_64/amd64   | sulinggg/openwrt-mini:x86_64 | registry.cn-shanghai.aliyuncs.com/suling/openwrt-mini:x86_64 |

## 注意事项

- 其中，树莓派 2B 镜像同时适用于 2B/3B/3B+/4B 。 
- 若拉取镜像时不加任何标签，则将使用 latest 标签拉取镜像，latest 指向的镜像与树莓派 2B 镜像实际上为同一镜像。
- 镜像中软件包的集成情况基本上与 [SuLingGG/OpenWrt-Rpi](SuLingGG/OpenWrt-Rpi) 项目中相同，但在 SuLingGG/OpenWrt-Rpi 项目的基础上，去掉了一些与无线/内核特性强相关的软件包。
- 由于 Docker 容器与宿主机共享内核，所以 Docker 容器的内核特性与宿主机当前的内核特性相同。
- 本项目固件支持 opkg 安装软件包，软件源内有 7000+ 个软件包可供选择。
- (对于高级用户) 某些软件包可能依赖一些特定的内核特性，所以我不保证 opkg 软件源中的所有软件包都可以正常使用。且因为上文所述原因，在 OpenWrt 中安装 kmod 是无效的，如果有需求，请提前在宿主机中提前载入相应的内核模块，例如:

```
modprobe ip6_udp_tunnel
modprobe ip6table_nat
modprobe pppoe
modprobe tun
modprobe udp_tunnel
modprobe xt_TPROXY
```

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