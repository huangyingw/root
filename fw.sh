#!/bin/bash
#find "$1" \( -name \.svn -o -name \.git -o -name \.hg \) -prune -o -name *.[c,cc,h] -o -name makefile -exec grep -wnH "$2" {} \;
find "$1" \( -name \.svn -o -name \.git -o -name \.hg \) -prune -o \( -name \*\.c -o -name \*\.cc -o -name \*\.h -o -name [m,M]akefile \) -exec grep -wnH "$2" {} \;
