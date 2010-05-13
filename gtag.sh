#!/bin/bash

git tag "$1" -m "$2"
git push --all && git push --tags
