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
# Fabrication du tiers central du tunnel "mail.cdalr.fr" (entre la machine boulot et mail.cdalr.fr)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 40039:localhost:5900 \
    -R 43239:localhost:5432 \
    -R 44339:localhost:443 \
    -R 40839:localhost:80 \
    -R 42239:localhost:22 \
    fred@ssh.cdalr.fr
#
echo "# "
echo "# Maintenant, à partir de ssh.cdalr.fr, il est possible de se connecter vers :"
echo "# VLR6180Y => ssh -p 42239 fred@localhost"
echo "# "
#
