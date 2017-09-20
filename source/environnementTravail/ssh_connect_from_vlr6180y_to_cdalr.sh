#!/bin/sh

# fgarel@freeshell.de:~/lisezMoi.txt

#
# Options de ssh
# http://www.delafond.org/traducmanfr/man/man1/ssh.1.html
# https://mosh.mit.edu/
#
# -o ServerAliveInterval = http://stackoverflow.com/questions/25084288/keep-ssh-session-alive
#                          https://forum.ivorde.com/how-to-prevent-linux-ssh-client-from-disconnecting-using-serveraliveinterval-t19451.html
#                          https://mosh.mit.edu/
# -X = Transfert X11 et TCP (X11 and TCP forwarding) http://www.delafond.org/traducmanfr/man/man1/ssh.1.html
#      https://unix.stackexchange.com/questions/111519/ssh-returns-message-x11-forwarding-request-failed-on-channel-1

#
# Fabrication du premier tiers du tunnel "ssh.cdalr.fr" (entre la machine perso et ssh.cdalr.fr)
#
echo "# Mot de passe pour cdalr.fr"
ssh  \
    -o ServerAliveInterval=240 \
    -X \
    fred@cdalr.fr
#
#
# Fabrication d'un autre premier tiers du tunnel "freeshell.de" (entre la machine perso et freeshell.de)
#
#echo "# Mot de passe pour ssh.freeshell.de"
#ssh -f \
#    -o ServerAliveInterval=240 \
#    -X \
#    fgarel@ssh.freeshell.de \
#    -p 443
#
#
echo "# "
echo "# "
echo "# ---------------------------------------------"
echo "# Sur la machine distante, il faut au prealable avoir installé xauth"
echo "#   sudo apt-get install xauth"
echo "# Sur la machine locale, on se connecte à la machine distante via ssh avec l'option -X"
echo "#   ssh -X fred@cdalr.fr"
echo "# Sur la machine distante, on peut lancer le programme xeyes"
echo "#   xeyes"
echo "#   = l'affichage se fait automatiquement sur le poste local"
echo "# ---------------------------------------------"
#
