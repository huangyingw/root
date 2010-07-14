#!/bin/bash
git clone --bare "$1" "$2"
rm -frv "$1"
mv -fv "$2" "$1"
