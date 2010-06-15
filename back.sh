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
	source=/media/volgrp/av/
	target=/media/back2/av/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
	
	source=/media/volgrp/software/
	target=/media/back1/software/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
	
	source=/media/volgrp/software/
	target=/media/archive3/software/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
				
	source=/media/volgrp/unsafe/
	target=/media/back2/unsafe/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
	
	source=/media/volgrp/xgmm/
	target=/media/archive3/xgmm/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
	
	source=/media/volgrp/cartoon/
	target=/media/back2/cartoon/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
	
	source=/media/volgrp/cartoon/
	target=/media/archive1/cartoon/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
				
	source=/media/volgrp/movie/
	target=/media/archive1/movie/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
	
	source=/media/volgrp/myproject/
	target=/media/back2/myproject/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
				
	source=/media/volgrp/myproject/
	target=/media/archive3/myproject/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
	
	source=/media/volgrp/storage/
	target=/media/back1/storage/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
				
	source=/media/volgrp/vmware/
	target=/media/archive2/vmware/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
	
	source=/media/volgrp/vmware/
	target=/media/archive1/vmware/
	
	rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
				--stats --progress \
				"${source}" "${target}"
	
	if [ "$1" != s ];
	then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi

