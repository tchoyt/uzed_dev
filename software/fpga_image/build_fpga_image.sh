#!/bin/bash

FPGA_PROJ=uzed_base
FPGA_IMG=uzed_top

function cp_fpgabit() {
	cp -v ../../fpga/$FPGA_PROJ/$FPGA_PROJ.runs/impl_1/$FPGA_IMG.bit .
}

function clean_fpgaimg() {
	rm -fr *.bit *.bin
}

function build_fpgaimg() {
	clean_fpgaimg
	cp_fpgabit
	bootgen -image fpga.bif -arch zynq -process_bitstream bin -w on 
	mv $FPGA_IMG.bit.bin $FPGA_IMG.bin
}
