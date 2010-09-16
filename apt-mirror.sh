#! /bin/bash
RSYNCSOURCE=rsync://mirrors.sohu.com/ubuntu/
BASEDIR=/media/volgrp/UbuntuMirror/

rsync --recursive --times --links --hard-links \
      --stats \
      --exclude "Sources*" \
      --exclude "dapper*" --exclude "hardy*" --exclude "intrepid*" --exclude "jaunty*" --exclude "maverick*"\
      ${RSYNCSOURCE} ${BASEDIR}

rsync --recursive --times --links --hard-links \
      --stats --delete --delete-after \
      --exclude "project/trace/${HOSTNAME}" \
      ${RSYNCSOURCE} ${BASEDIR}

