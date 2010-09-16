#!/bin/bash
find "$1" \( -path .svn \) -prune -o -name *.[c,cc,h] -exec grep -wnH "$2" {} \;
