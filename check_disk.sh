#! /bin/bash
df -Th|grep /media
check_file=/root/disk_list.txt
cat $check_file | while read file ; do
   echo "${file}"
done