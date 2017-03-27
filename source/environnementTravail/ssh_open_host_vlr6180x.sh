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
# Fabrication du tiers central du tunnel "ssh.cdalr.fr" (entre la machine boulot et ssh.cdalr.fr)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 40038:localhost:5900 \
    -R 43238:localhost:5432 \
    -R 44338:localhost:443 \
    -R 40838:localhost:80 \
    -R 42238:localhost:22 \
    fred@ssh.cdalr.fr
#
#
# Fabrication d'un second tiers central du tunnel "freeshell.de" (entre la machine boulot et freeshell.de)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 40048:localhost:5900 \
    -R 43248:localhost:5432 \
    -R 44348:localhost:443 \
    -R 40848:localhost:80 \
    -R 42248:localhost:22 \
    fgarel@freeshell.de
#
#
# Fabrication d'un autre tiers central du tunnel "fgarel.synology.me" (entre la machine boulot et fgarel.synology.me)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 40058:localhost:5900 \
    -R 43258:localhost:5432 \
    -R 44358:localhost:443 \
    -R 40858:localhost:80 \
    -R 42258:localhost:22 \
    fred@fgarel.synology.me
#
echo "# "
echo "# "
echo "# "
echo "# Maintenant, à partir de ssh.cdalr.fr, il est possible de se connecter vers :"
echo "# VLR6180X => ssh -p 42238 fred@localhost"
echo "# "
#
