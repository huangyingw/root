#! /bin/bash

source=/media/volgrp/av/
target=/media/archive2/av/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/volgrp/software/
target=/media/archive3/software/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"
			
source=/media/volgrp/unsafe/
target=/media/archive3/unsafe/

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