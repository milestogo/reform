# MNT Reform

This is the main repository for the MNT Reform DIY Open Source Portable Computer.

## How to Report Issues / Contribute

There are several Git repositories that make up Reform. Here is a list of topics to help you decide on which repository to report your problem or contribute code:

### reform (this one)

* Mechanical parts (case, keyboard, trackball, display, battery, power supply)
* Electronics
* Firmware
* [Issue reports go here](https://source.mntmn.com/MNT/reform/issues)

### reform-system-image

* Kernel (missing drivers...)
* U-Boot (early startup, booting)
* Setup script, date/time, keyboard layout
* Default configuration (networking, Xorg, users, passwords...)
* SD Card shipped with the device
* [Issue reports go here](https://source.mntmn.com/MNT/reform-system-image/issues)

### reform-userland

* Graphics/OpenGL libraries (mesa/etnaviv, drm, Xorg, wayland...)
* If you have an application or game that doesn't work due to GL problems (check the [Wiki](https://source.mntmn.com/MNT/reform/wiki) first)
* [Issue reports go here](https://source.mntmn.com/MNT/reform-userland/issues)

### Tested Software / Peripherals

Please check out and contribute to the appropriate pages in the [Reform Wiki](https://source.mntmn.com/MNT/reform/wiki).

## Impressions

![Reform 0.3 Laptop Prototype](pics/reform03-laptop.jpg)
![Reform 0.4 Motherboard PCB](pics/reform04-motherboardpcb.png)
![Reform 0.4 Keyboard PCB](pics/reform04-kbdpcb.png)

## More Information

[Reform Wiki](https://source.mntmn.com/MNT/reform/wiki)
[Reform Website](https://mntmn.com/reform/)
[Reform Assembly Pictures](https://mntmn.com/media/reform_assembly_images.html)

## Parts List

* [Reform Parts](spreadsheets/production_status.csv)
* [Motherboard BOM](spreadsheets/motherboard_bom.csv)

## Getting Started

It is not recommended that you do anything with these files yet, and wait until the project has reached beta state.

* More details: http://mntmn.com/reform/
* 5-minute lightning talk at 34c3: https://media.ccc.de/v/34c3-9257-lightning_talks_day_3#t=3512

## Made With

* [KiCAD EDA](http://kicad-pcb.org/)
* Solidworks
* OpenSCAD
* LUFA
* Arduino Tiny Core

## Authors

* **Lukas F. Hartmann (mntmn)** - *Schematics, PCB*
* **Ana Dantas** - *Industrial Design*

## License

Copyright 2018 Lukas F. Hartmann & Ana Beatriz Albertini Dantas.

This project is licensed under the GPLv3 License - see the [LICENSE.md](LICENSE.md) file for details
