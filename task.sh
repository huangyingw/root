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
	./rev.sh s
	if [ "$1" != s ];
		then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi
