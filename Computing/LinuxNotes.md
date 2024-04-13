# Computing — Linux Notes

## Directories

| Directory	| Description | Mountable File System |
|----|----|----|
| / | (root filesystem)	The root filesystem is the top-level directory of the filesystem. It must contain all of the files required to boot the Linux system before other filesystems are mounted. It must include all of the required executables and libraries required to boot the remaining filesystems. After the system is booted, all other filesystems are mounted on standard, well-defined mount points as subdirectories of the root filesystem. | N |
| /bin	| The /bin directory contains user executable files. | N |
| /boot	| Contains the static bootloader and kernel executable and configuration files required to boot a Linux computer. | N |
| /dev	| This directory contains the device files for every hardware device attached to the system. These are not device drivers, rather they are files that represent each device on the computer and facilitate access to those devices. | N |
| /etc |	Contains the local system configuration files for the host computer. | N |
| /home	| Home directory storage for user files. Each user has a subdirectory in /home. | Y |
| /lib |	Contains shared library files that are required to boot the system. | N |
| /media	| A place to mount external removable media devices such as USB thumb drives that may be connected to the host. | Y |
| /mnt	| A temporary mountpoint for regular filesystems (as in not removable media) that can be used while the administrator is repairing or working on a filesystem. | Y |
| /opt |	Optional files such as vendor supplied application programs should be located here. | Y |
| /root	| This is not the root (/) filesystem. It is the home directory for the root user. | N |
| /sbin	| System binary files. These are executables used for system administration. | N |
| /tmp	| Temporary directory. Used by the operating system and many programs to store temporary files. Users may also store files here temporarily. Note that files stored here may be deleted at any time without prior notice. | ?[^11] |
| /usr |	These are shareable, read-only files, including executable binaries and libraries, man files, and other types of documentation. | Y |
| /var	| Variable data files are stored here. This can include things like log files, MySQL, and other database files, web server data files, email inboxes, and much more. | Y |

[^11]: I'm fairly positive that /tmp can be a mountable directory. However, there would be two temp directories,  1) for single user mode and 2) the second /tmp for multi user mode 

## File Systems

| File Systems | Date |
|---|---|
| [OpenZFS 2.2 Released with Linux 6.5 Support, Block Cloning, and More - 9to5Linux](https://9to5linux.com/openzfs-2-2-released-with-linux-6-5-support-block-cloning-and-more ) |

## Linux Source 

| Linux Source | Adaptation |
|---|---|
| [torvalds/linux: Linux kernel source tree](https://github.com/torvalds/linux ) | Torvalds Source Tree |
| [NVIDIA/open-gpu-kernel-modules: NVIDIA Linux open GPU kernel module source](https://github.com/NVIDIA/open-gpu-kernel-modules ) | NVIDIA GPU Kernel Modules |
| [raspberrypi/linux: Kernel source tree for Raspberry Pi-provided kernel builds. Issues unrelated to the linux kernel should be posted on the community forum at https://forums.raspberrypi.com/](https://github.co/raspberrypi/linux ) | Raspberry Pi Linux |
| [starfive-tech/linux](https://github.com/starfive-tech/linux ) | StarFiveTech VisionFive2 |

## Linux Documentation 

| Linux Documentation |
|---|
| [The Linux Kernel documentation — The Linux Kernel documentation](https://www.kernel.org/doc/html/latest/ ) |
|[Filesystems in the Linux kernel — The Linux Kernel documentation](https://www.kernel.org/doc/html/latest/filesystems/index.html ) |

## Linux Articles

| Linux Articles | Date |
|---|---|
| [CBL-Mariner: Azure Linux Distribution Now Generally Available](https://www.infoq.com/news/2023/06/azure-linux-cbl-mariner/ ) |
| [5 best Linux distributions in 2023](https://www.xda-developers.com/best-linux-distros/ ) |
| [Linux containers guide: An introduction to containers](https://www.xda-developers.com/linux-containers-guide/ ) |
| **[Btrfs Slated To Make Use Of New Mount API In Linux 6.8 - Phoronix](https://www.phoronix.com/news/Btrfs-New-Mount-API-Linux-6.8 )** |
| **[Facebook's BOLT Is An Effort To Speed-Up Linux Binaries - Phoronix](https://www.phoronix.com/news/Facebook-BOLT-Optimize-Binaries )** |
| **[LLVM / Clang 14.0 Prepared For Release With With Armv9, BOLT, More C++20 & C23 - Phoronix](https://www.phoronix.com/news/LLVM-14.0-Released )** |
| [How Container Networking Works - Building a Linux Bridge Network From Scratch](https://labs.iximiuz.com/tutorials/container-networking-from-scratch ) |

## Linux History, Trivia 

| Linux History/Trivia | Date |
|---|---|
|[Is this the world's oldest Linux peripheral?](https://youtube.com/watch?v=35N5vKKGDy8&feature=share )|
