#!/bin/sh

# fgarel@freeshell.de:~/lisezMoi.txt

# fabrication de la 2eme moitie du tunnel entre la machine perso et le DS214
ssh -f\
    -N \
    -X \
    -L 35900:localhost:25900 \
    -L 30080:localhost:20080 \
    -L 30022:localhost:20022 \
    -L 25900:localhost:15900 \
    -L 20080:localhost:10080 \
    -L 20022:localhost:10022 \
    -L 15900:localhost:5900 \
    -L 10080:localhost:80 \
    -L 10022:localhost:22 \
    root@192.168.0.26
