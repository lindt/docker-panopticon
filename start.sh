#!/bin/bash

docker run -ti -e DISPLAY \
  --volume "$HOME/.Xauthority:/root/.Xauthority" \
  --volume "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --volume "$(pwd):/work"\
  --workdir /work \
  --net=host \
  think/panopticon
