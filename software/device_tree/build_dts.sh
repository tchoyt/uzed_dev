#!/bin/bash

# DTS to DTB
function dts_to_dtb()
{
	dtc -I dts -O dtb -o ${DTB_FILE} ${DTS_FILE}
}

# DTB to DTS
function dtb_to_dts()
{
	dtc -I dtb -O dts -o ${DTS_FILE} ${DTB_FILE}
}

DTS_FILE=devicetree.dts
DTB_FILE=devicetree.dtb

if [ "$1" == "" ] 
then
	echo -e "ERROR: Specify DTB file"
   	exit
else
	# Copy original
	cp $1 $DTB_FILE
	# Build DTS
	dtb_to_dts
fi
