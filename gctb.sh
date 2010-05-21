#!/bin/bash
git clone --bare "$1" "$2"
rm -frv "$1"
mv "$2" "$1"
