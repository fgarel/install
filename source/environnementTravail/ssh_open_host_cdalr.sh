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


# 1ere etape : on va commencer par la fin : la troisième partie de tunnel
#
# pour cdalr, il y a une autre partie de tunnel :
# cdalr est un relais vers sa propre base postgresql
#
echo "# Mot de passe pour cdalr.fr"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 43230:localhost:5432 \
    fred@cdalr.fr
#

echo "# "
echo "# Maintenant, à partir de cdalr.fr, il est possible de se connecter vers"
echo "# sa base de données via localhost"
echo "# psql -h localhost -p 43230 -d dbworkspace -U fred"
echo "# "
echo "# Cependant, a partir d'une autre machine, il n'est pas possible de se connecter"
echo "# psql -h pg.cdalr.fr -p 43230 -d dbworkspace -U fred"
echo "# car, le nom de la machine doit etre localhost"
echo "#"
echo "#"
echo "# Plus tard, après l'ajout de parties de tunnel,"
echo "# il sera possible de se connecter à distance"
echo "# psql -h localhost -p 63230 -d dbworkspace -U fred"
echo "#"
#

# le tiers central du tunnel n'est pas a faire ici
#

# le premier tiers du tunnel est faite via ssh_connect_via.sh
