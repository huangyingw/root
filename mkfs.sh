#! /bin/bash
mkfs.ext4 /dev/mapper/av
mkfs.ext4 /dev/mapper/software
mkfs.ext4 /dev/mapper/vmware
mkfs.ext4 /dev/mapper/xgmm
mkfs.ext4 /dev/mapper/cartoon
mkfs.ext4 /dev/mapper/movie
mkfs.ext4 /dev/mapper/myproject
mkfs.ext4 /dev/mapper/storage
mkfs.ext4 /dev/mapper/unsafe

dd if=/dev/random of=/etc/keys/home.key bs=32 count=1

