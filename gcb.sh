#!/bin/bash
git clone --bare "$1" "$2" && git remote add origin "$2"