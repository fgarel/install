#!/bin/sh

# fgarel@freeshell.de:~/lisezMoi.txt
#

#
# Reveil de la machine
#
echo '#'
echo '# Au préalable et si cela est nécessaire, à partir de la machine VLR6180X, il faut réveiller VLR6180Y'
echo '#'
echo '# wakeonlan 18:03:73:2f:3b:7d'
echo '#'


#
# Fabrication du troisième tiers du tunnel "DS214" (entre la machine VLR6180X et la machine VLR6180Y)
# (ports 10000 et +)
# et comme on peut le faire en meme temps,
# Fabrication du troisième tiers du tunnel "mail.cdalr.fr" (entre la machine VLR6180X et la machine VLR6180Y)
# (ports 40000 et +)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 15900:localhost:5900 \
    -L 10080:localhost:80 \
    -L 10022:localhost:22 \
    -L 45900:localhost:5900 \
    -L 40080:localhost:80 \
    -L 40022:localhost:22 \
    fred@VLR6180Y

#
