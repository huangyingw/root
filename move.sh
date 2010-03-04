#!/bin/bash
RSYNCSOURCE=$1
RSYNCTARGET=$2

if [ -d "${RSYNCTARGET}" ];   
then   
    echo dir exists
    exit
else   
 		rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${RSYNCSOURCE}" "${RSYNCTARGET}" \
		&& rm -frv "${RSYNCSOURCE}"
fi
