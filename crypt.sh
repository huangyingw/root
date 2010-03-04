#! /bin/bash
cryptsetup --verbose --verify-passphrase -c aes-cbc-plain luksFormat /dev/sda2
