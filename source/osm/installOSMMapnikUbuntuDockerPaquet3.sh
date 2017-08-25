#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de mapnik, libmapnik et libmapnik-dev"
echo "######################################################"
echo "#"
echo "# Ici, on teste l'installation de mapnik à partir des paquets de la distribution"
echo "# ** A L INTERIEUR D UN CONTAINER DOCKER **"
echo ""
echo "#"
echo "#----------------------"
echo "# Avec une distribution Ubuntu"
echo "#----------------------"

echo "installOSMTools.sh"
      installOSMTools.sh
#echo "installOSMCartoCSS1.sh"
#      installOSMCartoCSS1.sh
echo "# installOSMMapnikUbuntuPaquet.sh"
      # installOSMMapnikUbuntuPaquet.sh
echo "# installOSMPythonMapnikUbuntu.sh"
      # installOSMPythonMapnikUbuntu.sh
echo "# ./installOSMTilestache.sh"
      installOSMTilestache.sh
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
#echo "# ./installOSMMapnikUbuntuSource.sh"
##echo "# ./installOSMMapnikUbuntuPaquet.sh"
####echo "# ./installOSMPythonMapnikDebian"
echo "# ./installOSMPythonMapnikUbuntu"
echo "# ./installOSMTirex.sh"
####echo "# ./installOSMTilemanDebian.sh"
echo "# ./installOSMTilemanUbuntu.sh"
echo "#----------------------"
echo "#"
