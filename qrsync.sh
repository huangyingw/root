#!/bin/bash 
SOURCE=$1
TARGET=$2

if [ ! -d "${TARGET}" ];
then   
    mkdir -p "${TARGET}"
fi

rsync -a --recursive --delete -h --times --links --hard-links \
			"${SOURCE}" "${TARGET}"

