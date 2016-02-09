#!/bin/sh

# fgarel@freeshell.de:~/lisezMoi.txt

# fabrication de la 2eme moitie du tunnel entre la machine perso et le DS214
ssh -f\
    -N \
    -X \
    -L 35900:localhost:25900 \
    -L 30080:localhost:20080 \
    -L 30022:localhost:20022 \
    root@192.168.0.26
