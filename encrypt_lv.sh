#! /bin/bash

while read -r file; do
    mp=$file
    echo "cryptsetup --verbose --verify-passphrase -c aes-cbc-plain luksFormat $mp"
    echo "cryptsetup luksOpen $mp ${file#/dev/volgrp}"
    echo "mkfs.ext4 ${file#/mapper} /dev/mapper/sda2"
    sed 's/dev/media/'

done < <(lvdisplay | grep -o "/dev.*")

