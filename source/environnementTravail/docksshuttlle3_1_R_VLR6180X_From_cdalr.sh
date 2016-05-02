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
    -R 55900:localhost:45900 \
    -R 55432:localhost:45432 \
    -R 50443:localhost:40443 \
    -R 50080:localhost:40080 \
    -R 50022:localhost:40022 \
    -R 45900:localhost:5900 \
    -R 45432:localhost:5432 \
    -R 40443:localhost:443 \
    -R 40080:localhost:80 \
    -R 40022:localhost:22 \
    fred@mail.cdalr.fr
#
echo "# "
echo "# Maintenant, à partir de mail.cdalr.fr, il est possible de se connecter vers :"
echo "# VLR6180X => ssh -p 40022 fred@localhost"
echo "# (si besoin, il faut réveiller VLR6180Y)"
echo "# (et faire le 3ème tiers du tunnel)"
echo "# VLR6180Y => ssh -p 50022 fred@localhost"
echo "# "
#
