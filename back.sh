#! /bin/bash
check_bool=`./check_disk.sh`

if [ ${check_bool} -eq 1 ];   
then
	source=/media/volgrp/
	target=/media/volgrp_bak/
	./rsync.sh	"${source}" "${target}"
	
	source=/media/volgrp/myproject/
	target=/media/archive1/myproject/
	./rsync.sh	"${source}" "${target}"
	
	source=/media/archive1/
	target=/media/archive1_bak/
	./rsync.sh	"${source}" "${target}"
	
	source=/media/volgrp/myproject/
	target=/media/archive2/myproject/
	./rsync.sh	"${source}" "${target}"
	
	source=/media/archive2/
	target=/media/archive2_bak/
	./rsync.sh	"${source}" "${target}"
	
	if [ "$1" != s ];
	then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi

