#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de mapnik, libmapnik et libmapnik-dev"
echo "######################################################"
echo "#"
echo "# Ici, on teste l'installation de mapnik à partir des paquets de la distribution"
echo "#"
echo ""
echo "#"

echo "#"
echo "sudo apt-get -y install fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra"
      sudo apt-get -y install fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra
echo "# Après installation des fonts, il faut les enregistrer"
echo "# https://wiki.debian.org/Fonts"
echo "fc-cache -fv # rebuilds cached list of fonts"
      fc-cache -fv
echo "#"
echo "sudo apt-get install mapnik-doc"
      sudo apt-get install mapnik-doc
#echo "sudo aptitude install python3-mapnik"
#      sudo aptitude install python3-mapnik
echo "sudo apt-get -y install libmapnik3.0"
      sudo apt-get -y install libmapnik3.0
echo "sudo apt-get -y install mapnik-utils"
      sudo apt-get -y install mapnik-utils
echo "#"
echo "sudo apt-get -y install libmapnik-dev"
      sudo apt-get -y install libmapnik-dev
echo "sudo apt-get -y install mapnik-vector-tile"
      sudo apt-get -y install mapnik-vector-tile
echo "#"
#echo "cd .."
#      cd ..
echo "pwd"
      pwd
echo "#"
echo "# Nettoyage des installations précédentes"
echo "# sudo updatedb ; locate mapnik | grep fred | pager"
echo "# sudo updatedb ; locate mapnik | grep -v fred"
echo "sudo -H rm -rf /usr/local/lib/mapnik"
      sudo -H rm -rf /usr/local/lib/mapnik
echo "sudo -H rm -rf /usr/local/lib/libmapnik*"
      sudo -H rm -rf /usr/local/lib/libmapnik*
echo "sudo -H rm -rf /usr/local/include/mapnik"
      sudo -H rm -rf /usr/local/include/mapnik
echo "sudo -H rm -rf /usr/local/bin/mapnik*"
      sudo -H rm -rf /usr/local/bin/mapnik*
echo "sudo ldconfig"
      sudo ldconfig
#echo "rm -rf mapnik"
#      rm -rf mapnik
#echo '# Installation de mapnik'
#echo '#   http://mapnik.org/pages/downloads.html'
#echo "#   https://github.com/mapnik/mapnik/wiki/UbuntuInstallation"
#echo '#'
#echo "sudo aptitude install mapnik-utils mapnik-doc mapnik-vector-tile"
#      sudo aptitude install mapnik-utils mapnik-doc mapnik-vector-tile
#echo "cd environnementTravail"
#      cd environnementTravail
echo "pwd"
      pwd
echo "#"
echo "# Attention, avant tout utilisation, il faut ajouter des variables d'environnement"
echo "#"
#echo "../mapnik/mapnik-settings.env"
#      ../mapnik/mapnik-settings.env
#echo "source ../mapnik/mapnik-settings.env"
#      source ../mapnik/mapnik-settings.env
echo "#"
echo "# Vérification de ces variables d'environnement"
echo "env | grep PROJ"
      env | grep PROJ
echo "#----------------------"
echo "# Test de l'installation de mapnik :"
echo "#----------------------"
#echo "# Test 1 : test interne : make test"
#echo "#   https://github.com/mapnik/mapnik/wiki/UbuntuInstallation"
#echo "    cd ../mapnik ; export JOBS=1 ; make test ; cd ../environnementTravail"
#echo "    cd ../mapnik ; export JOBS=16 ; make test ; cd ../environnementTravail"
#echo "# Test 2 : test interne : registration ?"
#echo "    cd ../mapnik ; \\"
#echo "    ./test/standalone/font_registration_test-bin ; \\"
#echo "    cd ../environnementTravail"
#echo "    ../mapnik/test/standalone/font_registration_test-bin"
#echo "    cd ../mapnik ; \\"
#echo "    ./test/standalone/datasource_registration_test-bin ; \\"
#echo "    cd ../environnementTravail"
#echo "    ../mapnik/test/standalone/datasource_registration_test-bin"
echo "# Test 3 : mapnik-config"
echo "#   (mapnik-config est normalement dans le paquet libmapnik-dev)"
echo "#   La doc est ici"
echo "#   https://github.com/mapnik/mapnik/wiki/GettingStartedInPython"
echo '    mapnik-config -v # should return a version number'
echo '    mapnik-config --input-plugins'
echo '    ls -al $(mapnik-config --input-plugins)'
echo "# Test 4 : mapnik-render"
echo "#   https://github.com/mapnik/mapnik/wiki/GettingStartedInXML"
echo "#   Attention, il faut etre dans le repertoire mapnik !!!!"
echo "#   (mapnik-render est normalement dans le paquet mapnik-utils)"
echo "    cd ../mapnik ; \\"
echo "    mapnik-render \\"
echo "    ../environnementTravail/testMapnik.xml \\"
echo "    ../environnementTravail/testMapnik.png ;\\"
echo "    cd ../environnementTravail ; \\"
echo "    display testMapnik.png"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSM.sh"
#echo "# ./installOSMCartoCSS.sh"
####echo "# ./installOSMBoostDebian.sh"
#echo "# ./installOSMMapnikDebianPaquet.sh"
####echo "# ./installOSMMapnikUbuntuSource.sh"
##echo "# ./installOSMMapnikUbuntuPaquet.sh"
echo "# ./installOSMPythonMapnikDebian.sh"
##echo "# ./installOSMPythonMapnikUbuntu.sh"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
##echo "# ./installOSMTilemanUbuntu.sh"
echo "#----------------------"
echo "#"