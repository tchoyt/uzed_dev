#!/bin/bash

function build_fsbl() {
	cp ../../fpga/uzed_base_system/uzed_base_system.sdk/uzed_top.hdf .
	hsi -source build_fsbl.tcl
}

function clean_fsbl() {
	rm -fr hsi* psu_init* abcd_top.hdf build/
}
