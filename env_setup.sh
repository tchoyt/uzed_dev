#!/bin/bash

export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm
export SWT_GTK3=0
export PATH=~/sw_work/dtc:$PATH
export PATH=~/sw_work/u-boot-xlnx/tools:$PATH
source ~/bin/xilinx/Vivado/2016.4/settings64.sh
