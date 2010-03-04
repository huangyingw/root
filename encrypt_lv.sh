#! /bin/bash

while read -r file; do
    mp=$file
    echo "$mp"
done < <(lvdisplay | grep -o "/dev.*")

