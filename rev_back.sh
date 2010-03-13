#! /bin/bash

source=/media/back1/av/
target=/media/volgrp/av/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/back1/software/
target=/media/volgrp/software/


rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/back1/unsafe/			
target=/media/volgrp/unsafe/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/back2/xgmm/
target=/media/volgrp/xgmm/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/back2/cartoon/
target=/media/volgrp/cartoon/


rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/back2/movie/
target=/media/volgrp/movie/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/back2/myproject/
target=/media/volgrp/myproject/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/back2/storage/
target=/media/volgrp/storage/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

source=/media/back2/vmware/			
target=/media/volgrp/vmware/

rsync -av --recursive --delete -h --times --links --hard-links \
			--stats --progress \
			"${source}" "${target}"

#shutdown -h now