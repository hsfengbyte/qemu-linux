#!/bin/bash

#qemu-system-arm -M vexpress-a9 -m 512M -kernel linux/arch/arm/boot/zImage -dtb linux/arch/arm/boot/dts/vexpress-v2p-ca9.dtb -append "root=/dev/mmcblk0 rw console=ttyAMA0" -sd ubuntu-arm.ext4 -net nic -net user

# qemu-system-arm -M vexpress-a9 -m 512M -kernel linux/arch/arm/boot/zImage -dtb linux/arch/arm/boot/dts/vexpress-v2p-ca9.dtb -nographic -append "root=/dev/mmcblk0 rw console=ttyAMA0" -sd ubuntu-arm.ext4 -net nic -net user

qemu-system-arm -M vexpress-a9 -m 512M -kernel linux/arch/arm/boot/zImage -dtb linux/arch/arm/boot/dts/vexpress-v2p-ca9.dtb -append "root=/dev/mmcblk0 rw console=ttyAMA0" -sd ubuntu-arm.ext4 -net nic -net tap,ifname=tap0

# qemu-system-arm -M vexpress-a9 -m 512M -kernel linux/arch/arm/boot/zImage -dtb linux/arch/arm/boot/dts/vexpress-v2p-ca9.dtb -nographic -append "root=/dev/mmcblk0 rw console=ttyAMA0" -sd ubuntu-arm.ext4 -net nic -net tap,ifname=tap0






