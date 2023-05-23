# PiKVM_Prebuild_image_NanoPi-Neo

这是一个NanoPi Neo的预构建镜像，该镜像可以让Pikvm运行在NanoPi Neo上。

[PiKVM](https://github.com/pikvm/pikvm)是一个基于树莓派的开源、低成本的IP-KVM系统。不同于向日葵、teamviewer、Todesk这类远程控制软件，[PiKVM](https://github.com/pikvm/pikvm)可以实现硬件层的远程控制管理各类设备，如配置 BIOS，远程挂载虚拟 CD-ROM 或闪存驱动器重新安装操作系统。

当然这些年树莓派4B成为理财产品，便有了在各类便宜的ARM开发板上运行pikvm的需求。

经过[xe5700](https://github.com/xe5700)、[srepac](https://github.com/srepac)等大佬的开发移植，项目[kvmd-armbian](https://github.com/srepac/kvmd-armbian)已经实现在Allwinner全志, Amlogic晶晨以及Rockchip瑞芯微为核心的电视盒子以及开发板上运行PiKVM, 包括像Phicomm N1、TQC A01、RK322x based tvbox (MXQ, V88)、S905L2 based tvbox、Orange Pi Zero and One、Nano Pi Neo, Rock64, and Orange Pi Zero Plus、Libre Computer Le Potato, La Frite 1GB, Renegade ROC-RK3328-CC and ALL-H3-CC H5 2GB、Inovato Quadra tv box、Orange Pi PC+ and orange pi 3等。

而我曾尝试在Nanopi NEO上刷入Armbian官网提供的Armbian 23.02 Jammy镜像[https://www.armbian.com/nanopi-neo/](https://www.armbian.com/nanopi-neo/)，并运行[kvmd-armbian](https://github.com/srepac/kvmd-armbian)，因kernel版本太低而缺少forced_eject功能，会导致出现无法使用虚拟U盘/镜像(MSD)[https://docs.pikvm.org/msd/]的问题。

但是我惊喜的发现Armbian在GitHub上的编译工具[build](https://github.com/armbian/build)已经修复了kernel缺少forced_eject功能的问题,于是我很没技术水平的用GitHub Action编译Armbian固件，并在编译的同时集成了大部分[kvmd-armbian](https://github.com/srepac/kvmd-armbian)的大部分依赖，可以有效加快脚本的安装流程。

这个镜像的优点：
1. 大幅减少脚本的安装时间。（受限于国内网络和NEO的机能，能将1-2小时的安装时间控制在5-10min）
2. 支持MSD功能。
3. 避免在256m内存的NanoPi NEO安装失败的问题（内存不足导致安装失败，但是PiKVM可以直接在256m内存上运行）
4. 想不到，吹不下去了....

当然能力有限，还是做不到刷入即用，还需要手动执行些步骤。

下班了，待编辑
