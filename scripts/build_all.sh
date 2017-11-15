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
	# Kernel, uBoot, device tree, FSBL
	cd ../../software/petalinux_build/
	clean_petalinux
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
	# Kernel, uBoot, device tree, FSBL
	cd ../../software/petalinux_build/
	build_petalinux
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
