#! /bin/bash
check_bool=`./check_disk.sh`

if [ ${check_bool} -eq 1 ];   
then
  echo > rlog
  /root/myproject/git/linux/bashrc/mirror.sh /media/volgrp/myproject/ /media/750G/myproject/
  /root/myproject/git/linux/bashrc/mirror.sh /media/volgrp/cartoon/ /media/750G/cartoon/
  /root/myproject/git/linux/bashrc/mirror.sh /media/volgrp/movie/ /media/750G/movie
  /root/myproject/git/linux/bashrc/mirror.sh /media/volgrp/storage/ /media/750G/storage
  /root/myproject/git/linux/bashrc/mirror.sh "/media/volgrp/av/Erika Sato 佐藤江梨花/" "/media/750G/av/Erika Sato 佐藤江梨花/"
  /root/myproject/git/linux/bashrc/mirror.sh "/media/volgrp/av/Sakura Kiryu 桐生/" "/media/750G/av/Sakura Kiryu 桐生/"
  /root/myproject/git/linux/bashrc/mirror.sh "/media/volgrp/av/Yuna Takizawa 滝沢優奈/" "/media/750G/av/Yuna Takizawa 滝沢優奈/"

  if [ "$1" != s ];
  then
    shutdown -h now
  fi
else
  echo the disks not ready!!!
fi
