#!/bin/bash

# Copy boot image
function cp_boot_image()
{
	cp -v ../software/boot_image/BOOT.bin ${BOOT_INSTALL_DIR}/.
}

# Copy kernel image
function cp_kernel()
{
	cp -v $BUILD_KERNEL_DIR/arch/arm/boot/uImage ${BOOT_INSTALL_DIR}/.
}

# Copy device tree
function cp_dtb()
{
	cp -v ../software/device_tree/devicetree.dtb ${BOOT_INSTALL_DIR}/.
}

# Define variables
BOOT_INSTALL_DIR=./boot_part
BUILD_KERNEL_DIR=/tmp/xilinx_socfpga_kernel

# Install boot partitions
rm -fr ${BOOT_INSTALL_DIR}
mkdir ${BOOT_INSTALL_DIR}
cp_boot_image
cp_kernel
cp_dtb

echo "-----------------------------"
echo "Boot Script Complete"
echo "-----------------------------"
