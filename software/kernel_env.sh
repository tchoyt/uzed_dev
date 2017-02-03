#!/bin/bash

export DEFAULT_DEFCONFIG=xilinx_zynq_defconfig
export BUILD_KERNEL_DIR=/tmp/xilinx_socfpga_kernel
export INSTALL_MOD_PATH=${BUILD_KERNEL_DIR}/deploy/modules
export INSTALL_DTBS_PATH=${BUILD_KERNEL_DIR}/deploy/dtbs
export DEFAULT_TARGET=zImage

function configme() {
	mkdir -p ${BUILD_KERNEL_DIR}
	mkdir -p ${INSTALL_DTBS_PATH}
	mkdir -p ${INSTALL_MOD_PATH}
	make O=${BUILD_KERNEL_DIR} ${DEFAULT_DEFCONFIG}
}

function menume() {
	make O=${BUILD_KERNEL_DIR} menuconfig
}

function makeme() {
	make O=${BUILD_KERNEL_DIR} -j16 ${DEFAULT_TARGET}
}

function makekernel() {
	make O=${BUILD_KERNEL_DIR} -j16 LOADADDR=0x8000 uImage
}

function makemodules() {
	make O=${BUILD_KERNEL_DIR} -j16 modules
	make O=${BUILD_KERNEL_DIR} -j16 modules_install
}

function makedtbs() {
	make O=${BUILD_KERNEL_DIR} -j16 dtbs
	make O=${BUILD_KERNEL_DIR} -j16 dtbs_install
}

function makeclean() {
	make O=${BUILD_KERNEL_DIR} -j16 clean
}

function printme() {
	echo "BUILD_KERNEL_DIR  ${BUILD_KERNEL_DIR}"
	echo "DEFAULT_DEFCONFIG ${DEFAULT_DEFCONFIG}"
	echo "DEFAULT_TARGET    ${DEFAULT_TARGET} "
	echo "ARCH              ${ARCH} "
	echo "CROSS_COMPILE     ${CROSS_COMPILE} "
}