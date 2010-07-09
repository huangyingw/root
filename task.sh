#! /bin/bash
check_bool=`./check_disk.sh`

if [ ${check_bool} -eq 1 ];   
then
	echo > rlog
	./move.sh	
	./move.sh	/media/volgrp/unsafe/move/ /media/archive1/av_archive/
	./back.sh s
	if [ "$1" != s ];
		then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi
