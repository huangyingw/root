#!/bin/bash
if [ ! -d "temp" ];
then
	echo begin to do work!!!
	if [ ! -d "$1/.git" ];
	then
		echo begin git init!!!
		#cd "$1"
		#git init
		#git add .
		#git commit -am "n"
    #git clone --bare "$1" "$2"
		#rm -frv "$1"
		#mv -fv "$2" "$1"
	else
 		echo git exist!!!
	fi
else
 	echo the disks not ready!!!
fi
