# uzed_dev
MicroZed Development

Board Required:
MicroZed with Zynq 7010 

Tools Required:
Xilinx Vivado/SDK 2017.3.1 - installed to ~/bin/xilinx/
Xilinx Petalinux 2017.3 - installed to ~/bin/petalinux_20173

Environment Setup - Edit your tool paths here:
source env_setup.sh

Petalinux Error:
You'll likely get this error message:

ERROR: No space left on device or exceeds fs.inotify.max_user_watches?
ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watches.
ERROR: To modify max_user_watches: sysctl -n -w fs.inotify.max_user_watches=<value>.
ERROR: Root privilege is required to modify max_user_watches.

To fix it - setup your envrionment and run 'fix_petalinux'

Build FPGA: 
1. Build FPGA: cd fpga/uzed_base
2. build_fpga

Build FPGA image for Linux configuration:
1. cd software/fpga_image
2. build_fpgaimg

Build Linux kernel, uBoot and FSBL
1. cd software/petalinux_build
2. fix_petalinux - Fixes the above error
3. build_petalinux

Build Boot image:
1. cd software/boot_image
2. build_bootimg

Write SD Card:
1. cd scripts/
2. Write Boot partition: ./wr_bootpart.sh
3. Write rootFS partition: ./wr_rootpart.sh
4. Write an SD card: ./wr_sdcard.sh --dev /dev/SD_DEVICE --part

Initial Boot:
1. Setup jumpers to boot from SD card.
2. Press any key to break into uBoot
3. Set default uBoot environment: env default -f -a
4. Save new uBoot environment - THIS WILL OVERWRITE FACTORY ENVIRONMENT: env save
5. Boot the board: boot

Edit Ubuntu hostname, IP address, fstab, etc.:
1. Edit constants in scripts/wr_rootpart.sh
2. Write a new rootFS partition: ./wr_rootpart.sh
3. Write the SD card: ./wr_sdcard --dev /dev/SD_DEVICE

Configure Kernel, uBoot builds:
1. cd software/petalinux_build
2. config_petalinux_kernel
3. config_petalinux_uboot
