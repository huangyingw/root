#!/bin/bash
if [ ! -d ".git" ];
then
	echo not a git repo!!!
else
	git clone --bare . /media/smb/
	git remote rm origin
	git remote add origin "$2"
fi

