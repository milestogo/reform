#!/bin/bash

dd if=bin/firmware.bin of="/media/mntmn/CRP DISABLD/firmware.bin" conv=nocreat,notrunc
sync
umount "/media/mntmn/CRP DISABLD"

