#!/bin/bash
find "$1" \( -path .svn \) -prune -type f -o -name "$2"
