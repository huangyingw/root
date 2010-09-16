#!/bin/bash
find "$1" \( -path .svn \) -prune -type d -o -name "$2"
