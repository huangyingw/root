#!/bin/bash

if [ -z "$1" ];
then
	echo "Please provide parameter"
else
	x=`echo $1 | sed -e 's/media\/smb/root/'`
	echo ${x}
fi



if [ -d ${x} ];
then
	echo local repository exist!!!
else
	echo do nothing
	#git clone --bare . ${x}
	#git remote rm origin
	#git remote add origin ${x}
fi
