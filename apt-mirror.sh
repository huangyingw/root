#! /bin/bash
RSYNCSOURCE=rsync://mirrors.sohu.com/ubuntu/
BASEDIR=/home/UbuntuMirror/

rsync --recursive --times --links --hard-links \
      --stats \
      --exclude "Packages*" --exclude "Sources*" \
      --exclude "Release*" \
      ${RSYNCSOURCE} ${BASEDIR}

rsync --recursive --times --links --hard-links \
      --stats --delete --delete-after \
      --exclude "project/trace/${HOSTNAME}" \
      ${RSYNCSOURCE} ${BASEDIR}

