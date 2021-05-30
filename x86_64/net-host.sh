#!/bin/bash

tunctl -u hsfeng -t tap0
#brctl addbr br0

ip link set dev tap0 up 
#ip link set dev br0 up

ip addr add 192.168.0.1/24 dev tap0
#ip addr add 192.168.0.2/24 dev br0

