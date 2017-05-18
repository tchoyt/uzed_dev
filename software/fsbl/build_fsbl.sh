#!/bin/bash

FPGA_PROJ=uzed_base
FPGA_IMG=uzed_top

function build_fsbl() {
	cp ../../fpga/$FPGA_PROJ/$FPGA_PROJ.sdk/$FPGA_IMG.hdf .
	hsi -source build_fsbl.tcl
}

function clean_fsbl() {
	rm -fr hsi* ps7_init* $FPGA_IMG.hdf build/
}
