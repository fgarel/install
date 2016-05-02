#!/bin/sh

# fgarel@freeshell.de:~/lisezMoi.txt

#
# Options de ssh
# http://www.delafond.org/traducmanfr/man/man1/ssh.1.html
# https://mosh.mit.edu/
#
# -f = Demande à ssh de basculer en arrière-plan juste avant d'exécuter la commande.
# -o ServerAliveInterval = http://stackoverflow.com/questions/25084288/keep-ssh-session-alive
#                          https://forum.ivorde.com/how-to-prevent-linux-ssh-client-from-disconnecting-using-serveraliveinterval-t19451.html
#                          https://mosh.mit.edu/
# -N = N'exécute aucune commande distante
# -X = Transfert X11 et TCP (X11 and TCP forwarding) http://www.delafond.org/traducmanfr/man/man1/ssh.1.html

#
# Fabrication du premier tiers du tunnel "DS214" (entre la machine perso et le DS214)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 35900:localhost:25900 \
    -L 35432:localhost:25432 \
    -L 30443:localhost:20453 \
    -L 30080:localhost:20080 \
    -L 30022:localhost:20022 \
    -L 25900:localhost:15900 \
    -L 25432:localhost:15432 \
    -L 20443:localhost:10443 \
    -L 20080:localhost:10080 \
    -L 20022:localhost:10022 \
    -L 15900:localhost:5900 \
    -L 15432:localhost:5432 \
    -L 10443:localhost:443 \
    -L 10080:localhost:80 \
    -L 10022:localhost:22 \
    root@192.168.0.26
#
echo "# "
echo "# Maintenant, à partir de tux0, il est possible de se connecter vers :"
echo "# DS214    => ssh -p 10022 root@localhost"
echo "# VLR6180X => ssh -p 20022 fred@localhost"
echo "# (si besoin, il faut réveiller VLR6180Y)"
echo "# (et faire le 3ème tiers du tunnel)"
echo "# VLR6180Y => ssh -p 30022 fred@localhost"
echo "# "
#
