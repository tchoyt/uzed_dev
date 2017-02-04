#!/bin/bash

HERE=$(pwd)

export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm
export SWT_GTK3=0
export PATH=$HERE/software/dtc:$PATH
export PATH=$HERE/software/u-boot-xlnx/tools:$PATH
source $HERE/software/kernel_env.sh
source ~/bin/xilinx/Vivado/2016.4/settings64.sh
