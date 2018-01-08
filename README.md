# uzed_dev
MicroZed Development

Board Required:
MicroZed with Zynq 7010 

Tools Required:
Xilinx Vivado/SDK 2017.4
Xilinx Petalinx 2017.4

Quick and dirty build instructions:
1. Edit env_setup.sh to point to your Vivado and Petalinux installations
2. source env_setup.sh
3. make all && make install

Create tarball of SD card partitions:
1. Run the SD write script in the scripts directory: './wr_tarball.sh --tar FILENAME

Image your SD card for SD boot:
1. Insert the SD card and unmount it
2. Run the SD write script in the scripts directory: './wr_sdcard.sh --dev YOUR_DEVICE --part'

Python Peek/Poke:
A 4K block memory has been implemented in the FPGA fabric with a peek/poke python library
RD/WR Benchmark functions require numpy to be installed
