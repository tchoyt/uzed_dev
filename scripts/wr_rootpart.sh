#!/bin/bash

# Copy rootfs
function cp_rootfs()
{
	if [ -e ../*-*-*-armhf-*/armhf-rootfs-*.tar ]
	then
		sudo tar xfvp ${ROOTFS_TAR_DIR}/*-*-*-armhf-*/armhf-rootfs-*.tar -C ${ROOTFS_INSTALL_DIR}
	else
		echo 'Need to run sw_init.sh to populate rootFS tarball'
	fi		
}

# Copy kernel modules
function cp_modules()
{
	sudo cp -rv ${INSTALL_MOD_PATH}/lib ${ROOTFS_INSTALL_DIR}/.
}

# Copy SoCFPGA applications
function cp_apps()
{
	sudo cp -v ${SOCFPGA_SW_DIR}/axi_gp0_rw ${ROOTFS_INSTALL_DIR}/usr/local/bin/.
}

# Write /etc/fstab
function wr_fstab()
{
	sudo sh -c "echo '
/dev/mmcblk0p2  /  auto errors=remount-ro  0  1
/dev/mmcblk0p1  /boot/uboot auto defaults  0  2' >> ${ROOTFS_INSTALL_DIR}/etc/fstab"
}

# Write /etc/network/interfaces
function wr_ethinterface()
{
	sudo sh -c "echo '
auto lo
iface lo inet loopback
  
auto eth0
iface eth0 inet static
   address ${BOARD_IP_ADDR}
   netmask 255.255.0.0
   gateway 172.20.0.90
   dns-nameserver 172.20.0.90' >> ${ROOTFS_INSTALL_DIR}/etc/network/interfaces"
}

# Write /etc/hosts, /etc/hostname
function wr_hostname()
{
	sudo sed -i '/127.0.1.1/c\127.0.1.1\t'"${BOARD_HOSTNAME}"'.localdomain\t'"${BOARD_HOSTNAME}" ${ROOTFS_INSTALL_DIR}/etc/hosts
	sudo sed -i '/arm/c\'"${BOARD_HOSTNAME}" ${ROOTFS_INSTALL_DIR}/etc/hostname
}

# Write /etc/ssh/sshd_config
function wr_ssh_config()
{
	sudo sed -i '/PermitRootLogin prohibit-password/c\PermitRootLogin yes' ${ROOTFS_INSTALL_DIR}/etc/ssh/sshd_config
}

# Define variables
BOARD_HOSTNAME=zynq_uzed
BOARD_IP_ADDR=172.20.2.28
SOCFPGA_SW_DIR=../software/axi_gp0_rw
ROOTFS_INSTALL_DIR=./rootfs_part

# Install and configure rootFS
mkdir ${ROOTFS_INSTALL_DIR}
cp_rootfs
cp_modules
cp_apps
wr_fstab
wr_ethinterface
wr_hostname
wr_ssh_config

echo "-----------------------------"
echo "rootFS Script Complete"
echo "-----------------------------"
