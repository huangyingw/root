#! /bin/bash
check_bool=`./check_disk.sh`

if [ ${check_bool} -eq 1 ];   
then
	echo > rlog
	myproject/git/linux/bashrc/qrsync.sh /media/volgrp/myproject/ /media/160G/myproject/
	if [ "$1" != s ];
		then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi
