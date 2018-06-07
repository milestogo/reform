Boot The System
===============

Powering Up
-----------

When the power switch is turned on, the TinyRex circuit receives power. If it is happy with the applied voltages, the green LED on the TinyRex module will light up. If only the red LED lights up, there is a problem with the power supply.

Next, the i.MX6 chip will jump to internal boot ROM code at memory address _0x00000000_. The boot ROM looks for an SD card on SD card port SD1 and reads the DCD (Device Configuration Data) table from physical address 0x400 on the SD card. Normally, a bootloader such as U-Boot includes this DCD.

We recommend to use the U-Boot bootloader. It will be installed onto the SD card and brings its own DCD block that configures the DDR memory parameters and clocks.

U-Boot
------

U-Boot is a mini operating system and shell that allows you to inspect parts of the system (like PCIe, USB devices and Harddisks) and set up parameters to be passed to a "big" operating system kernel such as Linux, and start such an operating system.
