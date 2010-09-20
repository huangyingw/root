#!/bin/bash
find "$1" \( -name \.svn -o -name \.git -o -name \.hg \) -prune -type f -o -name "$2"
