#!/bin/bash
git clone --bare "$1" "$1".bak
rm -frv "$1"
mv "$1".bak "$1"
