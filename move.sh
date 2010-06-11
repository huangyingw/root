#!/bin/bash
SOURCE=$1
TARGET=$2

if [ ! -d "${TARGET}" ];
then   
    mkdir -p "${TARGET}"
fi

rsync -av --log-file=/root/rlog --recursive -h --times --links --hard-links \
	--stats --progress \
	"${SOURCE}" "${TARGET}" \
&& rsync -av --log-file=/root/rlog --recursive -h --times --links --hard-links \
	--stats --progress \
	"${SOURCE}" "${TARGET}" \
&& rm -frv "${SOURCE}"
