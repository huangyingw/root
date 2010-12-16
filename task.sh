#! /bin/bash
check_bool=`./check_disk.sh`

if [ ${check_bool} -eq 1 ];   
then
  echo > rlog
  /root/myproject/git/linux/bashrc/mirror.sh /media/volgrp/myproject/ /media/750G/myproject/
  /root/myproject/git/linux/bashrc/mirror.sh /media/volgrp/cartoon/ /media/750G/cartoon/
  /root/myproject/git/linux/bashrc/mirror.sh /media/volgrp/movie/ /media/750G/movie
  /root/myproject/git/linux/bashrc/mirror.sh /media/volgrp/storage/ /media/750G/storage
  if [ "$1" != s ];
  then
    shutdown -h now
  fi
else
  echo the disks not ready!!!
fi
