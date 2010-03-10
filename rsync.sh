#!/bin/bash 
RSYNCSOURCE=$1
BASEDIR=$2

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			--exclude .svn \
			"${RSYNCSOURCE}" "${BASEDIR}"

