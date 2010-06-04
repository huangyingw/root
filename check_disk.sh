#! /bin/bash
check_file=/root/disk_list.txt
result=1
cat $check_file | while read file ; do
		if ! (df -Th|grep -q ${file})
		then   
			echo hehe
    	result=0
    	echo ${result}
	 	fi
done
echo ${result}
