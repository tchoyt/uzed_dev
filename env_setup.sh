#!/bin/bash

HERE=$(pwd)
FPGA_PROJ=uzed_base_system

# Specify Vivado installation path
if [ "$1" == "" ] 
then
	VIVADO_INSTALL_PATH=~/bin/xilinx/Vivado/2016.4
else
	VIVADO_INSTALL_PATH=$1
fi

# Setup environment variables
export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm
export SWT_GTK3=0
export PATH=$HERE/software/dtc:$PATH
export PATH=$HERE/software/u-boot-xlnx/tools:$PATH

# Setup SW environment
source software/kernel_env.sh
source software/uboot_env.sh
source software/boot_image/build_boot_image.sh
source software/fpga_image/build_fpga_image.sh
source software/fsbl/build_fsbl.sh

# Setup HW environment
source fpga/$FPGA_PROJ/build_fpga.sh
source $VIVADO_INSTALL_PATH/settings64.sh