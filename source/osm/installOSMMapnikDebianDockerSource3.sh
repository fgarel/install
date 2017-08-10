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
echo "#----------------------"
echo "# Avec une distribution Debian"
echo "#----------------------"

echo "# ./installOSMTools.sh"
      ./installOSMTools.sh
echo "# ./installOSMCartoCSS.sh"
      ./installOSMCartoCSS.sh
####echo "# ./installOSMBoostDebian.sh"
####echo "# ./installOSMMapnikDebianPaquet.sh"
#echo "# ./installOSMMapnikDebianSource.sh"
#      ./installOSMMapnikDebianSource.sh
echo "# ./installOSMPythonMapnikDebian.sh"
      ./installOSMPythonMapnikDebian.sh
echo "# ./installOSMTirex.sh"
      ./installOSMTirex.sh
echo "# ./installOSMTilemanDebian.sh"
#      ./installOSMTilemanDebian.sh
echo "#----------------------"
echo "#"

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
echo "#   (mapnik-render est normalement dans le paquet mapnik-utils)"
echo "    mapnik-render \\"
echo "      testMapnik.xml \\"
echo "      testMapnik.png ;\\"
echo "    display testMapnik.png"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSM.sh"
#echo "# ./installOSMCartoCSS.sh"
####echo "# ./installOSMBoostDebian.sh"
#echo "# ./installOSMMapnikUbuntuSource.sh"
##echo "# ./installOSMMapnikUbuntuPaquet.sh"
####echo "# ./installOSMPythonMapnikDebian"
echo "# ./installOSMPythonMapnikUbuntu"
echo "# ./installOSMTirex.sh"
####echo "# ./installOSMTilemanDebian.sh"
echo "# ./installOSMTilemanUbuntu.sh"
echo "#----------------------"
echo "#"
