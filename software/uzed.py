#!/usr/bin/python

from fpga_mmap import devmem
import time
import numpy as np

# Board/FPGA Constants
AXI_GP0_ADDR_L = 0x40000000
AXI_GP0_ADDR_H = 0x40000FFF
TEST_BRAM_ADDR = 0x0
TEST_BRAM_DEPTH = 1024

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
def wr_benchmark(echo=True):
	wr_value = [i for i in range(0,TEST_BRAM_DEPTH)]
	t1 = time.time()
	poke(TEST_BRAM_ADDR,wr_value)
	t2 = time.time()
	Bps = TEST_BRAM_DEPTH * 4 / (t2 - t1)
	MBps = Bps / 1024
	Mbps = MBps * 8
	Gbps = Mbps / 1024
	if echo:
		print "Time elapsed: %.3fs" % (t2 - t1)
		print "MB/s: %.3f" % MBps
		print "Mb/s: %.3f" % Mbps
		print "Gb/s: %.3f" % Gbps
	else:
		return [MBps,Mbps,Gbps]

# Read 4K, record the time elapsed and print throughput
# Throughput = 4Kbyte / time elapsed
def rd_benchmark(echo=True):
	t1 = time.time()
	rd_value = peek(TEST_BRAM_ADDR,TEST_BRAM_DEPTH)
	t2 = time.time()
	Bps = TEST_BRAM_DEPTH * 4 / (t2 - t1)
	MBps = Bps / 1024
	Mbps = MBps * 8
	Gbps = Mbps / 1024
	if echo:
		print "Time elapsed: %.3fs" % (t2 - t1)
		print "MB/s: %.3f" % MBps
		print "Mb/s: %.3f" % Mbps
		print "Gb/s: %.3f" % Gbps
	else:
		return [MBps,Mbps,Gbps]

# Run a rd/wr benchmark of the FPGA fabbric
# Read and write 4K blocks of memory for 'loop_cnt' iterations, print results
def fpga_benchmark(loop_cnt):
	print "Running WR Benchmark..."
	wr_results = [0.0,0.0,0.0]
	for i in range(0,loop_cnt):
		wr_results = np.add(wr_results,wr_benchmark(False))
	print "Running RD Benchmark..."
	rd_results = [0.0,0.0,0.0]
	for i in range(0,loop_cnt):
		rd_results = np.add(rd_results,rd_benchmark(False))
	print "WR Throughput:"
	print "MB/s: %.3f" % (wr_results[0] / float(loop_cnt))
	print "Mb/s: %.3f" % (wr_results[1] / float(loop_cnt))
	print "Gb/s: %.3f" % (wr_results[2] / float(loop_cnt))
	print "RD Throughput:"
	print "MB/s: %.3f" % (rd_results[0] / float(loop_cnt))
	print "Mb/s: %.3f" % (rd_results[1] / float(loop_cnt))
	print "Gb/s: %.3f" % (rd_results[2] / float(loop_cnt))
