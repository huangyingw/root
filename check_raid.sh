#!/bin/bash
if  (mdadm -D /dev/md0 |grep -q "active sync")
then   
	echo dangerous
fi
