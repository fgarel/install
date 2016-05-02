#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de mapnik, tirex, tileman"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de tirex et tileman"
echo "#"
echo "# Attention, il faut d'abord installer mapnik !"
echo "# installOSMMapnik.sh"
echo "#"
echo "# Avant d'installer tirex et tileman, il faut en effet que mapnik soit"
echo "# installé en premier."
echo "# Après installation de mapnik, il faut ensuite "
echo "# redemarrer un nouveau shell, de facon a ce que mapnik-config soit connu"
echo "# puis enfin installer tirex et tilman"
echo "#"
echo "# Installation de tirex "
echo "#"
echo "# https://github.com/openstreetmap/tirex"
echo "#"
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "rm -rf tirex"
      rm -rf tirex
echo "git clone https://github.com/geofabrik/tirex.git"
      git clone https://github.com/geofabrik/tirex.git
echo "cd tirex"
      cd tirex
echo "sudo aptitude install libipc-sharelite-perl"
      sudo aptitude install libipc-sharelite-perl
echo "make"
      make
echo "make clean"
      make clean
echo "#"
echo "# Attention : Pour ce qui est de l'installation,"
echo "# la commande "
echo "# make install"
echo "# semble fonctionner (si mapnik a été préalablement installé)"
echo "# cependant, nous avons eu ce type d'erreur"
echo "# Cannot open master UNIX domain socket: No such file or directory"
echo "# et d'après cette liste de discussion,"
echo "# https://lists.openstreetmap.org/pipermail/dev/2011-June/023004.html"
echo "# la solution est de passer par la fabrication de paquet debian"
echo "# non pas avec"
echo "# make deb"
echo "# mais avec"
echo "# dpkg-buildpackage -us -uc"
echo "#"
echo "# sudo make install"
      # sudo make install
echo "# sudo make install-example-map"
      # sudo make install-example-map
echo "sudo aptitude install devscripts"
      sudo aptitude install devscripts
echo "#make deb"
      #make deb
echo "#make deb-clean"
      #make deb-clean
echo "dpkg-buildpackage -us -uc"
      dpkg-buildpackage -us -uc
echo "#"
echo "# Les paquets sont placés dans le repertoire parent"
echo "# /home/fred/Documents/install/source"
echo "#"
echo "sudo dpkg -i ../tirex-core.deb"
      sudo dpkg -i ../tirex-core_0.4.1precise1_amd64.deb
echo "sudo dpkg -i ../tirex-backend-mapnik.deb"
      sudo dpkg -i ../tirex-backend-mapnik_0.4.1precise1_amd64.deb
echo "sudo dpkg -i ../tirex-example-map.deb"
      sudo dpkg -i ../tirex-example-map_0.4.1precise1_amd64.deb
echo "#sudo dpkg -i ../tirex-syncd.deb"
      #sudo dpkg -i ../tirex-syncd_0.4.1precise1_amd64.deb
echo "#"
echo "#"
echo "sudo aptitude install libtest-simple-perl"
      sudo aptitude install libtest-simple-perl
echo "sudo aptitude install libtest-harness-perl"
      sudo aptitude install libtest-harness-perl
echo "prove"
      prove
echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd
echo "#"
echo "#---------------------------------------------"
echo "# Utilisation de tirex "
echo "#"
echo "# http://wiki.openstreetmap.org/wiki/Tirex/Quick_Start"
echo "#"
echo "# tirex-status --once --extended"
echo "# tail -f /var/log/syslog"
echo "# tail -f /var/log/tirex/jobs.log"
echo "# ls -al /var/lib/tirex/tiles/test"
echo "# tirex-batch --prio=1 map=test z=0 x=0 y=0"
echo "# ls -al /var/lib/tirex/tiles/test/0/0/0/0/0/0.meta"
echo "#---------------------------------------------"
echo "#"
echo "# La suite ?"
echo "# ./installOSMTileman.sh"


echo "#"
