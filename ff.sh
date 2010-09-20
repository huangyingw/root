#!/bin/bash
find "$1" \( -name \.git -o -name \.svn -o -name \.hg \) -prune -type f -o -name "$2"
