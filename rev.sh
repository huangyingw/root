#! /bin/bash
function check_disk
{
	check_file=/root/disk_list.txt
	result=1
	for file in `cat $check_file`
	do
		if ! (df -Th|grep -q ${file})
		then   
    	result=0
    	echo ${file}>> check_disk.log
	 	fi
	done
	echo ${result}
}
check_bool=`check_disk`

if [ ${check_bool} -eq 1 ];   
then

	source=/media/back2/av/
	target=/media/volgrp/av/
	
	rsync -av --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/back1/software/
	target=/media/volgrp/software/
	
	rsync -av --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/back2/unsafe/
	target=/media/volgrp/unsafe/
	
	rsync -av --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/archive3/xgmm/
	target=/media/volgrp/xgmm/
	
	rsync -av --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/back2/cartoon/
	target=/media/volgrp/cartoon/
	
	rsync -av --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/archive1/movie/
	target=/media/volgrp/movie/
	
	rsync -av --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/volgrp/myproject/
	target=/media/back2/myproject/
	
	rsync -av --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/volgrp/myproject/
	target=/media/archive3/myproject/
	
	rsync -av --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/back1/storage/
	target=/media/volgrp/storage/
	
	rsync -av --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/archive2/vmware/
	target=/media/volgrp/vmware/
	
	rsync -av --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	if [ "$1" != s ];
	then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi

