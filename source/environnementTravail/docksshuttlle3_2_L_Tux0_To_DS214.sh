#!/bin/sh

# fgarel@freeshell.de:~/lisezMoi.txt

#
# Fabrication du premier tiers du tunnel "DS214" (entre la machine perso et le DS214)
#
ssh -f \
    -o ServerAliveInterval=240 \
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
#
echo "# "
echo "# Maintenant, il est possible de se connecter"
echo "# DS214    => ssh -p 10022 root@localhost"
echo "# VLR6180X => ssh -p 20022 fred@localhost"
echo "# (si besoin, il faut réveiller VLR6180Y)"
echo "# (et faire le 3ème tiers du tunnel)"
echo "# VLR6180Y => ssh -p 30022 fred@localhost"
#
# Fabrication du premier tiers du tunnel "mail.cdalr.fr" (entre la machine perso et mail.cdalr.fr)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 65900:localhost:55900 \
    -L 60080:localhost:50080 \
    -L 60022:localhost:50022 \
    -L 55900:localhost:45900 \
    -L 50080:localhost:40080 \
    -L 50022:localhost:40022 \
    -L 45900:localhost:5900 \
    -L 40080:localhost:80 \
    -L 40022:localhost:22 \
    fred@mail.cdalr.fr
#
echo "# "
echo "# Maintenant, il est possible de se connecter"
echo "# DS214    => ssh -p 40022 root@localhost"
echo "# VLR6180X => ssh -p 50022 fred@localhost"
echo "# (si besoin, il faut réveiller VLR6180Y)"
echo "# (et faire le 3ème tiers du tunnel)"
echo "# VLR6180Y => ssh -p 60022 fred@localhost"
#
