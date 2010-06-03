#! /bin/bash
check_file=/root/disk_list.txt
result=1
cat $check_file | while read file ; do
   #string=`df -Th|grep ${file}`
   #echo ${string}
		#if [ -e ${string} ]
		if [ df -Th|grep ${file} ]
		then   
    	result=0
	 	fi
done
echo ${result}

#(grep -c SOME_STRING $PATH/$LOGFILE) -ne 0