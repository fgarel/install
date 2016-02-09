#!/bin/sh

# fgarel@freeshell.de:~/lisezMoi.txt

# fabrication de la 2eme moitie du tunnel entre la machine perso et le DS214
ssh -f\
    -N \
    -X \
    -L 15900:localhost:5900 \
    -L 10080:localhost:80 \
    -L 10022:localhost:22 \
    fred@VLR6180Y
