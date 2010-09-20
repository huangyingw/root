#!/bin/bash
find "$1" \( -path .git \) -prune -type f -o -name "$2"
#find "$1" -type f -o -name "$2"
