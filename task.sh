#! /bin/bash
check_bool=`./check_disk.sh`

if [ ${check_bool} -eq 1 ];   
then
	echo > rlog
	./move.sh /media/archive1/ /media/volgrp/
	./move.sh /media/bak_archive2/ /media/volgrp/
	if [ "$1" != s ];
		then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi
