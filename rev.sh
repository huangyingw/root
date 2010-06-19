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
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/back1/software/
	target=/media/volgrp/software/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/back2/unsafe/
	target=/media/volgrp/unsafe/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/archive3/xgmm/
	target=/media/volgrp/xgmm/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/back2/cartoon/
	target=/media/volgrp/cartoon/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/archive1/movie/
	target=/media/volgrp/movie/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/back2/myproject/
	target=/media/volgrp/myproject/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/back1/storage/
	target=/media/volgrp/storage/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	source=/media/archive2/vmware/
	target=/media/volgrp/vmware/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				"${source}" "${target}"
	
	if [ "$1" != s ];
	then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi

