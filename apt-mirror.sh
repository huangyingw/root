#! /bin/bash
RSYNCSOURCE=rsync://mirrors.sohu.com/ubuntu/
#RSYNCSOURCE=rsync://debian.nctu.edu.tw/ubuntu/
#RSYNCSOURCE=rsync://ubuntu.dormforce.net/ubuntu/
#RSYNCSOURCE=rsync://mirror.anl.gov/ubuntu/

BASEDIR=/media/volgrp/UbuntuMirror/

rsync -av --log-file=/root/rlog --recursive -h --times --links --hard-links \
			--delete --delete-after \
      --exclude "Sources*" \
      --exclude "dapper*" --exclude "hardy*" --exclude "intrepid*" --exclude "jaunty*" --exclude "maverick*"\
      ${RSYNCSOURCE} ${BASEDIR}
