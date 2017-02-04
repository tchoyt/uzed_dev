#!/bin/bash

# Clone Xilinx Software Development repos
git clone https://github.com/Xilinx/device-tree-xlnx.git
git clone https://git.kernel.org/pub/scm/utils/dtc/dtc.git
git clone https://github.com/Xilinx/linux-xlnx.git
git clone https://github.com/Xilinx/u-boot-xlnx.git

# Ubuntu 16.04.1rootFS fron eewiki.net
wget -c https://rcn-ee.com/rootfs/eewiki/minfs/ubuntu-16.04.1-minimal-armhf-2017-01-14.tar.xz
tar xf ubuntu-16.04.1-minimal-armhf-2017-01-14.tar.xz

