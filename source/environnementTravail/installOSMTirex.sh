#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de mapnik, tirex, tileman"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de tirex"
echo "#"
echo "# Attention, il faut d'abord installer mapnik et python-mapnik"
echo "# ./installOSMMapnik.sh"
echo "# ./installOSMPythonMapnik.sh"
echo "#"
echo "#"
echo "# Avant d'installer tirex et tileman, il faut en effet que mapnik soit présent."
echo "# Après installation de mapnik, il faut "
echo "# redemarrer un nouveau shell, de facon a ce que mapnik-config soit connu"
echo "# pour enfin installer tirex et tilman"
echo "#"
echo "# Installation de tirex "
echo "#"
echo "# https://github.com/openstreetmap/tirex"
echo "#"
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "rm -rf tirex*"
      rm -rf tirex*
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
echo "#"
###echo "# Installation du paquet debian libmapnik3.0"
###echo "# libmapnik3.0 semble etre necessaire pour l'installation de tirex"
###echo "# cf. problème de librairies partagées"
###echo "#"
###echo "sudo aptitude install libmapnik3.0"
###      sudo aptitude install libmapnik3.0
echo "#make deb"
      #make deb
echo "#make deb-clean"
      #make deb-clean
echo "dpkg-buildpackage -us -uc"
      dpkg-buildpackage -us -uc
echo "#"
echo "# Si il y a des problèmes de librairies partagées,"
echo "# c'est à dire, si on a une erreur lors de la construction des paquets"
echo "# Et si cette erreur provient de la commande dpkg-shlibdeps,"
echo "# alors, la doc est ici :"
echo "# http://www.cyberciti.biz/tips/linux-shared-library-management.html"
echo "# http://manpages.ubuntu.com/manpages/wily/fr/man1/dpkg-shlibdeps.1.html"
echo "#"
echo "# Pour confirmer cette erreur, il faut donc aller dans le repertoire tirex,"
echo "# puis, taper la commande :"
echo "# dpkg-shlibdeps debian/tirex-backend-mapnik/usr/lib/tirex/backends/mapnik"
echo "#"
echo "# On se rend compte que la librairie n'a pas été installé avec un paquet debian"
echo "# car l'erreur est :"
echo "# pas d'information de dépendance trouvée pour /usr/local/lib/libmapnik.so.3.0"
echo "# Indication: vérifiez que la bibliothèque provienne bien d'un paquet."
echo "#"
echo "# Résolution de cette erreur"
echo "#"
echo "# La solution trouvé a été d'installer le paquet libmapnik3.0"
echo "# avant de lancer la commande dpkg-buildpackage"
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
echo "#----------------------"
echo "# Utilisation de tirex "
echo "#----------------------"
echo "# La doc est ici"
echo "# http://wiki.openstreetmap.org/wiki/Tirex/Quick_Start"
echo "#"
echo "# tirex-status --once --extended"
echo "# tail -f /var/log/syslog"
echo "# tail -f /var/log/tirex/jobs.log"
echo "# ls -al /var/lib/tirex/tiles/test"
echo "# tirex-batch --prio=1 map=test z=0 x=0 y=0"
echo "# ls -al /var/lib/tirex/tiles/test/0/0/0/0/0/0.meta"
echo "#----------------------"
echo "#"
echo "# En examinant les logs : "
echo "# tail -f /var/log/syslog"
echo "# on se rend compte que mapnik-render a un problème..."
echo "# Test de mapnik-render"
echo "#  - si mapnik-render a ete installé à partir des sources de mapnik (3.0.12):"
echo "#    /usr/local/bin/mapnik-render testMapnik.xml testMapnik.png"
echo "#  - si mapnik-render a ete installé à partir du paquet mapnik-utils (3.0.9)"
echo "#    /usr/bin/mapnik-render testMapnik.xml testMapnik.png"
echo "#"
echo "# Si on obtient l'erreur comme quoi le plugin shape est absent"
echo "#   Error Could not create datasource for type: 'shape'"
echo "#   (no datasource plugin directories have been successfully registered)"
echo "# alors, il faut, selon cette page"
echo "#   https://github.com/mapnik/mapnik/wiki/PluginArchitecture"
echo "#   https://github.com/mapnik/mapnik/wiki/ShapeFile"
echo "# ... recompiler mapnik avec les bons paramètres (???)"
echo "#"
echo "# Avant de recompiler, un nouveau test :"
echo "#   ls -al /usr/local/lib/mapnik/input"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSMMapnik.sh"
#echo "# ./installOSMPythonMapnik"
#echo "# ./installOSMCartoCSS.sh"
#echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
echo "#----------------------"


echo "#"
