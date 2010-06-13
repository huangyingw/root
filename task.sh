#! /bin/bash
./move.sh /media/archive3/movie/ /media/archive2/movie
./move.sh /media/archive3/vmware/ /media/archive2/vmware
./move.sh /media/archive3/xgmm/ /media/archive2/xgmm
./move.sh /media/archive3/myproject/ /media/archive2/myproject

if [ "$1" != s ];
	then
			shutdown -h now
fi