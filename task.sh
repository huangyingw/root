#! /bin/bash
check_bool=`./check_disk.sh`

if [ ${check_bool} -eq 1 ];   
then
	./back.sh s
	./move.sh /media/volgrp/av/move/ /media/archive1/av_archive/
	if [ "$1" != s ];
		then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi
