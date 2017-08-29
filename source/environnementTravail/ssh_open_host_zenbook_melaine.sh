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
# pour zenbook, il n'y a pas besoin de troisième tiers :
# zenbook n'est pas un relais vers une autre base postgresql
#
#echo "# Mot de passe pour zenbook"
#ssh -f \
#    -o ServerAliveInterval=240 \
#    -N \
#    -X \
#    -L 43220:postgresql-fgarel.alwaysdata.net:5432 \
#    fred@localhost
#

#echo "# "
#echo "# Maintenant, à partir de zenbook, il est possible de se connecter vers"
#echo "# une base du serveur postgresql-fgarel.alwaysdata.net via zenbook"
#echo "# psql -h localhost -p 43280 -d cadlr -U sig"
#echo "# "
#echo "# Mie3B.."
#


# 2de etape : on fabrique le tiers central du tunnel
#
# Fabrication du tiers central du tunnel "ssh.cdalr.fr" (entre la machine boulot et ssh.cdalr.fr)
#
# attention, pas besoin de rajouter le lien vers le troisième tiers
#echo "# Mot de passe pour ssh.cdalr.fr"
#ssh -f \
#    -o ServerAliveInterval=240 \
#    -N \
#    -X \
#    -R 50032:localhost:5900 \
#    -R 53232:localhost:5432 \
#    -R 54332:localhost:443 \
#    -R 50832:localhost:80 \
#    -R 52232:localhost:22 \
#    fred@cdalr.fr
##    -R 52320:localhost:43220 \
#
#
# Fabrication d'un autre tiers central du tunnel "freeshell.de" (entre la machine boulot et freeshell.de)
#
#echo "# Mot de passe pour ssh.freeshell.de"
#ssh -f \
#    -o ServerAliveInterval=240 \
#    -N \
#    -X \
#    -R 50042:localhost:5900 \
#    -R 53242:localhost:5432 \
#    -R 54342:localhost:443 \
#    -R 50842:localhost:80 \
#    -R 52242:localhost:22 \
#    fgarel@ssh.freeshell.de \
#    -p 443
##    -R 52420:localhost:43220 \
#
#
# Fabrication d'un autre tiers central du tunnel "fgarel.synology.me" (entre la machine boulot et fgarel.synology.me)
#
echo "# Mot de passe pour fgarel.synology.me"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 50052:localhost:5900 \
    -R 53252:localhost:5432 \
    -R 54352:localhost:443 \
    -R 50852:localhost:80 \
    -R 52252:localhost:22 \
    melaine@fgarel.synology.me
#    -R 52520:localhost:43220 \
#
echo "# "
echo "# "
echo "# Maintenant, à partir de ssh.cdalr.fr, il est possible de se connecter vers :"
echo "# zenbook => ssh -p 42232 fred@localhost"
echo "# "
echo "# "
#

# le premier tiers du tunnel est fait via ssh_connect_via.sh
