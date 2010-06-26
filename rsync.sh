#!/bin/bash 
SOURCE=$1
TARGET=$2

if [ ! -d "${TARGET}" ];
then   
    mkdir -p "${TARGET}"
fi

rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${SOURCE}" "${TARGET}"

