# Zynq UltraScale+ AXI Speedtest
##### Table of Contents
[Experimental Results](#expresults)

[Memory Testing Module](#memtestmodule)

[Memory Testing Module Tutorial](#memtesttutorial)

<a name="expresults"/>

## Experimental Results

Experimental results available online for easy viewing at: https://drive.google.com/open?id=1uQApV60ZPeULmpTdM61_w9c1aRNkuKza

Backup results available in this git in the "Experiment Results FPT2019" folder. Downloaded results can be viewed using Microsoft Excel or any compatible software.


<a name="memtestmodule"/>

## Memory Testing Module

The memory testing module is packaged as an IP for easier use. The module contains other IPs provided by Xilinx to instantiate some primitives such as BlockRams. This IP is located in the "IP" folder and once added to a Vivado project, can be instantiated as any other IP in the Xilinx Vivado toolchain. Our IP is packaged using Vivado 18.2.1.


<a name="memtesttutorial"/>

## Memory Testing Module Tutorial

1. Open Vivado 2018.2.1 and create a new project.
2. Create Block Design
3. Instantiate Zynq Ultrascale+ MPSoC
4. Configure Zynq UltraScale+ MPSoC according to the used board and:
    * Add one or multiple HP AXI ports to be tested.
    * Add one master AXI port - AXI HPM0 FPD.
    * Configure desired DDR organisation.
    * Configure desired clock frequency.
  
Example state of the project so far:
![Project state so far](https://raw.githubusercontent.com/kmanev/ZynqUSp-AXI-Speedtest/master/IP/Tutorial_Img/1.png)

Download “MemoryTestBlock.zip” and unzip it.
In Vivado, open Tools->Settings->IP->Repository->Add, and navigate to the folder with the unzipped contents.
In your block design, add a new IP called “MemoryTestBlock”. Add it as many times as AXI HP ports used.
Connect manually the “m_ddr_axi” ports on the module to the AXI HP ports either directly or with interconnect:



Now “Run Connection Automation” and select everything listed. Vivado will connect automatically the clock sources, reset signals and the slave AXIs:



In the “Address Editor”, you now have to assign all the DDR memory space to all accelerators. Additionally, you have to remember which HP AXI port is connected to which MemoryTestBlock and the corresponding global address of the slave port. In our case HP0 is connected to MemoryTestBlock_0 and mapped to 0xA000_0000. Thus the control port for HP0 is at 0xA000_0000:


Save and Validate your block design. Right-click on it and select “Create HDL Wrapper”.
Make sure the created wrapper is the design’s top module and then synthesize, implement and generate bitstream.
Export the hardware by File->Export->Export Hardware. Tick “Include Bitstream”.
Start SDK by File->Launch SDK.
In SDK create a new “Hello World” application project. Use the exported hardware.


