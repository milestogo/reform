#!/bin/bash

dd if=bin/firmware.bin of="/mnt/firmware.bin" conv=nocreat,notrunc
sync
umount "/mnt"

