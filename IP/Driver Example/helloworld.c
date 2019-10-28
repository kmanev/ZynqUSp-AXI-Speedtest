#include stdio.h
#include platform.h
#include xil_printf.h

	volatile uint32_t slaveport, 		- Address of the control AXI port
	uint64_t addressSpaceOffset, 		- beginning of the memory space that the accelerator should operate on
	uint32_t addressSpaceSize, 			- size of the memory space that the accelerator should operate on, Bytes
	int burstSize, 						- burst size, measured in 128-bit bursts - 1 corresponds to 16 Byte bursts, 2 corresponds to 32 Byte bursts etc.
	int offsetBetweenBurstLocations		- Add jumps between burst sizes, 0 for sequential accesses

void configure_Write_AXI(volatile uint32_t slaveport, uint64_t addressSpaceOffset, uint32_t addressSpaceSize, int burstSize, int offsetBetweenBurstLocations)
{
	volatile uint32_t p = slaveport;
	(p++) = (addressSpaceOffset  32);
	(p++) = (addressSpaceOffset & 0xFFFFFFFF);
	(p++) = offsetBetweenBurstLocations + 16burstSize;
	(p++) = addressSpaceSize(offsetBetweenBurstLocations + 16burstSize);
	(p++) = burstSize;
	(p++) = 1;
	(p++) = 5;
}
void configure_Read_AXI(volatile uint32_t slaveport, uint64_t addressSpaceOffset, uint32_t addressSpaceSize, int burstSize, int offsetBetweenBurstLocations)
{
	volatile uint32_t p = slaveport + 8;
	(p++) = (addressSpaceOffset  32);
	(p++) = (addressSpaceOffset & 0xFFFFFFFF);
	(p++) = offsetBetweenBurstLocations + 16burstSize;
	(p++) = addressSpaceSize(offsetBetweenBurstLocations + 16burstSize);
	(p++) = burstSize;
	(p++) = 1;
	(p++) = 50;
}
                                               start_write and start_read should be either 0 or 1. They are high-active.
void start_AXI(volatile uint32_t slaveport, int start_write, int start_read){
	volatile uint32_t p = slaveport + 16;
	p = (start_write  1)  (start_read);
}
void stop_AXI(volatile uint32_t slaveport){
	volatile uint32_t p = slaveport + 16;
	p = 0;
}
void wait_AXI(volatile uint32_t slaveport){
	volatile uint32_t p = slaveport + 16;
	while ((p) != 0);

}
void reset_AXI(volatile uint32_t slaveport){
	volatile uint32_t p = slaveport + 16;
	p = 4;
	wait_AXI(slaveport);
}
void print_AXI(volatile uint32_t slaveport, double frequency){
	volatile uint32_t p = slaveport + 18;
	uint64_t runtime, latency, writeOps, readOps, inactive;
	runtime = (p++); runtime =32; runtime = (p++);
	writeOps = (p++);
	readOps = (p++);
	latency = (p++); latency =32; latency = (p++);
	inactive = (p++);
	
	  At this point, runtime holds the amount of clock cycles the accelerator was active
	  writeOps and readOps hold the amount of done memory requests (each of size the burst length)
	  latency holds a number that latencyreadOps = average latency. latencyruntime = average amount of read requests in flight
	  inactive holds the maximum amount of clock cycles the read AXI port was busy (used to detect if large DDR refresh cycles are present)
	 

	uint64_t wb =(p = slaveport + 4);
	uint64_t rb = (p+16);
	printf(Test Finished in %.3f sec.nrWrite Speed %.3f MBs nrRead Speed %.3f MBs nrAvg. Read Latency %.3f clock cycles nrMax Read AXI inactivity %lu clock cyclesnr,runtimefrequency,(writeOps(wb16))(runtimefrequency)(1000000.0),(readOps(wb16))(runtimefrequency)(1000000.0),(latency  1.0)readOps,inactive);
}
int main()
{
    init_platform();

    volatile uint32_t HP0  = 0xA0000000;  You can configure here the slave addresses of the control AXI ports
    volatile uint32_t HP1  = 0xA0001000;  for the accelerators
    volatile uint32_t HP2  = 0xA0002000; 
    volatile uint32_t HP3  = 0xA0003000; 

     For ease we simply allocate 34 of the memory and then use it in the middle
    int malloc1_5G = malloc(153610241024);
    reset_AXI(HP3);
    reset_AXI(HP2);
    reset_AXI(HP1);
    reset_AXI(HP0);

     Placement matters and this is the placement we have used in Ultra96. We did not have time to evaluate placement (wrt bankrankbank group). Hopefully somebody else can research that. 

     Start both reads and writes on HP3 to have a 128MB address space each, operate sequentially on 816=128 Byte bursts 
    configure_Write_AXI(HP3, 0x10000000, 0x08000000, 8, 0);
    configure_Read_AXI (HP3, 0x18000000, 0x08000000, 8, 0);
    configure_Write_AXI(HP2, 0x20000000, 0x08000000, 8, 0);
    configure_Read_AXI (HP2, 0x28000000, 0x08000000, 8, 0);
    configure_Write_AXI(HP1, 0x30000000, 0x08000000, 8, 0);
    configure_Read_AXI (HP1, 0x38000000, 0x08000000, 8, 0);
     Start both reads and writes on HP0 to have a 128MB address space each, operate sequentially on 816=128 Byte bursts 
    configure_Write_AXI(HP0, 0x40000000, 0x08000000, 8, 0);
    configure_Read_AXI (HP0, 0x48000000, 0x08000000, 8, 0);

    start_AXI(HP3, 1, 1);
    start_AXI(HP2, 1, 1);
    start_AXI(HP1, 1, 1);
    start_AXI(HP0, 1, 1);

    sleep(5); sleep the CPU for some time while running the tests, careful not to wait too much as counters may overflow (PMU works on 64-bit for runtime,latency and 32-bit for other measurements)

    stop_AXI(HP3);
    stop_AXI(HP2);
    stop_AXI(HP1);
    stop_AXI(HP0);

    wait_AXI(HP3);
    wait_AXI(HP2);
    wait_AXI(HP1);
    wait_AXI(HP0);

    printf(HP3nr);
    print_AXI(HP3, 99999999.0);  in order to calculate throughput, we need to pass the frequency to this funtion (in our case 100MHz, but to be precise it is 99,999,999Hz)
    printf(HP2nr);
    print_AXI(HP2, 99999999.0);  in order to calculate throughput, we need to pass the frequency to this funtion (in our case 100MHz, but to be precise it is 99,999,999Hz)
    printf(HP1nr);
    print_AXI(HP1, 99999999.0);  in order to calculate throughput, we need to pass the frequency to this funtion (in our case 100MHz, but to be precise it is 99,999,999Hz)
    printf(HP0nr);
    print_AXI(HP0, 99999999.0);  in order to calculate throughput, we need to pass the frequency to this funtion (in our case 100MHz, but to be precise it is 99,999,999Hz)

    cleanup_platform();
    return 0;
}