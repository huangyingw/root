#! /bin/bash

while read -r file; do
    mp=$file
    echo "cryptsetup --verbose --verify-passphrase -c aes-cbc-plain luksFormat $mp"
    echo "cryptsetup luksOpen $mp ${file#/dev/volgrp}"
done < <(lvdisplay | grep -o "/dev.*")

