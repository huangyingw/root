#! /bin/bash
check_file=/root/disk_list.txt
result=1
cat $check_file | while read file ; do
   string=`df -Th|grep ${file}`
   #echo ${string}
		if [ -z string ]
		then   
    	result=0
	 	fi
done
echo ${result}

