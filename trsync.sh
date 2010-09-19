
#!/bin/bash 
SOURCE=$1
TARGET=$2

if [ ! -d "${TARGET}" ];
then   
    mkdir -p "${TARGET}"
fi

rsync -ainv --recursive --delete-after -H \
			--exclude .svn \
			"${SOURCE}" "${TARGET}"

