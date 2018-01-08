# Top Level makefile for zynqsocfpga

all: fpga bsp
.PHONY : all

# FPGA image
.PHONY: fpga
fpga:
	make -C ./fpga/${FPGA_PROJ}/

# Linux kernel, device tree, u-boot, bootloader
bsp:
	make -C ./software/

# Boot partition, Ubuntu Server root file system partition
install:
	make install -C ./software/

clean:
	make clean -C ./fpga/${FPGA_PROJ}/
	make clean -C ./software/
