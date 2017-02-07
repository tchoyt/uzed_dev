#!/bin/bash

cp -v ../u-boot-xlnx/u-boot u-boot.elf
cp -v $INSTALL_DTBS_PATH/zynq-zed.dtb devicetree.dtb
cp -v $BUILD_KERNEL_DIR/arch/arm/boot/uImage uImage.bin
bootgen -w -image boot.bif -o i BOOT.bin
