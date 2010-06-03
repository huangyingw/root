#! /bin/bash
check_file=/root/disk_list.txt
cat $check_file | while read file ; do
   string=`df -Th|grep ${file}`
   echo ${string}
done