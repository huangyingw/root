#! /bin/bash
./move.sh /media/archive1/vmware_archive/ /media/archive2/vmware_archive/
./back.sh s
if [ "$1" != s ];
	then
		shutdown -h now
fi