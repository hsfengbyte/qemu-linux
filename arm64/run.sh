#!/bin/bash

qemu-system-aarch64 -machine virt -cpu cortex-a53 -m 1024M -kernel linux/arch/arm64/boot/Image -append "root=/dev/vda rw" -hda ubuntu-arm64.ext4 -net nic -net user

# qemu-system-aarch64 -machine virt -cpu cortex-a53 -m 1024M -kernel linux/arch/arm64/boot/Image -append "root=/dev/vda rw console=ttyAMA0" -hda ubuntu-arm64.ext4 -net nic -net user

# qemu-system-aarch64 -machine virt -cpu cortex-a53 -m 1024M -kernel linux/arch/arm64/boot/Image -nographic -append "root=/dev/vda rw console=ttyAMA0" -hda ubuntu-arm64.ext4 -net nic -net user

# qemu-system-aarch64 -machine virt -cpu cortex-a53 -m 1024M -kernel linux/arch/arm64/boot/Image -append "root=/dev/vda rw console=ttyAMA0" -hda ubuntu-arm64.ext4 -net nic -net tap,ifname=tap0






