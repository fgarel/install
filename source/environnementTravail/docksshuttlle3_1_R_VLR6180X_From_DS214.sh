#!/bin/sh

# fgarel@freeshell.de:~/lisezMoi.txt

# fabrication de la 1ere moitie du tunnel entre la machine boulot et le DS214
ssh -f\
    -N \
    -X \
    -R 25900:localhost:15900 \
    -R 20080:localhost:10080 \
    -R 20022:localhost:10022 \
    root@82.245.10.108
