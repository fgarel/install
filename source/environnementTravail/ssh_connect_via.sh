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
# Fabrication de la premiere partie du tunnel "ssh.cdalr.fr" (entre la machine cliente et ssh.cdalr.fr)
#
echo "# Mot de passe pour cdalr.fr"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 60039:localhost:50039 \
    -L 63239:localhost:53239 \
    -L 64339:localhost:54339 \
    -L 60839:localhost:50839 \
    -L 62239:localhost:52239 \
    -L 60038:localhost:50038 \
    -L 63238:localhost:53238 \
    -L 64338:localhost:54338 \
    -L 60838:localhost:50838 \
    -L 62238:localhost:52238 \
    -L 60032:localhost:50032 \
    -L 63232:localhost:53232 \
    -L 64332:localhost:54332 \
    -L 60832:localhost:50832 \
    -L 62232:localhost:52232 \
    -L 60031:localhost:50031 \
    -L 63231:localhost:53231 \
    -L 64331:localhost:54331 \
    -L 60831:localhost:50831 \
    -L 62231:localhost:52231 \
    -L 62390:localhost:52390 \
    -L 62391:localhost:52391 \
    -L 62392:localhost:52392 \
    -L 62380:localhost:52380 \
    -L 62381:localhost:52381 \
    -L 62382:localhost:52382 \
    -L 63230:localhost:43230 \
    fred@cdalr.fr
#
#
# Fabrication d'un autre premier partie du tunnel "freeshell.de" (entre la machine cliente et freeshell.de)
#
echo "# Mot de passe pour ssh.freeshell.de"
ssh -f \
    -o ServerAliveInterval=240 \
    -N \
    -X \
    -L 60049:localhost:50049 \
    -L 63249:localhost:53249 \
    -L 64349:localhost:54349 \
    -L 60849:localhost:50849 \
    -L 62249:localhost:52249 \
    -L 60048:localhost:50048 \
    -L 63248:localhost:53248 \
    -L 64348:localhost:54348 \
    -L 60848:localhost:50848 \
    -L 62248:localhost:52248 \
    -L 60042:localhost:50042 \
    -L 63242:localhost:53242 \
    -L 64342:localhost:54342 \
    -L 60842:localhost:50842 \
    -L 62242:localhost:52242 \
    -L 60041:localhost:50041 \
    -L 63241:localhost:53241 \
    -L 64341:localhost:54341 \
    -L 60841:localhost:50841 \
    -L 62241:localhost:52241 \
    -L 62490:localhost:52490 \
    -L 62491:localhost:52491 \
    -L 62492:localhost:52492 \
    -L 62480:localhost:52480 \
    -L 62481:localhost:52481 \
    -L 62482:localhost:52482 \
    fgarel@ssh.freeshell.de \
    -p 443
#
#
# Fabrication d'un autre premiere partie du tunnel "fgarel.synology.me" (entre la machine perso et ssh.synology.me)
#
#echo "# Mot de passe pour fgarel.synology.me"
#ssh -f \
#    -o ServerAliveInterval=240 \
#    -N \
#    -X \
#    -L 60059:localhost:50059 \
#    -L 63259:localhost:53259 \
#    -L 64359:localhost:54359 \
#    -L 60859:localhost:50859 \
#    -L 62259:localhost:52259 \
#    -L 60058:localhost:50058 \
#    -L 63258:localhost:53258 \
#    -L 64358:localhost:54358 \
#    -L 60858:localhost:50858 \
#    -L 62258:localhost:52258 \
#    -L 60052:localhost:50052 \
#    -L 63252:localhost:53252 \
#    -L 64352:localhost:54352 \
#    -L 60852:localhost:50852 \
#    -L 62252:localhost:52252 \
#    -L 60051:localhost:50051 \
#    -L 63251:localhost:53251 \
#    -L 64351:localhost:54351 \
#    -L 60851:localhost:50851 \
#    -L 62251:localhost:52251 \
#    -L 62590:localhost:52590 \
#    -L 62580:localhost:52580 \
#    -L 62591:localhost:52591 \
#    -L 62581:localhost:52581 \
#    fred@fgarel.synology.me
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
