#!/bin/bash

sysctl -w net.ipv4.ip_forward=1

ip link add name br0 type bridge
ip link set dev enp0s8 master br0
ip link set dev br0 up promisc on
ip link set dev enp0s8 up promisc on

ip tuntap add dev tap0 mode tap user hsfeng 
ip link set dev tap0 master br0
ip link set dev tap0 up promisc on

dhclient 
# dhcpcd
