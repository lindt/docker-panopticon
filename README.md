[![Docker pulls](https://img.shields.io/docker/pulls/think/panopticon.svg)](https://hub.docker.com/r/think/panopticon/)
[![Docker Build](https://img.shields.io/docker/automated/think/panopticon.svg)](https://hub.docker.com/r/think/panopticon/)
[![Latest Tag](https://img.shields.io/github/tag/lindt/docker-panopticon.svg)](https://hub.docker.com/r/think/panopticon/)

# docker-panopticon

Docker Image for [Panopticon](https://panopticon.re/). A libre cross platform disassembler.

<img src="https://panopticon.re/img/screen.png">

## Usage

Go to the directory with the binary to be disassembled.

Then start:
```
docker run -ti -e DISPLAY \
  --volume "$HOME/.Xauthority:/root/.Xauthority" \
  --volume "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --volume "$(pwd):/work"\
  --workdir /work \
  --net=host \
  think/panopticon
```
This opens the Panopticon Gui within this folder. Then load your binary.

## References

 - based on [Panopticon](https://panopticon.re/)
