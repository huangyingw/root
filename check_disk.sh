#! /bin/bash
check_file=/root/disk_list.txt
result=1
cat $check_file | while read file ; do
		if [ df -Th|grep ${file} ]
		then   
    	result=0
	 	fi
done
echo ${result}
