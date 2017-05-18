#!/bin/bash

# Print help menu
function print_help()
{
   echo -e "Syntax: build_all.sh"
   echo -e "-h --help   = Print this menu"
   echo -e "-c --clean  = Clean everything"
   exit
}

# Setup envrionment
function env_setup()
{
	cd ..
	source env_setup.sh
}

# Clean
function clean_all()
{
	echo "-----------------------------"
	echo "    Cleaning Everthing...    "
	echo "-----------------------------"	
	# FPGA
	cd fpga/uzed_base
	clean_fpga
	cd ../../
	# FSBL
	cd software/fsbl
	clean_fsbl
	# DTC
	cd ../dtc
	make clean
	# Device tree
	cd ../device_tree
	rm -fr devicetree.dt*
	# Peek/Poke
	cd ../axi_gp0_rw
	make clean
	# Kernel
	cd ../linux-xlnx
	rm -fr /tmp/xilinx_socfpga_kernel/
	make mrproper
	# uBoot
	cd ../u-boot-xlnx
	make clean
	# Boot image
	cd ../boot_image
	clean_bootimg
	cd ../..
}

# Build
function build_all()
{
	echo "-----------------------------"
	echo "    Building Everthing...    "
	echo "-----------------------------"	
	# FPGA
	cd fpga/uzed_base
	build_fpga
	cd ../..
	# FSBL
	cd ../fsbl
	build_fsbl
	# DTC
	cd ../dtc
	make
	# Device tree
	cd ../device_tree
	./build_dtb.sh uzed_20171.dts
	# Peek/Poke
	cd ../axi_hpm0_rw
	make
	# Kernel
	cd ../linux-xlnx
	configkernel
	makekernel
	# uBoot
	cd ../u-boot-xlnx
	configuboot
	makeuboot
	# Boot image
	cd ../boot_image
	build_bootimg
	cd ../..
}

# Parse command line options
options=()
options+=(-h:HELP)
options+=(--help:HELP)
options+=(-c:CLEAN)
options+=(--clean:CLEAN)

. parseopt.sh

if [ "$HELP" == 1 ] 
then
	print_help
	exit
fi

# Setup envrionment
env_setup

if [ "$CLEAN" == 1 ] 
then
	# Clean everything
	clean_all
	echo "-----------------------------"
	echo "       Clean Complete        "
	echo "-----------------------------"	
else
	# Build everything
	build_all	
	echo "-----------------------------"
	echo "       Build Complete        "
	echo "-----------------------------"	
fi
