#!/bin/bash

# get parameter from system
file_dir=`dirname $0`

# get parameter from system
user=`id -un`
group=`id -gn`
uid=`id -u`
gid=`id -g`

# build docker images
docker build -t ${user}/unity-hub \
    --build-arg USER=${user} \
    --build-arg UID=${uid} \
    --build-arg GROUP=${group} \
    --build-arg GID=${gid} \
    ${file_dir}


# terminatorについて
# https://terminator-gtk3.readthedocs.io/en/latest/
# https://ryonakagami.github.io/2020/12/22/ubuntu-terminator/