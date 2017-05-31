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
# Fabrication du troisième tiers du tunnel (entre la machine VLR6180Y et la machine DSIBDD09)
# (ports ...0000 et +)
#
echo "# Mot de passe pour vlr6180y"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 43290:dsibdd09.mairie.fr:5432 \
    fred@vlr6180y
#
# Fabrication du troisième tiers du tunnel (entre la machine VLR6180Y et la machine brulhois)
# (ports ...0000 et +)
#
echo "# Mot de passe pour vlr6180y"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 43291:172.17.150.6:5432 \
    fred@vlr6180y
#

echo "# "
echo "# Maintenant, à partir de VLR6180Y, il est possible de se connecter vers"
echo "# une base du serveur dsibdd09 via vlr6180y"
echo "# psql -h localhost -p 43290 -d cadlr -U sig"
echo "# "
echo "# Mie3B.."
echo "# "
echo "# Maintenant, à partir de VLR6180Y, il est possible de se connecter vers"
echo "# une base du serveur brulhois via vlr6180y"
echo "# psql -h localhost -p 43291 -d sig -U prenom.nom"
echo "# "
echo "# Mie7.."
#
#


# 2de etape : on fabrique le tiers central du tunnel
#
# Fabrication du tiers central du tunnel "ssh.cdalr.fr" (entre la machine boulot et ssh.cdalr.fr)
#
# attention, on rajoute le lien vers le troisième tiers
echo "# Mot de passe pour ssh.cdalr.fr"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 50039:localhost:5900 \
    -R 53239:localhost:5432 \
    -R 54339:localhost:443 \
    -R 50839:localhost:80 \
    -R 52239:localhost:22 \
    -R 52390:localhost:43290 \
    -R 52391:localhost:43291 \
    fred@cdalr.fr
#
#
# Fabrication d'un second tiers central du tunnel "freeshell.de" (entre la machine boulot et freeshell.de)
#
echo "# Mot de passe pour ssh.freeshell.de"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 50049:localhost:5900 \
    -R 53249:localhost:5432 \
    -R 54349:localhost:443 \
    -R 50849:localhost:80 \
    -R 52249:localhost:22 \
    -R 52490:localhost:43290 \
    -R 52491:localhost:43291 \
    fgarel@ssh.freeshell.de \
    -p 443
#
#
# Fabrication d'un autre tiers central du tunnel "fgarel.synology.me" (entre la machine boulot et fgarel.synology.me)
#
#echo "# Mot de passe pour fgarel.synology.me"
#ssh -f \
#    -o ServerAliveInterval=240 \
#    -N \
#    -X \
#    -R 50059:localhost:5900 \
#    -R 53259:localhost:5432 \
#    -R 54359:localhost:443 \
#    -R 50859:localhost:80 \
#    -R 52259:localhost:22 \
#    -R 52590:localhost:43290 \
#    fred@fgarel.synology.me
#
echo "# "
echo "# "
echo "# Maintenant, à partir de ssh.cdalr.fr, il est possible de se connecter vers :"
echo "# VLR6180Y => ssh -p 42239 fred@localhost"
echo "# "
echo '#'


# le premier tiers du tunnel est fait via ssh_connect_via.sh
