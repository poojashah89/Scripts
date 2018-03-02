#!/bin/bash
#Step #1 : Partition the new disk using fdisk command
(echo n; echo p; echo 1; echo ; echo ; echo w) | fdisk $1
#Step#2 : Format the new disk using mkfs.ext3 command
(echo y) | mkfs.ext3 $1
#Step#3 : Mount the new disk using mount command
mkdir $2
mount $1 $2
# edit /etc/fstab
echo $1 "             " + $2 + "           ext3    defaults        1 2" >> /etc/fstab                                                                          
