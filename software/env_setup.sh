#!/bin/bash

HERE=$(pwd)

# Specify Vivado installation path
if [ "$1" == "" ] 
then
	VIVADO_INSTALL_PATH=~/bin/xilinx/Vivado/2016.4
else
	VIVADO_INSTALL_PATH=$1
fi

export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm
export SWT_GTK3=0
export PATH=$HERE/dtc:$PATH
export PATH=$HERE/u-boot-xlnx/tools:$PATH
source kernel_env.sh
source uboot_env.sh
source boot_image/build_boot_image.sh
source fpga_image/build_fpga_image.sh
source fsbl/build_fsbl.sh
source $VIVADO_INSTALL_PATH/settings64.sh
