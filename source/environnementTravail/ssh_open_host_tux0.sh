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
# pour tux0, il n'y a pas besoin de troisième tiers :
# tux0 n'est pas un relais vers une autre base postgresql
#
#echo "# Mot de passe pour tux0"
#ssh -f \
#    -o ServerAliveInterval=240 \
#    -N \
#    -X \
#    -L 43210:postgresql-fgarel.alwaysdata.net:5432 \
#    fred@tux0
#

#echo "# "
#echo "# Maintenant, à partir de TUX0, il est possible de se connecter vers"
#echo "# une base du serveur postgresql-fgarel.alwaysdata.net via tux0"
#echo "# psql -h localhost -p 43280 -d cadlr -U sig"
#echo "# "
#echo "# Mie3B.."
#


# 2de etape : on fabrique le tiers central du tunnel
#
# Fabrication du tiers central du tunnel "ssh.cdalr.fr" (entre la machine boulot et ssh.cdalr.fr)
#
# attention, pas besoin de rajouter le lien vers le troisième tiers
echo "# Mot de passe pour ssh.cdalr.fr"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 50031:localhost:5900 \
    -R 53231:localhost:5432 \
    -R 54331:localhost:443 \
    -R 50831:localhost:80 \
    -R 52231:localhost:22 \
    fred@cdalr.fr
#    -R 52310:localhost:43210 \
#
#
# Fabrication d'un autre tiers central du tunnel "freeshell.de" (entre la machine boulot et freeshell.de)
#
echo "# Mot de passe pour ssh.freeshell.de"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 50041:localhost:5900 \
    -R 53241:localhost:5432 \
    -R 54341:localhost:443 \
    -R 50841:localhost:80 \
    -R 52241:localhost:22 \
    fgarel@ssh.freeshell.de \
    -p 443
#    -R 52410:localhost:43210 \
#
#
# Fabrication d'un autre tiers central du tunnel "fgarel.synology.me" (entre la machine boulot et fgarel.synology.me)
#
#echo "# Mot de passe pour fgarel.synology.me"
#ssh -f \
#    -o ServerAliveInterval=240 \
#    -N \
#    -X \
#    -R 50051:localhost:5900 \
#    -R 53251:localhost:5432 \
#    -R 54351:localhost:443 \
#    -R 50851:localhost:80 \
#    -R 52251:localhost:22 \
#    fred@fgarel.synology.me
#    -R 52510:localhost:43210 \
#
echo "# "
echo "# "
echo "# Maintenant, à partir de ssh.cdalr.fr, il est possible de se connecter vers :"
echo "# tux0 => ssh -p 42231 fred@localhost"
echo "# "
echo "# "
#

# le premier tiers du tunnel est fait via ssh_connect_via.sh
