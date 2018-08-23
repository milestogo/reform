Quick Start
===========

Reform can be powered either by the internal LiFePo4 battery or by the 5V wall adapter. The wall adapter will automatically charge the battery if present.

For safety reasons, the battery cable is not connected by default. To use the battery, unscrew the bottom lid and plug the white battery cable plug into the battery connector on the motherboard. Then reattach the bottom lid.

To switch the system on, push the power switch (that is located on the front of the device) to the right.

The central processor (CPU) will try to boot from the internal SD card.

You should be greeted by U-Boot and the MNT logo in the upper right corner of the display.

If not interrupted by a keypress, Reform will boot into the Debian GNU/Linux operating system that is preinstalled on the SD card.

The kernel will show diagnostic information as it activates all the devices in the system, and you'll end up at the login prompt if everything is OK.

To log in, enter "root" as the username and "reform" as the password.

From this console environment, you can:

- Format an mSATA SSD drive (if installed) and install an OS to it
- Secure the root account and create standard user accounts
- Try some preinstalled graphical demos
- Inspect or repair the system
