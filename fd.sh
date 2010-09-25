#!/bin/bash
find "$1" \( -name \.svn -o -name \.git -o -name \.hg \) -prune -type d -o -name "$2" -print
