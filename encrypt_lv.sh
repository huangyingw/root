#! /bin/bash

while read -r file; do
    mp=$file
    echo "cryptsetup --verbose --verify-passphrase -c aes-cbc-plain luksFormat $mp"
    echo "cryptsetup luksOpen $mp ${file#/dev/volgrp/}"
    myval=`echo "$file" | sed 's/volgrp/mapper/'`
    echo "mkfs.ext4 $myval"
    echo "cryptsetup luksAddKey $mp /etc/keys/home.key"
done < <(lvdisplay | grep -o "/dev.*")

