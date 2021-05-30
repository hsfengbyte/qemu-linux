#!/bin/bash

#qemu-system-x86_64 -smp 4 -m 4096 -kernel linux/arch/x86_64/boot/bzImage -append "root=/dev/sda rw" -drive format=raw,file=ubuntu.ext4 -net nic -net user

# qemu-system-x86_64 -smp 1 -m 512 -kernel linux/arch/x86_64/boot/bzImage -append "root=/dev/sda rw" -drive format=raw,file=ubuntu.ext4 -net nic -net user --enable-kvm

qemu-system-x86_64 -smp 4 -m 4096 -kernel linux/arch/x86_64/boot/bzImage -append "root=/dev/sda rw" -drive format=raw,file=ubuntu.ext4 -net nic -net tap,ifname=tap0

#qemu-system-x86_64 -smp 4 -m 4096 -kernel linux/arch/x86_64/boot/bzImage -append "root=/dev/sda rw" -drive format=raw,file=ubuntu.ext4 -vga virtio -display gtk,gl=on -net nic -net tap,ifname=tap0

#qemu-system-x86_64 -smp 4 -m 4096 -kernel linux/arch/x86_64/boot/bzImage -append "root=/dev/sda rw" -drive format=raw,file=ubuntu.ext4 -vga cirrus -net nic -net tap,ifname=tap0

# qemu-system-x86_64 -smp 4 -m 4096 -kernel linux/arch/x86_64/boot/bzImage -append "root=/dev/sda rw" -drive format=raw,file=ubuntu.ext4 -net nic -net tap,ifname=tap0 --enable-kvm

