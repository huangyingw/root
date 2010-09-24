#!/bin/bash
if  (mdadm -D -q /dev/md0 |grep -q "removed")
then   
	echo dangerous
fi
