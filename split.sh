#! /bin/bash
check_bool=`./check_disk.sh`

if [ ${check_bool} -eq 1 ];   
then
	./back.sh s
	./move.sh /media/archive2_bak/vmware_archive/ /media/archive2/vmware_archive/
	if [ "$1" != s ];
		then
			shutdown -h now
	fi
else
 	echo the disks not ready!!!
fi
