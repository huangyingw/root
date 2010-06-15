#! /bin/bash
./rsync.sh /media/archive1/vmware_archive/ /media/archive2/vmware_archive/
if [ "$1" != s ];
	then
		shutdown -h now
fi