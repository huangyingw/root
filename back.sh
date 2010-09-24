#! /bin/bash
check_bool=`./check_disk.sh`

if [ ${check_bool} -eq 1 ];   
then
	source=/media/volgrp/
	target=/media/bak_volgrp/
	./rsync.sh	"${source}" "${target}"
	
	source=/media/archive1/
	target=/media/bak_archive1/
	./rsync.sh	"${source}" "${target}"
	
	source=/media/archive2/
	target=/media/bak_archive2/
	./rsync.sh	"${source}" "${target}"
	
	if [ "$1" != s ];
	then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi

