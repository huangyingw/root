#! /bin/bash
RSYNCSOURCE=rsync://mirrors.sohu.com/ubuntu/
#RSYNCSOURCE=rsync://debian.nctu.edu.tw/ubuntu/
#RSYNCSOURCE=rsync://ubuntu.dormforce.net/ubuntu/
#RSYNCSOURCE=rsync://mirror.anl.gov/ubuntu/

BASEDIR=/media/volgrp/UbuntuMirror/


if  ['ps ax | grep -q rsync']
then   
	echo rsync is running
else
	rsync -ahHv --log-file=/root/rlog --delete-after \
	--exclude "dapper*" --exclude "hardy*" --exclude "intrepid*" --exclude "jaunty*" --exclude "maverick*"\
	${RSYNCSOURCE} ${BASEDIR}
fi
