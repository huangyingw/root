#! /bin/bash
mount /dev/volgrp/av /media/volgrp/av
mount /dev/volgrp/software /media/volgrp/software
mount /dev/volgrp/unsafe /media/volgrp/unsafe
mount /dev/volgrp/xgmm /media/volgrp/xgmm
mount /dev/volgrp/cartoon /media/volgrp/cartoon
mount /dev/volgrp/movie /media/volgrp/movie
mount /dev/volgrp/myproject /media/volgrp/myproject
mount /dev/volgrp/storage /media/volgrp/storage
mount /dev/volgrp/vmware /media/volgrp/vmware

source=/media/volgrp/av/
target=/media/back1/av/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/volgrp/software/
target=/media/back1/software/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"
			
source=/media/volgrp/unsafe/
target=/media/back1/unsafe/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/volgrp/xgmm/
target=/media/back2/xgmm/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/volgrp/cartoon/
target=/media/back2/cartoon/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/volgrp/movie/
target=/media/back2/movie/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/volgrp/myproject/
target=/media/back2/myproject/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/volgrp/storage/
target=/media/back2/storage/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"
			
source=/media/volgrp/vmware/
target=/media/back2/vmware/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

#shutdown -h now