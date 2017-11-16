#!/usr/bin/python

from fpga_mmap import devmem
import time

# Board/FPGA Constants
AXI_GP0_ADDR_L = 0x40000000
AXI_GP0_ADDR_H = 0x40000FFF

# Generic peek/poke
# Read/Write registers in the specified address space
# Accepts list of integers to R/W buffers
# Returns or prints list of integers from the buffer 
def peek(addr,length=1,echo=0):
	# Add the HPM0 base address to requested address
	addr = AXI_GP0_ADDR_L + addr
   	if AXI_GP0_ADDR_L <= addr <= AXI_GP0_ADDR_H: 
   		# Map the memory buffer, print or return the register/buffer
   		mem = devmem(addr,length)
   		if echo == 1: print mem.read(length).hexdump(4)
		else:  		 return mem.read(length)
   	else:
   		print ("ERROR: Address is outside FPGA memory space")

def poke(addr,value,mask=None):
	# Add the HPM0 base address to requested address
	base_addr = AXI_GP0_ADDR_L + addr
   	if AXI_GP0_ADDR_L <= base_addr <= AXI_GP0_ADDR_H: 
   		# Map the memory buffer
   		mem = devmem(base_addr,len(value))
   		# If a mask is needed, apply the mask to the entire buffer, or just write the buffer
   		wrbuf = [value[i] for i in range(0,len(value))]
   		if mask is not None: 
   			for i in range(0,len(value)):
   				rdbuf = peek(addr)	
   				wrbuf[i] = (rdbuf[0] & ~mask[i]) | (value[i] & mask[i])
   				addr += 4
   		# Write the buffer
   		mem.write(wrbuf)
   	else:
   		print ("ERROR: Address is outside FPGA memory space")

# Write 4K, record the time elapsed and print throughput
# Throughput = 4Kbyte / time elapsed
def wr_benchmark():
	wr_value = [i for i in range(0,1024)]
	t1 = time.time()
	poke(0x0,wr_value)
	t2 = time.time()
	print "Time elapsed: %.5fs" % (t2 - t1)
	bps = 4096.000 / (t2 - t1)
	Mbps = bps / 1024
	print "Throughput: %.5fMbps" % Mbps

# Read 4K, record the time elapsed and print throughput
# Throughput = 4Kbyte / time elapsed
def rd_benchmark():
	t1 = time.time()
	rd_value = peek(0x0,1024)
	t2 = time.time()
	print "Time elapsed: %.5fs" % (t2 - t1)
	bps = 4096.000 / (t2 - t1)
	Mbps = bps / 1024
	print "Throughput: %.5fMbps" % Mbps
