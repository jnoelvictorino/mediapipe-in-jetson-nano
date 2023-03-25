#!/usr/bin/env bash

# give docker root user X11 permissions
sudo xhost +si:localuser:root

# enable SSH X11 forwarding inside container (https://stackoverflow.com/q/48235040)
XAUTH=/tmp/.docker.xauth
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
chmod 777 $XAUTH

docker run --runtime nvidia -it --rm --network host -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix/:/tmp/.X11-unix \
  -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH \
  -v $(pwd):/home \
  --device /dev/video0 --device /dev/video1 --device /dev/video2 \
  jvictorino/l4t-ml-mediapipe:r32.7.1-py3-v0.2.0