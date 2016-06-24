#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de python-mapnik"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de python-mapnik dans l'environnement général"
echo "#"
echo "# Il semble que le lien entre python et mapnik"
echo "# n'est pas automatique. "
echo "#"
echo "# En effet, après avoir installé mapnik, il n'est pas "
echo "# possible de faire un import python : le module n'est pas connu"
echo "#"
echo "# Il s'agit donc d'installer python-mapnik en plus de mapnik"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "# Installation de python-mapnik à partir des sources"
echo "#"
echo "# https://github.com/mapnik/python-mapnik"
echo "#"
echo "# Attention : Installation de python-mapnik .....????"
echo "#"
echo "sudo aptitude install python-mapnik"
      sudo aptitude install python-mapnik
# echo "sudo aptitude remove python-mapnik"
#       sudo aptitude remove python-mapnik
# echo "cd .."
#       cd ..
# echo "pwd"
#       pwd
# echo "rm -rf python-mapnik"
#       rm -rf python-mapnik
# echo "git clone https://github.com/mapnik/python-mapnik"
#       git clone https://github.com/mapnik/python-mapnik
# echo "cd python-mapnik"
#       cd python-mapnik
# echo "pwd"
#       pwd
# echo "sudo python setup.py develop"
#       sudo python setup.py develop
# echo "sudo python setup.py install"
#       sudo python setup.py install
# echo "#"
# echo "cd ../environnementTravail"
#       cd ../environnementTravail
# echo "pwd"
#       pwd
echo "#"
echo "#----------------------"
echo "# test de l'installation de python-mapnik :"
echo "#----------------------"
echo "# La doc est ici"
echo "# https://github.com/mapnik/mapnik/wiki/GettingStartedInPython"
echo '# mapnik-config -v # should return a version number'
echo '# python3 -c "import mapnik;print(mapnik.__file__)" # should return the path to the python bindings and no errors'
echo '# python -c "import sys; print '."'\n'".'.join(sys.path)"'
echo "#----------------------"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSMMapnik.sh"
#echo "# ./installOSMPythonMapnik"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
echo "#----------------------"
echo "#"

echo "#"
