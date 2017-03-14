#!/bin/bash

export UBOOT_DEFCONFIG=zynq_microzed_config

function configuboot() {
	make ${UBOOT_DEFCONFIG}
}

function menuuboot() {
	make menuconfig
}

function makeuboot() {
	make -j16
}
