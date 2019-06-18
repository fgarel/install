#!/bin/sh


XSOCK=/tmp/.X11-unix/X0
XAUTH=/tmp/.docker.xauth

# xauth nlist $DISPLAY | sed -e 's/^..../ffff/'  | xauth -f $XAUTH nmerge -

docker run -ti \
           -p 9001:9001 \
           -p 8000:80 \
           -v $(readlink --canonicalize ./docker-mapnik/resources):/etc/tilestache/resources \
           -v $(readlink --canonicalize ..):/home/fred/Documents/install/source \
           -v $XSOCK:$XSOCK \
           -v $XAUTH:$XAUTH \
           -e DISPLAY=$DISPLAY \
           -e XAUTHORITY=$XAUTH \
           --name c-ubuntu-mapnik \
           i-ubuntu-mapnik
