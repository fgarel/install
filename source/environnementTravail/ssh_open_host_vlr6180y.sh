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


# 1ere etape : on va commencer par la fin : la troisième partie du tunnel
#
# Fabrication de la troisième partie du tunnel (entre la machine VLR6180Y et la machine DSIBDD09)
# (ports ...0000 et +)
#
echo "# Mot de passe pour vlr6180y : aliabMi"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 43290:dsibdd09.mairie.fr:5432 \
    fred@vlr6180y

echo "# "
echo "# Maintenant, à partir de VLR6180Y, il est possible de se connecter vers"
echo "# une base du serveur dsibdd09"
echo "# psql -h localhost -p 43290 -d cadlr -U sig"
echo "# "
echo "# Mie3B.."
echo "# "
#
# Fabrication de la troisième partie du tunnel (entre la machine VLR6180Y et la machine brulhois)
# (ports ...0000 et +)
#
echo "# Mot de passe pour vlr6180y : aliabMi"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 43291:172.17.150.6:5432 \
    fred@vlr6180y

echo "# "
echo "# Maintenant, à partir de VLR6180Y, il est possible de se connecter vers"
echo "# une base du serveur brulhois"
echo "# psql -h localhost -p 43291 -d sig -U prenom.nom"
echo "# "
echo "# Mie7.."
#
#
# Le tunnel, entre la machine VLR6180Y et la machine dsiappli58, puis dsiappli39
# est fabriqué grace au script ssh_open_host_dsi3.sh
#
#echo "# "
#echo "# A partir de vlr6180y, il est possible de se connecter vers"
#echo "# une base du serveur dsiappli39 via dsiappli58"
#echo "# psql -h localhost -p 33292 -d sig -U postgres"
#echo "# "
#


# 2de etape : on fabrique la seconde partie du tunnel
#
# Fabrication la seconde partie du tunnel "ssh.cdalr.fr" (entre la machine boulot et ssh.cdalr.fr)
#
# Attention, on rajoute le lien vers la troisième partie
echo "# Mot de passe pour ssh.cdalr.fr : aliabMi"
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
    -R 52392:localhost:33292 \
    fred@cdalr.fr

echo "# "
echo "# Maintenant, à partir de pg.cdalr.fr, il est possible de se connecter vers"
echo "# (via vlr6180y) :"
echo "# - une base du serveur dsibdd09"
echo "#   psql -h localhost -p 52390 -d cadlr -U sig"
echo "# - une base du serveur brulhois"
echo "#   psql -h localhost -p 52391 -d sig -U prenom.nom"
echo "# - une base du serveur dsiappli39 via dsiappli58"
echo "#   psql -h localhost -p 52392 -d sig -U postgres"
echo "# "
#
#
# Fabrication d'un second tiers central du tunnel "freeshell.de" (entre la machine boulot et freeshell.de)
#
echo "# Mot de passe pour ssh.freeshell.de : aliabLei6Vie5"
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
    -R 52492:localhost:33292 \
    fgarel@ssh.freeshell.de \
    -p 443

echo "# "
echo "# Maintenant, à partir de pg.cdalr.fr, il est possible de se connecter vers"
echo "# (via vlr6180x) :"
echo "# - une base du serveur dsibdd09"
echo "#   psql -h localhost -p 52490 -d cadlr -U sig"
echo "# - une base du serveur brulhois"
echo "#   psql -h localhost -p 52491 -d sig -U prenom.nom"
echo "# - une base du serveur dsiappli39 via dsiappli58"
echo "#   psql -h localhost -p 52492 -d sig -U postgres"
echo "# "
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


# la premiere partie du tunnel est faite via ssh_connect_via.sh
