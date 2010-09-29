#!/bin/bash
find "$1" \( -name \.svn -o -name \.git -o -name \.hg \) -prune -o \( -name \*\.c -o -name \*\.cc -o -name \*\.h -o -name \*\.sh -o -name [m,M]akefile \) -exec grep -wnHA2 -B2 "$2" {} \;
