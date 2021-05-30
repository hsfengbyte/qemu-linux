#!/bin/bash

make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabihf- vexpress_defconfig
make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabihf- menuconfig
make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabihf-



