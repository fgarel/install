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


# 1ere etape : on va commencer par la fin : le troisième tiers du tunnel
#
# pour cdalr, il y a un troisième tiers :
# cdalr est un relais vers sa base postgresql
#
echo "# Mot de passe pour cdalr.fr"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 43230:localhost:5432 \
    fred@localhost
#

echo "# "
echo "# Maintenant, à partir de cdalr.fr, il est possible de se connecter vers"
echo "# sa base de données via localhos"
echo "# psql -h localhost -p 43230 -d cadlr -U sig"
echo "# "
echo "# Mie3B.."
#

# le tiers central du tunnel n'est pas a faire ici
#

# le premier tiers du tunnel est fait via ssh_connect_via.sh
