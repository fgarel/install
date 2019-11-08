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

#
#
# Reveil de dsipgsql9test
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
#
#
# wakeonlan


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
#until sudo ping -c1 dsipgsql9test &>/dev/null; do :; done
until ping -c1 dsiappli58.mairie.fr &>/dev/null; do :; done


#
# recopie du fichier
# ~/Documents/install/source/environementTravail/ssh_open_host_dsipgsql9test.#!/bin/sh
# vers
# /root/.tmp
# de la machine distante dsipgsql9test
scp /home/fred/Documents/install/source/environnementTravail/ssh_open_host_dsi3.sh root@dsiappli58.mairie.fr:.tmp


#
# sur dsipgsql9test, il faut lancer l'ouverture du demi-tunnel
#
# http://unix.stackexchange.com/questions/119894/single-command-to-login-to-ssh-and-run-program
#
echo "# "
echo "# Sur la machine distante, on lance son ouverture (demi-tunnel)"
echo "# "
#
#ssh -t dsiappli58.mairie.fr ./ssh_open_host_dsi3.sh
ssh -t root@dsiappli58.mairie.fr ./.tmp
