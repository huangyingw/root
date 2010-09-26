#!/bin/bash
for ss in `git remote -v|grep -o ^[a-zA-Z]*`; do git push --all $ss && git push --tag $ss; done
