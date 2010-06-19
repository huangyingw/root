#!/bin/bash 
RSYNCSOURCE=$1
BASEDIR=$2

rsync -av --log-file=/root/rlog --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${RSYNCSOURCE}" "${BASEDIR}"

