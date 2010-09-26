#!/bin/bash
for ss in `git remote -v | grep -o '^[[:alnum:]]*' | uniq
`; do git push --all $ss && git push --tag $ss; done
