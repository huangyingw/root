#! /bin/bash
check_bool=`./check_disk.sh`

if [ ${check_bool} -eq 1 ];   
then
	source=/media/volgrp/
	target=/media/volgrp_bak/
	
	./rsync.sh	"${source}" "${target}"
	
	if [ "$1" != s ];
	then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi

