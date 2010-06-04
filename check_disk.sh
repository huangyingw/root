#! /bin/bash
check_file=/root/disk_list.txt
result=1
for file in `cat $check_file`
do
		if ! (df -Th|grep -q ${file})
		then   
    	result=0
	 	fi
done
echo ${result}
