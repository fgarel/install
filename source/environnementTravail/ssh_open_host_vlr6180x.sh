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
# Fabrication du troisième tiers du tunnel (entre la machine VLR6180X et la machine DSIBDD09)
# (ports ...0000 et +)
#
echo "# Mot de passe pour vlr6180x"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 43280:dsibdd09.mairie.fr:5432 \
    fred@vlr6180x
#

echo "# "
echo "# Maintenant, à partir de VLR6180X, il est possible de se connecter vers"
echo "# une base du serveur dsibdd09 via vlr6180x"
echo "# psql -h localhost -p 43280 -d cadlr -U sig"
echo "# "
echo "# Mie3B.."
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
    -R 50038:localhost:5900 \
    -R 53238:localhost:5432 \
    -R 54338:localhost:443 \
    -R 50838:localhost:80 \
    -R 52238:localhost:22 \
    -R 52380:localhost:43280 \
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
    -R 50048:localhost:5900 \
    -R 53248:localhost:5432 \
    -R 54348:localhost:443 \
    -R 50848:localhost:80 \
    -R 52248:localhost:22 \
    -R 52480:localhost:43280 \
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
#    -R 50058:localhost:5900 \
#    -R 53258:localhost:5432 \
#    -R 54358:localhost:443 \
#    -R 50858:localhost:80 \
#    -R 52258:localhost:22 \
#    -R 52580:localhost:43280 \
#    fred@fgarel.synology.me
#
echo "# "
echo "# "
echo "# Maintenant, à partir de ssh.cdalr.fr, il est possible de se connecter vers :"
echo "# VLR6180X => ssh -p 42238 fred@localhost"
echo "# "
echo "# "


# le premier tiers du tunnel est fait via ssh_connect_via.sh
