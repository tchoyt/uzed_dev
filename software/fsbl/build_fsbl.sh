#!/bin/bash

function build_fsbl() {
	cp ../../fpga/uzed_base_system/uzed_base_system.sdk/uzed_top.hdf .
	hsi -source build_fsbl.tcl
}

function clean_fsbl() {
	rm -fr hsi* ps7_init* uzed_top.hdf build/
}
