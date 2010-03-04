#! /bin/bash

lv_file= /root/lv.txt
lvdisplay | grep -o "/dev.*" > $lv_file

cat $lv_file | while read file ; do
	myval=`echo "$file" | sed 's/dev/media/'`
	echo $myval
	#mkdir -p 'echo "$file" | sed 's/dev/media/''
done