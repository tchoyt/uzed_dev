#!/bin/bash

function cp_bootimg() {
	cp -v ../fsbl/build/executable.elf uzed_fsbl.elf
	# cp -v ../../fpga/uzed_base_system/uzed_base_system.runs/impl_1/uzed_top.bit .
	cp -v ../u-boot-xlnx/u-boot.elf .
}

function clean_bootimg() {
	rm -fr BOOT.bin *.elf *.bit
}

function build_bootimg() {
	clean_bootimg
	cp_bootimg
	bootgen -image boot.bif -arch zynqmp -o BOOT.bin -w on 
}
