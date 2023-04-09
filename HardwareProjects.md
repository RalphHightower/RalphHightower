# Hardware Projects 

| Resources |
|------|
| [Raspberry PI Locater](https://rpilocator.com/) |
| [Single Board Computer Database](https://hackerboards.com/) |
| [FindBoard Workshop](https://www.findboard.cn/#/home) |

## Active Projects

### [TuringPi (V2) 4 Node Cluster](https://turingpi.com/) | [Documentation for Turing Pi 2](https://help.turingpi.com/hc/en-us/categories/8685418660125-Docs)

| Node | SBC | RAM | SSD |
|------|-----|-----|-----|
| 1 | NVIDIA Jetson TX2 NX 4 GB<br>(Jetson TX2 NX System-on-Module (SOM): 256-Core Pascal GPU, 6-Core ARM 64 Bit CPU, 4 GB LPDDR4x, 16 GB eMMC) | 4GB |   |
| 2 | NVIDIA Jetson TX2 NX 4 GB<br>(Jetson TX2 NX System-on-Module (SOM): 256-Core Pascal GPU, 6-Core ARM 64 Bit CPU, 4 GB LPDDR4x, 16 GB eMMC) | 4GB |   |
| *3* | *Raspberry Pi CM4* |   |   |
| *4* | *Raspberry Pi CM4* |   |   |

| Product | Vendor | Turing Pi Compatible |
|----|----|----|
| Raspberry Pi CM4 || ✓ |
| NVIDIA Jetson AGX Xavier Industrial | [Arrow](https://www.arrow.com/products/900-82888-0080-000/nvidia) $1,449.00 | |
| NVIDIA Jetson AGX Xavier 64GB | [Arrow](https://www.arrow.com/en/products/900-82888-0050-000/nvidia) $1,399.00  |  |
| NVIDIA Jetson AGX Orin 32GB | [Arrow](https://www.arrow.com/products/900-13701-0040-000/nvidia) $999.00 | |
| NVIDIA Jetson AGX Xavier | [Arrow](https://www.arrow.com/products/900-82888-0040-000/nvidia) $999.00  | |
| NVIDIA Jetson TX2i | [Arrow](https://www.arrow.com/en/products/900-83489-0000-000/nvidia) $849.00  | |
| Jetson Orin NX 16GB Module<br>Jetson Orin NX 16GB System-on-Module (SOM): 1024-Core Ampere GPU, 8-Core ARM 64 Bit CPU, 16 GB LPDDR5  | [Arrow](https://www.arrow.com/en/products/900-13767-0000-000/nvidia) $699.00 | ✓ |
| NVIDIA Jetson Xavier NX 16GB — 14 TOPS at 10W or 21 TOPS at 15W or 20W<br>(Jetson Xavier NX 16GB System-on-Module (SOM): 384-Core Volta GPU, 6-Core ARM 64 Bit CPU, 16 GB LPDDR4x, 16 GB eMMC) | [Arrow](https://www.arrow.com/en/products/900-83668-0030-000/nvidia) $579.00 N/A 24 wks 2023-01-14  | ✓ |
| NVIDIA Jetson Xavier NX 8 GB — 14 TOPS at 10W or 21 TOPS at 15W<br>(Jetson Xavier NX System-on-Module (SOM): 384-Core Volta GPU, 6-Core ARM 64 Bit CPU, 8 GB LPDDR4, 16 GB eMMC) | [Arrow](https://www.arrow.com/products/900-83668-0000-000/nvidia) $479.00  | ✓ |
| NVIDIA Jetson TX2 4GB | [Arrow](https://www.arrow.com/en/products/900-83489-0080-000/nvidia) $299.00  |  |
| NVIDIA Jetson TX2 NX 4 GB<br>(Jetson TX2 NX System-on-Module (SOM): 256-Core Pascal GPU, 6-Core ARM 64 Bit CPU, 4 GB LPDDR4x, 16 GB eMMC) | [Arrow](https://www.arrow.com/products/900-13636-0010-000/nvidia) $199.00  | ✓ |
| NVIDIA Jetson Nano<br>(Jetson Nano System-on-Module (SOM): 128-Core Maxwell GPU, 4-Core 64-bit ARM CPU, 4GB LPDDR4, 16GB eMMC) | [Arrow](https://www.arrow.com/en/products/900-13448-0020-000/nvidia) $129.00 | ✓ |
| NVIDIA Jetson Nano Developer Kit | [Arrow](https://www.arrow.com/products/945-13450-0000-100/nvidia) $149.00  | |
|| [Amazon](https://www.amazon.com/gp/product/B084DSDDLT/) $129.00  ||
|| [Seeed](https://www.seeedstudio.com/NVIDIA-Jetson-Nano-Develeopment-Kit-B01-p-4437.html) HTTP 404 ||
|| [SparkFun](https://www.sparkfun.com/products/16271) $149.00 backorder ||
|| [Okdo](https://www.okdo.com/us/p/nvidia-jetson-nano-development-kit/) $149.00 ||

| Documentation |
|----|
| [NVIDIA Jetson Developer Documentation](https://developer.nvidia.com/) |

| Suppliers |
|----|
| [NVIDIA Jetson Store](https://store.nvidia.com/en-us/jetson/store/) |
| [CherryTree Cases, Computers - Star Trek themed](https://mycherrytree.com/) |

### [StarFiveTech VisionFive2](https://www.starfivetech.com/en/site/boards)

| VisionFive2 | CPU | RAM | SSD (M.2 M Key) |
|----|----|----|---|
| 1. [VisionFive2](https://www.starfivetech.com/en/site/boards) | RISC-V RV64GC | 8GB |  |
| 2. [VisionFive2](https://www.starfivetech.com/en/site/boards) | RISC-V RV64GC | 8GB |  |

| Reference | Purpose |
|---|---|
| [StarFiveTech VisionFive2 SDK](https://github.com/starfive-tech/VisionFive2) | Builds a complete RISC-V cross-compile toolchain for the StarFiveTech JH7110 SoC. It also builds U-boot SPL, U-boot and a flattened image tree (FIT) image with a Opensbi binary, linux kernel, device tree, ramdisk image and rootfs image for the JH7110 VisionFive2 board. |
| [Linux kernel for StarFive's JH7100 RISC-V SoC](https://github.com/starfive-tech/linux) |The JH7100 is a Linux-capable dual-core 64bit RISC-V SoC and this tree is meant to collect all the in-development patches for running Linux on boards using this. So far there are two such boards and both are supported by this tree.|
| [StarFive Technical Documentation](https://github.com/starfive-tech/JH7100_Docs) | Technical Documentation |
| [StarFiveTech VisionFive2](https://doc-en.rvspace.org/Doc_Center/visionfive_2.html) | VisionFive2 documentation |
| [StarFiveTech GitHub](https://github.com/starfive-tech) | GitHub |

### [Khadas VIM3](https://docs.khadas.com/products/sbc/vim3/start)

| SBC | CPU | RAM | SSD (NVMe) |
|---|---|---|---|
| [Khadas VIM3](https://docs.khadas.com/products/sbc/vim3/start) | ARM | 4GB | [Intel 2TB 670p NVMe M.2 Internal SSD](https://www.bhphotovideo.com/c/product/1635040-REG/intel_ssdpeknu020tzx1_2tb_670p_ssd_m_2.html) |

| Documentation |
|-----|
| [Khadas VIM3](https://docs.khadas.com/products/sbc/vim3/start) |

### [Raspberry Pi4 8GB](https://www.raspberrypi.com/)

| SBC | CPU | RAM | SSD (USB-C) |
|---|---|---|---|
| [Raspberry Pi4 8GB](https://www.raspberrypi.com/) | ARM | 8GB | (2) [Samsung 1TB 870 QVO 2.5" SATA III Internal SSD](https://www.bhphotovideo.com/c/product/1566622-REG/samsung_mz_77q1t0b_am_1tb_870_qvo_2_5.html) |

| Documentation |
|-----|
| [Raspberry Pi](https://www.raspberrypi.com/) |

<hr>

## Planned Projects 

| Planned Projects |
|----|
| [How to Build a DIY GNSS Reference Station](https://learn.sparkfun.com/tutorials/how-to-build-a-diy-gnss-reference-station) |

<hr>

## Possible Projects 

| Possible Projects |
|------|
| **[GasCap Tracking Device Fits Inside of a Gasoline Cap — Inspired by Better Call Saul](https://www.hackster.io/news/gascap-tracking-device-fits-inside-of-a-gasoline-cap-inspired-by-better-call-saul-c1156c426ffa)** *lost dog locator?* |
| [Build a NVIDIA Jetson Xavier NX 4 Node cluster](https://www.geeky-gadgets.com/build-a-4-node-cluster-04-07-2022/) |
| [Building a Four-Node Cluster with NVIDIA Jetson Xavier NX](https://developer.nvidia.com/blog/building-a-four-node-cluster-with-nvidia-jetson-xavier-nx/) |

<hr>

## Completed Projects

<hr>

## Kickstarter Backed Projects 

| Kickstarter Projects | Purpose |
|----------------------|------|
| [AiryFi Hardware](https://github.com/sbcshop/AiryFi_Hardware) | About AiryFi is an open-source portable sensor that can deliver the quantity and mass of suspended particulates. It includes a PMSA003 sensor that uses a digital output with a 5V working voltage to offer information on suspended particulate matter (PM1.0, PM2.5, and PM10) in the air per unit volume. |
| [AiryFi Software](https://github.com/sbcshop/AiryFi_Software) |About AiryFi is an open-source portable sensor that can deliver the quantity and mass of suspended particulates. It includes a PMSA003 sensor that uses a digital output with a 5V working voltage to offer information on suspended particulate matter (PM1.0, PM2.5, and PM10) in the air per unit volume.|
|[IoTFi 4G Hardware](https://github.com/sbcshop/IoTFi-4G-Hardware) | IoT-Fi is a compact low power IoT enabled device having the capability of GSM modules (SIM868/SIM7600G-H) for providing network connectivity via using sim card and having the power of RP2040 chip. It also consists of an LCD 1.14” display, ESP32-C3, a 3.5mm jack for audio I/p - o/p, SD card and SIM card slot. |
| [IoTFi 4G Software](https://github.com/sbcshop/IoTFi_4G_Software) | IoT-Fi is a compact low power IoT enabled device having the capability of GSM module(SIM7600G-H) for providing network connectivity via using sim card and having the power of RP2040 chip. It also consists of an LCD 1.14” display, ESP32-C3, a 3.5mm jack for audio I/p - o/p, SD card and SIM card slot. |
| [The LoRa Kit - LONG RANGE Wireless Communication for Arduino](https://www.engineeringshock.com/lora-kit-project-page.html)  | |
| [The RedReactor](https://github.com/Scally-H/RedReactor) |With ultra-low stand-by power, and seamless transition even at high currents between the battery and external power, it ensures your data is safe and your design just keeps on working.|
| [Red Reactor Node-RED Dashboard](https://github.com/Scally-H/RedReactor/tree/main/RR_NodeRED) | We're pleased to announce the release of our Node-RED Home Automation Dashboard, which connects to our RR_MQTT client and gives you full visibility and control of your Red Reactor enabled Pi system. |
| [Red Reactor MQTT Client for Home Automation](https://github.com/Scally-H/RedReactor/tree/main/RR_MQTT) | This Red Reactor MQTT Client is designed to run as a background application to monitor the battery. |
| [Remote Monitoring Feature for the Red Reactor](https://github.com/Scally-H/RedReactor/tree/main/RR_WebMonitor) | The Red Reactor now provides a remote monitoring feature that enables you to see the status information at a glance from your web-browser. |
| [RR Battery Monitor Background App](https://github.com/Scally-H/RedReactor/tree/main/RR_BatMonitor) | This Red Reactor Battery Monitor Background App is an application designed for systems without a display ('Headless'), or are remotely located, or just need to run largely un-attended. |
| [RS485 CAN HAT For Raspberry Pi](https://github.com/sbcshop/RS485-CAN-HAT) | RS485 CAN HAT is a multi node communication module, to communicate with devices in a long-range, designed dedicatedly for Raspberry Pi with an operating voltage of 3.3 V, CAN controller MCP2515 via SPI interface, onboard transceiver SN65HVD230 that is controlled via UART. It is built to support automatic TX/RX control without programming. It performs half-duplex communication and it has an onboard transceiver SP3485. |

<hr>

## Documentation / Resources 

| Resources |
|----|
| [Arm Developer Resources](https://developer.arm.com/) |
| [Arm Software](https://github.com/ARM-software) |
| [Blues Cellular](https://dev.blues.io/) |
| [Raspberry Pi Takes Star Trek UI To Red Alert](https://www.tomshardware.com/news/raspberry-pi-star-trek-lcars-system) |

| **RISC-V** |
|----|
| [RISC-V — ISA Specifications](https://github.com/riscv) 
| [RISC-V — Non-ISA Specifications](https://github.com/riscv-non-isa) |
| [RISC-V — Software](https://github.com/riscv-software-src) |
| RISC-V — Upstreaming](https://github.com/riscv-collab) |
| [RISC-V — Android](https://github.com/riscv-android-src) |
| [RISC-V — Administrative Docs](https://github.com/riscv-admin) |

| Name	| Description	| Version	| Status[b]	| Instruction count |
|--------|--------------|-----------|------------|----------------------|
|Base|||||
|RVWMO	|Weak Memory Ordering	|2.0	|Ratified	||
|RV32I|	Base Integer Instruction Set 32-bit|	2.1	|Ratified	|40|
|RV32E|	Base Integer Instruction Set (embedded) 32-bit 16 registers|1.9	|Open	40||
|RV64I|	Base Integer Instruction Set 64-bit	|2.1	|Ratified|	15|
|RV128I	|Base Integer Instruction Set 128-bit|	1.7|	Open|	15 Extension|
|M|	Standard Extension for Integer Multiplication and Division|	2.0|	Ratified	| 8 (RV32) 13 (RV64)|
|A	|Standard Extension for Atomic Instructions	|2.1|	Ratified	|11 (RV32) 22 (RV64)|
|F	|Standard Extension for Single-Precision Floating-Point	|2.2	|Ratified|	26 (RV32) 30 (RV64)|
|D|	Standard Extension for Double-Precision Floating-Point	|2.2	|Ratified|	26 (RV32) 32 (RV64)|
|Zicsr	|Control and Status Register (CSR)	|2.0	|Ratified	|6|
|Zifencei	|Instruction-Fetch Fence	|2.0	|Ratified	|1|
|G	|Shorthand for the IMAFDZicsr_Zifencei| base and extensions|—|—|
|Q	|Standard Extension for Quad-Precision Floating-Point	|2.2	|Ratified	|8 (RV32) 32 (RV64)1q Zam|
|L	|Standard Extension for Decimal Floating-Point|	0.0	|Open|-|
|C	|Standard Extension for Compressed Instructions	|2.0	|Ratified	|40|
|B	|Standard Extension for Bit Manipulation	|1.0|	Ratified	|43 \[28\]|
|J	|Standard Extension for Dynamically Translated Languages|	0.0|	Open	|-|
|T	|Standard Extension for Transactional Memory	|0.0	|Open	|-|
|P	|Standard Extension for Packed-SIMD Instructions|	0.9.10|	Open	|-|
|V	|Standard Extension for Vector Operations|	1.0|	Frozen	|187[29]|
|Zk	|Standard Extension for Scalar Cryptography	|1.0.1	|Ratified	|49|
|N	|Standard Extension for User-Level Interrupts	|1.1	|Open	|3|
|H	|Standard Extension for Hypervisor|	1.0	|Ratified	|15|
|S	|Standard Extension for Supervisor-level Instructions|	1.12	|Ratified	|4|
|Zam	|Misaligned Atomics	|0.1	|Open	|-|
|Ztso	|Total Store Ordering|	0.1	|Frozen	|-|
 
### PTP Clock (Precision Time Protocol)

|   |    |
|----|----|
| [Time Appliance Project](https://github.com/opencomputeproject/Time-Appliance-Project) | Time Master is a critical part of a PTP enabled network. It provides accurate time via GNSS while maintaining accuracy in case of GNSS failure via a high stability (and holdover) oscillator such as an atomic clock. Existing products in the market are often closed sourced and are far from having sufficient features. The Time Card project presents an open source solution via a PCIe card. |
| [YouTube PTP](https://youtu.be/tU0xC1ynaT8) ||
| [Open Time Server](https://github.com/opencomputeproject/Time-Appliance-Project/tree/master/Open-Time-Server) ||
| [Time-Appliance-Project](https://github.com/opencomputeproject/Time-Appliance-Project) ||
| [Open Time Server](https://github.com/opencomputeproject/Time-Appliance-Project/tree/master/Open-Time-Server) ||
| [Time Card](https://github.com/opencomputeproject/Time-Appliance-Project/blob/master/Time-Card) ||
| [DC PTP Profile](https://github.com/opencomputeproject/Time-Appliance-Project/blob/master/DC-PTP-Profile) ||
| [Software](https://github.com/opencomputeproject/Time-Appliance-Project/blob/master/Software) ||

## Programming 

| Programming |
|----------|
| [Arm Assembly Programming by Example](https://armasm.com/) |
| [RISC-V Project: Driving Outputs](https://unboxing-tomorrow.com/risc-v-project-driving-outputs/) |

## [SparkFun](https://www.sparkfun.com/)

| Hardware | How-to | GitHub |
|----|---|----|
| [SparkFun MicroMod Input and Display Carrier Board](https://www.sparkfun.com/products/16985) | [SparkFun MicroMod Input and Display Carrier Board Hookup Guide](https://learn.sparkfun.com/tutorials/sparkfun-micromod-input-and-display-carrier-board-hookup-guide/all) | [SparkFun MicroMod Input and Display Carrier Board](https://github.com/sparkfun/MicroMod_Input_and_Display_Carrier) |
| [SparkFun MicroMod nRF52840 Processor](https://www.sparkfun.com/products/16984) | [MicroMod nRF52840 Processor Hookup Guide](https://learn.sparkfun.com/tutorials/micromod-nrf52840-processor-hookup-guide/all) | []() |
| [PiJuice HAT - Raspberry Pi Portable Power Platform](https://www.sparkfun.com/products/14803) | [Software](https://github.com/PiSupply/PiJuice/tree/master/Software) | [PiSupply/PiJuice Public Resources for PiJuice HAT for Raspberry Pi - use your Pi Anywhere](https://github.com/PiSupply/PiJuice) |


<hr>

## Backed Kickstarter Projects

<hr>

## Kickstarter Companies 

| Kickstarter Companies | Description |
|------|-----|
| [Engineering Shock](https://www.engineeringshock.com/) | |
| [SB Components](https://github.com/sbcshop) | SB Components is a UK-based Research and Development company that has been providing embedded, IoT, AI and Robotics based solutions since 2012 |
| [starfive-tech](https://github.com/starfive-tech) ||
