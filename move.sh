#!/bin/bash
RSYNCSOURCE=$1
RSYNCTARGET=$2

if [ ! -d "${TARGET}" ];
then   
    mkdir -p "${TARGET}"
fi

rsync -av --recursive -h --times --links --hard-links \
	--stats --progress \
	"${RSYNCSOURCE}" "${RSYNCTARGET}" \
&& rsync -av --recursive -h --times --links --hard-links \
	--stats --progress \
	"${RSYNCSOURCE}" "${RSYNCTARGET}" \
&& rm -frv "${RSYNCSOURCE}"