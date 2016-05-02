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
# Reveil de la machine
#
echo '#'
echo '# Au préalable et si cela est nécessaire, à partir de la machine VLR6180X, il faut réveiller VLR6180Y'
echo '#'
echo '# wakeonlan 18:03:73:2f:3b:7d'
echo '#'

#
# Fabrication du troisième tiers du tunnel "DS214" (entre la machine VLR6180X et la machine VLR6180Y)
# (ports 10000 et +)
# et comme on peut le faire en meme temps,
# Fabrication du troisième tiers du tunnel "mail.cdalr.fr" (entre la machine VLR6180X et la machine VLR6180Y)
# (ports 40000 et +)
#
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 15900:localhost:5900 \
    -L 15432:localhost:5432 \
    -L 10443:localhost:443 \
    -L 10080:localhost:80 \
    -L 10022:localhost:22 \
    -L 45900:localhost:5900 \
    -L 45432:localhost:5432 \
    -L 40443:localhost:443 \
    -L 40080:localhost:80 \
    -L 40022:localhost:22 \
    fred@VLR6180Y
#
echo "# "
echo "# Maintenant, à partir de VLR6180X, il est possible de se connecter vers :"
echo "# VLR6180Y => ssh -p 40022 fred@localhost"
echo "#      ou  => ssh -p 10022 fred@localhost"
echo "# "
#
