#!/bin/bash
find "$1" \( -path .svn \) -prune -o -name *.[c,cc,h,sh,py] -exec grep -wnH "$2" {} \;
