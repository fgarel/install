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
# Fabrication de la premiere partie du tunnel "29_vlr6180y" (entre la machine cliente et vlr6180y)
#
echo "# Mot de passe pour fred@vlr6180y.mairie.fr"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 52029:localhost:22 \
    -L 55029:localhost:5432 \
    -L 55043:ssh.cdalr.fr:45043 \
    -L 55046:ssh.cdalr.fr:45046 \
    -L 55051:systechinf06.agglo-larochelle.fr:5432 \
    fred@vlr6180y.mairie.fr
#
#
# Fabrication de la premiere partie du tunnel "43_cdalr" (entre la machine cliente et ssh.cdalr.fr)
#
#
#
echo "# "
echo "# "
echo "# ---------------------------------------------"
echo "# Maintenant, à partir de votre machine, il est possible de se connecter vers :"
echo "# tux0         => ssh -p 62231 localhost"
echo "# zenbook      => ssh -p 62232 localhost"
echo "# VLR6180X     => ssh -p 62238 localhost"
echo "# VLR6180Y     => ssh -p 62239 localhost"
echo "# ssh.cdalr.fr => ssh -p 22 fred@localhost"
echo "#"
echo "# ---------------------------------------------"
echo "# "
echo "# 6.... : connexion indirecte"
echo "# .22.. : protocole ssh"
echo "#         00 = 5900 = vnc"
echo "#         32 = 5432 = postgresql"
echo "#         43 = 443  = https"
echo "#         80 = 80   = http"
echo "# ...3. : via ssh.cdalr.fr"
echo "#         4 = freeshell.de"
echo "#         5 = ds214"
echo "# ....1 : destinataire 1 = tux0"
echo "#         ...."
echo "# "
echo "# ---------------------------------------------"
echo "# postgresql"
echo "# psql -h localhost -p 62390 -d postgres -U sig"
echo '#'
echo "# En deux parties de tunnel "
echo "# 6.... : connexion indirecte"
echo "# .32.. : protocole postgresql"
echo "# ...3. : via cdalr"
echo "# ....0 : local après le tunnel => cadlr"
echo "# ....1 : local après le tunnel => tux0"
echo "# ....2 : local après le tunnel => zenbook"
echo "# ....8 : local après le tunnel => VLR6180X"
echo "# ....9 : local après le tunnel => VLR6180Y"
echo "# "
echo "# 63230 : cdalr_sandbox_cda_via_tunnel_cdalr"
echo "# 63239 : vlr6180y_espu_fred_via_tunnel_cdalr"
echo "# "
echo "# En trois parties de tunnel "
echo "# 6.... : connexion indirecte"
echo "# .2... : protocole postgresql"
echo "# ..3.. : via ssh.cdalr.fr"
echo "# ...9. : via VLR6180Y"
echo "# ....0 : distante après le troisième tiers = dsibdd09"
echo "# ....1 : distante après le troisième tiers = brulhois"
echo "# ....2 : distante après le troisième tiers = dsiappli39"
echo "# "
echo "# 62380 : dsibdd09_postgres_sig_via_tunnel_cdalr_vlr6180x"
echo "# 62390 : dsibdd09_postgres_sig_via_tunnel_cdalr_vlr6180y"
echo "# 62480 : dsibdd09_postgres_sig_via_tunnel_freeshell_vlr6180x"
echo "# 62490 : dsibdd09_postgres_sig_via_tunnel_freeshell_vlr6180y"
echo "# "
echo "# 62381 : brulhois_sig_prenomnom_via_tunnel_cdalr_vlr6180x"
echo "# 62391 : brulhois_sig_prenomnom_via_tunnel_cdalr_vlr6180y"
echo "# 62481 : brulhois_sig_prenomnom_via_tunnel_freeshell_vlr6180x"
echo "# 62491 : brulhois_sig_prenomnom_via_tunnel_freeshell_vlr6180y"
echo "# "
echo "# 62382 : dsiappli39_sig_prenomnom_via_tunnel_cdalr_vlr6180x"
echo "# 62392 : dsiappli39_sig_prenomnom_via_tunnel_cdalr_vlr6180y"
echo "# 62482 : dsiappli39_sig_prenomnom_via_tunnel_freeshell_vlr6180x"
echo "# 62492 : dsiappli39_sig_prenomnom_via_tunnel_freeshell_vlr6180y"
echo "# "
echo "# ---------------------------------------------"
echo "# Sur la machine dstante, on peut lancer le serveur vnc"
echo "#   x11vnc -display :0 -ncache 10"
echo "# Sur la machine locale, on peut lancer le viewer vnc"
echo "#   en mode console"
echo "#     vncviewer -compresslevel 5 -via fred@localhost localhost:60039"
echo "#   en mode graphique"
echo "#     Internet / Visionneur de bureaux distants"
echo "#     Se connecter"
echo "#     Hote                               : localhost:60039"
echo "#     Utiliser l'hote (comme tunnel ssh) : fred@localhost"
echo "# "
echo "# ---------------------------------------------"
echo "# "
echo "# "
echo "# ---------------------------------------------"
#
