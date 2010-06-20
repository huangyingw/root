#!/bin/bash
if [ ! -d "$2" ];
then
    git clone --bare "$1" "$2"
fi

git remote rm origin
git remote add origin "$2"
