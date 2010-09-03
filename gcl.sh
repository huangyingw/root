#!/bin/bash

if [ -z "$1" ];
then
	echo "Please provide parameter"
else
	x=`echo $1 | sed -e 's/\/root\///;s/media\/smb/root/'`
	#x=/root/${x}
	echo ${x}
fi



#if [ ! -d ".git" ];
#then
#	echo not a git repo!!!
#else
#	if [ -d ${x} ];
#	then
#		echo remote exist!!!
#	else
#		git clone --bare . ${x}
#		git remote rm origin
#		git remote add origin ${x}
#	fi
#fi
#