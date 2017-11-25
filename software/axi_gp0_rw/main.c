#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <string.h>
#include <unistd.h>
#include <getopt.h>
#include <stdint.h>
#include <time.h>

#define M_AXI_GPO_ADDR		0x40000000
#define M_AXI_GPO_UB_ADDR	0x7FFFFFFF
#define TEST_BRAM_ADDR_L  	0x0
#define TEST_BRAM_ADDR_H	0xFFC
#define TEST_BRAM_DEPTH 	1024
#define FPGA_CAST(type, ptr)  				((type) (ptr))
#define fpga_write_word(dest, src)       	(*FPGA_CAST(volatile uint32_t *, (dest)) = (src))
#define fpga_read_word(src)              	(*FPGA_CAST(volatile uint32_t *, (src)))
#define fpga_replbits_word(dest, msk, src)  (fpga_write_word(dest,(fpga_read_word(dest) & ~(msk)) | ((src) & (msk))))

static int fd;
static void *virtual_base;

void virtual_mmap() {
	// Map entire AXI GP0 address space
	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
	}
	virtual_base = mmap( NULL, ( M_AXI_GPO_UB_ADDR - M_AXI_GPO_ADDR ), ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, M_AXI_GPO_ADDR );	
	if( virtual_base == MAP_FAILED ) {
		printf("ERROR: mmap() failed...\n");
	}
	// printf("Virtual Base Address: 0x%x\n", virtual_base);
	close(fd);
}

void virtual_munmap() {
	// Unmap and close memory 
	if( munmap( virtual_base, ( M_AXI_GPO_UB_ADDR - M_AXI_GPO_ADDR ) ) != 0 ) {
		printf( "ERROR: munmap() failed...\n" );
	}
	close( fd );
}

void usage() {
	printf("Usage: h2flw_rw -r|w <OFFSET> -v <WR_VALE> -m <MASK> \n");
	printf("\t-h this Help\n");
	printf("\t-b Benchmark PS-PL Throughput\n");
	printf("\t-r|w <OFFSET> (Hex)\n");
	printf("\t-v <WR_VALUE> (Hex)\n");
	printf("\t-m <MASK> (Hex)\n");	
}

// call this function to start a nanosecond-resolution timer
struct timespec timer_start(){
    struct timespec start_time;
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start_time);
    return start_time;
}

// call this function to end a timer, returning nanoseconds elapsed as a long
long timer_end(struct timespec start_time){
    struct timespec end_time;
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end_time);
    long exec_tns = end_time.tv_nsec - start_time.tv_nsec;
    return exec_tns;
}

int main(int argc, char *argv[]) {
	unsigned int offset, mask, wr_value, rd_value;
	int rw_n, opt, mask_flag, wr_value_flag, bench_flag;
	offset = 0; mask = 0; wr_value = 0; rd_value = 0; rw_n = 0; mask_flag = 0; wr_value_flag = 0, bench_flag = 0;
	float exec_t, exec_tns, Bps, MBps, Mbps, Gbps;
	struct timespec timer, start, stop;;

	// Parse command line arugments
	while ((opt=getopt(argc,argv,"hr:w:m:v:b")) != -1) {
		switch(opt) {
			case 'r':
				offset = strtol(optarg, NULL, 16);
				// printf("RD offset: 0x%x\n", offset);
				rw_n = 1;
				break;
			case 'w':
				offset = strtol(optarg, NULL, 16);
				// printf("WR offset: 0x%x\n", offset);
				rw_n = 0;
				break;
			case 'm':
				mask = strtol(optarg, NULL, 16);
				mask_flag = 1;
				// printf("Mask: 0x%x\n", mask);
				break;
			case 'v':
				wr_value = strtol(optarg, NULL, 16);
				wr_value_flag = 1;
				// printf("Write Value: 0x%x\n", wr_value);
				break;	
			case 'b':
				bench_flag = 1;
				break;		
			case 'h':
			default:
				usage();
				return(-1);
		}
	}		

	// Benchmark
	if ( bench_flag == 1 ) {
		// Write test
		// timer = timer_start();
		clock_gettime( CLOCK_REALTIME, &start);
		// for (int i=0; i < 1000; i++){
			offset = TEST_BRAM_ADDR_L;
			virtual_mmap();
			while (offset < TEST_BRAM_ADDR_H) {
				fpga_write_word(virtual_base+offset, 0x12345678);
				offset = offset + 4;
			}
			virtual_munmap();
		// }
		clock_gettime( CLOCK_REALTIME, &stop);
		exec_t = (float)stop.tv_sec - start.tv_sec;
		printf("Time elapsed(s):  %0.5f\n", exec_t);
		Bps = TEST_BRAM_DEPTH * 4 / (exec_t);
		MBps = Bps / 1024;
		Mbps = MBps * 8;
		Gbps = Mbps / 1024;
		printf("WR Throughput:\n");
		printf("MB/s: %.3f\n", MBps);
		printf("Mb/s: %.3f\n", Mbps);
		printf("Gb/s: %.3f\n", Gbps);
		// Read test
		// timer = timer_start();
		// // for (int i=0; i < 1000; i++){
		// 	offset = TEST_BRAM_ADDR_L;
		// 	virtual_mmap();
		// 	while (offset < TEST_BRAM_ADDR_H) {
		// 		rd_value = fpga_read_word(virtual_base+offset);
		// 		offset = offset + 4;
		// 	}
		// 	virtual_munmap();
		// // }
		// exec_tns = (float)timer_end(timer);
		// exec_t = exec_tns / 1000000000.0;
		// printf("Time elapsed(ns): %.5f\n", exec_tns);
		// printf("Time elapsed(s):  %0.5f\n", exec_t);
		// Bps = TEST_BRAM_DEPTH * 4 / (exec_t);
		// MBps = Bps / 1024;
		// Mbps = MBps * 8;
		// Gbps = Mbps / 1024;
		// printf("RD Throughput:\n");
		// printf("MB/s: %.3f\n", MBps);
		// printf("Mb/s: %.3f\n", Mbps);
		// printf("Gb/s: %.3f\n", Gbps);
	} else {
		// Read
		if ( rw_n == 1 ) {
			virtual_mmap();
			rd_value = fpga_read_word(virtual_base+offset);
			virtual_munmap();
			printf("0x%x\n", rd_value);
		// Write
		} else if ( rw_n) {
			// Check for write value
			if ( wr_value_flag == 0 ) { 
				usage();
				return(-1);
			} else {
			// Unmasked Write
			if ( mask_flag == 0 ) {
				virtual_mmap();
				fpga_write_word(virtual_base+offset, wr_value);
				virtual_munmap();
				// printf("WR Value: 0x%x\n", wr_value);
			// Masked Write
			} else {
				virtual_mmap();
				fpga_replbits_word(virtual_base+offset, mask, wr_value);
				virtual_munmap();
				// printf("WR Value: 0x%x\n", wr_value);
				// printf("Mask:     0x%x\n", mask);
			}
		}}
	}
return(0);
}