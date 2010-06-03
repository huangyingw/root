#! /bin/bash
check_file=/root/disk_list.txt
cat $check_file | while read file ; do
   df -Th|grep ${file}
done