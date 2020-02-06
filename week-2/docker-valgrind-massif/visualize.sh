#!/bin/bash

#
# NOTE: On macOS with XQuartz, you will need to allow network connections to X11
#

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}') && echo "IP: $ip"
xhost + ${ip}

docker run -d -ti --rm \
    -e DISPLAY=${ip}:0 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd):/home/massif/test \
    spajic/docker-valgrind-massif \
    massif-visualizer
