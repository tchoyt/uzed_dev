#!/bin/bash

function cp_fpgabit() {
	cp -v ../../fpga/uzed_base_system/uzed_base_system.runs/impl_1/uzed_top.bit .
}

function clean_fpgaimg() {
	rm -fr *.bit *.bin
}

function build_fpgaimg() {
	clean_fpgaimg
	cp_fpgabit
	bootgen -image fpga.bif -arch zynq -process_bitstream bin -w on 
	mv uzed_top.bit.bin uzed_top.bin
}
