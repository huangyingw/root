#! /bin/bash
echo $$ > /tmp/program.lock

RSYNCSOURCE=rsync://mirrors.sohu.com/ubuntu/
#RSYNCSOURCE=rsync://debian.nctu.edu.tw/ubuntu/
#RSYNCSOURCE=rsync://ubuntu.dormforce.net/ubuntu/
#RSYNCSOURCE=rsync://mirror.anl.gov/ubuntu/

BASEDIR=/media/volgrp/UbuntuMirror/

if [ -f /tmp/program.lock ] ; then
  # the lock file already exists, so what to do?
  if [ "$(ps -p `cat /tmp/program.lock` | wc -l)" -gt 1 ]; then
	    # process is still running
	    echo "$0: quit at start: lingering process `cat /tmp/program.lock`"
	    exit 0
  else
		  # process not running, but lock file not deleted?
		  echo " $0: orphan lock file warning. Lock file deleted."
		  rm /tmp/program.lock
      rsync -ahHv --log-file=/root/rlog --delete-after \
        --exclude "dapper*" --exclude "hardy*" --exclude "intrepid*" --exclude "jaunty*" --exclude "maverick*"\
      ${RSYNCSOURCE} ${BASEDIR}
  fi
fi

rm /tmp/program.lock
