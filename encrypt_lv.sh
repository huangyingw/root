#! /bin/bash

while read -r file; do
    mp="/media${file#/dev}"
    echo "$mp"
    #mkdir -pv "$mp"
done < <(lvdisplay | grep -o "/dev.*")

