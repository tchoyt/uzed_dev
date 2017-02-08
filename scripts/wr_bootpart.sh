#!/bin/bash

# Copy boot image
function cp_boot_image()
{
	cd ${FSBL_DIR}
	./build_boot_image.sh
	cd -
	cp -v ${FSBL_DIR}/BOOT.bin ${BOOT_INSTALL_DIR}/.
}

# Copy zImage and set uname in /boot/uEnv.txt
function cp_kernel()
{
	cp -v ${FSBL_DIR}/uImage.bin ${BOOT_INSTALL_DIR}/uImage
}

# Copy device tree binaries
function cp_dtb()
{
	cp -rv ${FSBL_DIR}/devicetree.dtb ${BOOT_INSTALL_DIR}/.
}

# Define variables
BOOT_INSTALL_DIR=./boot_part
FSBL_DIR=../software/fsbl

# Install boot partitions
mkdir ${BOOT_INSTALL_DIR}
cp_boot_image
cp_kernel
cp_dtb

echo "-----------------------------"
echo "Boot Script Complete"
echo "-----------------------------"
