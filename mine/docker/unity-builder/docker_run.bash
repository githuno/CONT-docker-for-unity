#!/bin/bash

# get parameter from system
user=`id -un`

# start sharing xhost
xhost +local:root

# run docker
docker run --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -dit --name "unityhub" ${user}/unity-hub
