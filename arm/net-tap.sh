#!/bin/bash

tunctl -u hsfeng -t tap0
ip link set dev tap0 up
ip addr add 192.168.0.1/24 dev tap0

systemctl restart isc-dhcp-server

sysctl -w net.ipv4.ip_forward=1

iptables -t nat -A POSTROUTING -o enp0s3 -s 192.168.0.0/24 -j MASQUERADE
