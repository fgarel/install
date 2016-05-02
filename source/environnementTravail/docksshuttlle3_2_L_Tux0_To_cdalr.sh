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
# Fabrication du premier tiers du tunnel "mail.cdalr.fr" (entre la machine perso et mail.cdalr.fr)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 64900:localhost:55900 \
    -L 64432:localhost:55432 \
    -L 60443:localhost:50443 \
    -L 60080:localhost:50080 \
    -L 60022:localhost:50022 \
    -L 55900:localhost:45900 \
    -L 55432:localhost:45432 \
    -L 50443:localhost:40443 \
    -L 50080:localhost:40080 \
    -L 50022:localhost:40022 \
    -L 45900:localhost:5900 \
    -L 45432:localhost:5432 \
    -L 40443:localhost:443 \
    -L 40080:localhost:80 \
    -L 40022:localhost:22 \
    fred@mail.cdalr.fr
#
echo "# "
echo "# Maintenant, à partir de tux0, il est possible de se connecter vers :"
echo "# mail.cdalr.fr => ssh -p 40022 root@localhost"
echo "# VLR6180X => ssh -p 50022 fred@localhost"
echo "# (si besoin, il faut réveiller VLR6180Y)"
echo "# (et faire le 3ème tiers du tunnel)"
echo "# VLR6180Y => ssh -p 60022 fred@localhost"
echo "# "
#
