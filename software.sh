#!/bin/bash 
RSYNCSOURCE=/media/back1/software/
BASEDIR=/media/usb/software/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			--exclude .svn \
			--exclude os/windows \
			--exclude database \
			"${RSYNCSOURCE}" "${BASEDIR}"

