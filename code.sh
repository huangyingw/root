#! /bin/bash

source=/media/back2/myproject/
target=/media/8G/myproject/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			--exclude work \
			"${source}" "${target}"
