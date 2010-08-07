#!/bin/bash

x=$(dirname "$0")
echo ${x}
x=`echo ${x} | sed -e 's/\/root\///'`
x=/media/smb/${x}
echo ${x}

#if [ ! -d ".git" ];
#then
#	echo not a git repo!!!
#else
#	git clone --bare . /media/smb/
#	git remote rm origin
#	git remote add origin "$2"
#fi

