#!/bin/sh

#

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


# 1ere etape : on va commencer par la fin : la cinquieme partie du tunnel
#
# Fabrication de la "cinquième" partie du tunnel (entre la machine dsiappli58 et la machine DSIAPPLI39)
# (ports ...0000 et +)
#
echo "# Mot de passe pour root pour dsiappli58 : aliab12"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 23292:dsiappli39.mairie.fr:5432 \
    -L 23282:dsiappli39.mairie.fr:5432 \
    root@dsiappli58.mairie.fr
#

echo "# "
echo "# Maintenant, à partir de dsiappli58, il est possible de se connecter vers"
echo "# une base du serveur dsiappli39"
echo "# psql -h localhost -p 23292 -d sig -U postgres"
echo "# "
echo "# aliabYepYesh555+"
echo "# "

# 2de etape : on fabrique la "quatrième" partie du tunnel
#
# Fabrication de la "quatrième" partie du tunnel (entre la machine boulot et dsiappli58)
#
echo "# Mot de passe pour vlr6180y : aliabMi"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 33292:localhost:23292 \
    fred@vlr6180y.mairie.fr

echo "# "
echo "# Maintenant, à partir de vlr6180y, il est possible de se connecter vers"
echo "# une base du serveur dsiappli39 via dsiappli58"
echo "# psql -h localhost -p 33292 -d sig -U postgres"
echo "# "
#
# Fabrication du "quatrième" du tunnel (entre la machine boulot et dsiappli58)
#
echo "# Mot de passe pour vlr6180x : aliabMi"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -R 33282:localhost:23282 \
    fred@vlr6180x.mairie.fr

echo "# "
echo "# Maintenant, à partir de vlr6180x, il est possible de se connecter vers"
echo "# une base du serveur dsiappli39 via dsiappli58"
echo "# psql -h localhost -p 33282 -d sig -U postgres"
echo "# "

# les premieres parties du tunnel sont faites avec d'autres scripts :
# - ssh_open_host_vlr6180y
# - et ssh_connect_via.sh
