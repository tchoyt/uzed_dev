#!/bin/bash

BUILD_KERNEL_DIR=/tmp/xilinx_socfpga_kernel
FPGA_PROJ=uzed_base
FPGA_IMG=uzed_top

function cp_bootimg() {
	cp -v ../fsbl/build/executable.elf uzed_fsbl.elf
	cp -v ../../fpga/$FPGA_PROJ/$FPGA_PROJ.runs/impl_1/$FPGA_IMG.bit .
	cp -v ../u-boot-xlnx/u-boot u-boot.elf
	cp -v ../software/device_tree/devicetree.dtb .
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
