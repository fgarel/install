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
# Fabrication du premier tiers du tunnel "mail.cdalr.fr" (entre la machine perso et mail.cdalr.fr)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 60039:localhost:40039 \
    -L 63239:localhost:43239 \
    -L 64339:localhost:44339 \
    -L 60839:localhost:40839 \
    -L 62239:localhost:42239 \
    -L 60038:localhost:40038 \
    -L 63238:localhost:43238 \
    -L 64338:localhost:44338 \
    -L 60838:localhost:40838 \
    -L 62238:localhost:42238 \
    -L 60032:localhost:40032 \
    -L 43232:localhost:43232 \
    -L 44332:localhost:44332 \
    -L 40832:localhost:40832 \
    -L 42232:localhost:42232 \
    -L 60031:localhost:40031 \
    -L 43231:localhost:43231 \
    -L 44331:localhost:44331 \
    -L 40831:localhost:40831 \
    -L 42231:localhost:42231 \
    fred@mail.cdalr.fr
#
echo "# "
echo "# Maintenant, à partir de tux0, il est possible de se connecter vers :"
echo "# ssh.cdalr.fr => ssh -p 40022 root@localhost"
echo "# "
echo "# Sur la machine VLR6180Y, on peut lancer le serveur vnc"
echo "#   x11vnc -display :0 -ncache 10"
echo "# Sur la machine tux0, on peut lancer le viewer vnc"
echo "#   en mode console"
echo "#     vncviewer -compresslevel 5 -via fred@localhost localhost:64900"
echo "#   en mode graphique"
echo "#     Internet / Visionneur de bureaux distants"
echo "#     Se connecter"
echo "#     Hote                               : localhost:64900"
echo "#     Utiliser l'hote (comme tunnel ssh) : fred@localhost"
#
