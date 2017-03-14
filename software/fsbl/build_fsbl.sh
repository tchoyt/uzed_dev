#!/bin/bash

function build_fsbl() {
	cp ../../fpga/ultrazed_base/ultrazed_base.sdk/abcd_top.hdf .
	hsi -source build_fsbl.tcl
}

function clean_fsbl() {
	rm -fr hsi* psu_init* abcd_top.hdf build/
}
