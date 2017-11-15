#!/bin/bash

HERE=$(pwd)
FPGA_PROJ=uzed_base

VIVADO_INSTALL_PATH=~/bin/xilinx/Vivado/2017.3
PETALINUX_INSTALL_PATH=~/bin/petalinux_20173

# Setup environment variables
export CROSS_COMPILE=aarch64-linux-gnu-
export ARCH=arm64
export SWT_GTK3=0

# Setup SW environment
source $PETALINUX_INSTALL_PATH/settings.sh
source software/petalinux.sh
source software/boot_image/build_boot_image.sh
source software/fpga_image/build_fpga_image.sh

# Setup HW environment
source fpga/$FPGA_PROJ/build_fpga.sh
source $VIVADO_INSTALL_PATH/settings64.sh

# Fix petalinux error: 'No space left on device or exceeds fs.inotify.max_user_watches?'
# This keeps happening... why Xilinx, why?
# Needs root permissions
fix_petalinux
