#!/bin/bash

BUILD_KERNEL_DIR=/tmp/xilinx_socfpga_kernel
INSTALL_DTBS_PATH=${BUILD_KERNEL_DIR}/deploy/dtbs

function cp_bootimg() {
	cp -v ../fsbl/build/executable.elf uzed_fsbl.elf
	cp -v ../../fpga/uzed_base/uzed_base.runs/impl_1/uzed_top.bit .
	cp -v ../u-boot-xlnx/u-boot u-boot.elf
	cp -v $INSTALL_DTBS_PATH/zynq-zed.dtb devicetree.dtb
	cp -v $BUILD_KERNEL_DIR/arch/arm/boot/uImage uImage.bin
}

function clean_bootimg() {
	rm -fr *.elf *.bit *.dtb *.bin
}

function build_bootimg() {
	clean_bootimg
	cp_bootimg
	bootgen -image boot.bif -arch zynq -o BOOT.bin -w on 
}
