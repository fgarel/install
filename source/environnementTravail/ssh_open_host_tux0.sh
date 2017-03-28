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
    -R 40031:localhost:5900 \
    -R 43231:localhost:5432 \
    -R 44331:localhost:443 \
    -R 40831:localhost:80 \
    -R 42231:localhost:22 \
    fred@cdalr.fr
#
#
# Fabrication d'un autre tiers central du tunnel "freeshell.de" (entre la machine boulot et freeshell.de)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 40041:localhost:5900 \
    -R 43241:localhost:5432 \
    -R 44341:localhost:443 \
    -R 40841:localhost:80 \
    -R 42241:localhost:22 \
    fgarel@ssh.freeshell.de \
    -p 443
#
#
# Fabrication d'un autre tiers central du tunnel "fgarel.synology.me" (entre la machine boulot et fgarel.synology.me)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 40051:localhost:5900 \
    -R 43251:localhost:5432 \
    -R 44351:localhost:443 \
    -R 40851:localhost:80 \
    -R 42251:localhost:22 \
    fred@fgarel.synology.me
#
echo "# "
echo "# "
echo "# "
echo "# Maintenant, à partir de ssh.cdalr.fr, il est possible de se connecter vers :"
echo "# tux0 => ssh -p 42231 fred@localhost"
echo "# "
#
