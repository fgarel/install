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
#
# Reveil de tux0
#
echo "#"
echo "#"
echo "# Attention, ce script est a executer sur le reseau local de"
echo "# la machine à reveiller"
echo "#"
echo "#"
echo "# Reveil de la machine..."
echo "# "
# 
sudo synonet --wake 00:16:17:CD:2A:A7 eth0
#
# attente du ping
#
# http://serverfault.com/questions/42021/how-to-ping-in-linux-until-host-is-known
#
echo "# "
echo "# On attend que la machine reponde au ping..."
echo "# "
#
#
until sudo ping -c1 192.168.1.45 &>/dev/null; do :; done

#
# sur tux0, il faut lancer l'ouverture du demi-tunnel
#
# http://unix.stackexchange.com/questions/119894/single-command-to-login-to-ssh-and-run-program
#
echo "# "
echo "# Sur la machine distante, on lance son ouverture (demi-tunnel)"
echo "# "
#
ssh -t 192.168.1.45 ./ssh_open_host_tux0.sh 
