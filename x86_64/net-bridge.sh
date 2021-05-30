#!/bin/bash

# enp0s3 enp0s8 br0 tap0

sysctl -w net.ipv4.ip_forward=1

ifconfig enp0s8 down
brctl addbr br0
brctl addif br0 enp0s8
brctl stp br0 off
brctl setfd br0 1
brctl sethello br0 1
ifconfig br0 0.0.0.0 promisc up
ifconfig enp0s8 0.0.0.0 promisc up

tunctl -t tap0 -u hsfeng
ip link set dev tap0 down
brctl addif br0 tap0
ifconfig tap0 0.0.0.0 promisc up


#1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
#    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
#    inet 127.0.0.1/8 scope host lo
#       valid_lft forever preferred_lft forever
#    inet6 ::1/128 scope host 
#       valid_lft forever preferred_lft forever
#2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
#    link/ether 08:00:27:06:c3:ec brd ff:ff:ff:ff:ff:ff
#    inet 192.168.9.115/24 brd 192.168.9.255 scope global dynamic noprefixroute enp0s3
#       valid_lft 6111sec preferred_lft 6111sec
#    inet 192.168.9.112/24 brd 192.168.9.255 scope global secondary noprefixroute enp0s3
#       valid_lft forever preferred_lft forever
#    inet6 fe80::aa8:7bf2:99b:fcf2/64 scope link noprefixroute 
#       valid_lft forever preferred_lft forever
#3: enp0s8: <BROADCAST,MULTICAST,PROMISC,UP,LOWER_UP> mtu 1500 qdisc fq_codel master br0 state UP group default qlen 1000
#    link/ether 08:00:27:08:4b:8c brd ff:ff:ff:ff:ff:ff
#    inet 192.168.9.112/24 brd 192.168.9.255 scope global noprefixroute enp0s8
#       valid_lft forever preferred_lft forever
#4: br0: <BROADCAST,MULTICAST,PROMISC,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
#    link/ether 08:00:27:08:4b:8c brd ff:ff:ff:ff:ff:ff
#    inet 192.168.9.112/24 brd 192.168.9.255 scope global noprefixroute br0
#       valid_lft forever preferred_lft forever
#    inet6 fe80::5c79:b0f1:69eb:54d8/64 scope link 
#       valid_lft forever preferred_lft forever
#7: tap0: <BROADCAST,MULTICAST,PROMISC,UP,LOWER_UP> mtu 1500 qdisc fq_codel master br0 state UP group default qlen 1000
#    link/ether 32:dd:5a:23:1f:73 brd ff:ff:ff:ff:ff:ff
#    inet 169.254.141.46/16 brd 169.254.255.255 scope global noprefixroute tap0
#       valid_lft forever preferred_lft forever
#    inet6 fe80::b36d:6926:8227:8b21/64 scope link 
#       valid_lft forever preferred_lft forever
