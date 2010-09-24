#! /bin/bash

while read -r file; do
    mp=$file
    #umount $mp
    cryptsetup --verbose --verify-passphrase -c aes-cbc-plain luksFormat $mp
    cryptsetup luksOpen $mp ${file#/dev/volgrp/}
    myval=`echo "$file" | sed 's/volgrp/mapper/'`
    mkfs.ext4 $myval
    cryptsetup luksAddKey $mp /etc/keys/home.key
done < <(lvdisplay | grep -o "/dev.*")

