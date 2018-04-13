#!/bin/bash

## install vbox guest additions
yum update -y
yum install dkms gcc make kernel-devel bzip2 binutils patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel-$(uname -r) -y

ISO=$(ls ~/*.iso)
mount -o loop $ISO /mnt
cd /mnt
./VBoxLinuxAdditions.run

## custom commands should be placed below
