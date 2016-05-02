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
# Fabrication du tiers central du tunnel "DS214" (entre la machine boulot et le DS214)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 25900:localhost:15900 \
    -R 25432:localhost:15432 \
    -R 20443:localhost:10443 \
    -R 20080:localhost:10080 \
    -R 20022:localhost:10022 \
    -R 15900:localhost:5900 \
    -R 15432:localhost:5432 \
    -R 10443:localhost:443 \
    -R 10080:localhost:80 \
    -R 10022:localhost:22 \
    root@82.245.10.108
#
echo "# "
echo "# Maintenant, à partir de DS214, il est possible de se connecter vers :"
echo "# VLR6180X => ssh -p 10022 fred@localhost"
echo "# (si besoin, il faut réveiller VLR6180Y)"
echo "# (et faire le 3ème tiers du tunnel)"
echo "# VLR6180Y => ssh -p 20022 fred@localhost"
echo "# "
#
