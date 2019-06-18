#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation d'un environnement OSM, sur une machine Debian"
echo "###############################################"
echo "#"
echo "# Nous allons créer un environnement "
echo "# (Ici, il faut comprendre le mot environnement comme ensemble d'outils, "
echo "# et non pas comme une environnement virtuel python)"
echo "# pour faciliter la manipulation de données OSM."
echo "#"
echo "# La documentation sur l'installation et l'utilisation de cet"
echo "# environnement est détaillé dans"
echo "# Linux Magazine N°188"
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
echo "# ./installOSMMapnikDebianSource.sh"
      ./installOSMMapnikDebianSource.sh
echo "# ./installOSMPythonMapnikDebian.sh"
#      ./installOSMPythonMapnikDebian.sh
echo "# ./installOSMTirex.sh"
#      ./installOSMTirex.sh
echo "# ./installOSMTilemanDebian.sh"
#      ./installOSMTilemanDebian.sh
echo "#----------------------"
echo "#"
#echo "#----------------------"
#echo "# Avec une distribution Ubuntu"
#echo "#----------------------"
#echo "# ./installOSMTools.sh"
#      ./installOSMTools.sh
#echo "# ./installOSMCartoCSS.sh"
#      ./installOSMCartoCSS.sh
#echo "# ./installOSMMapnikUbuntuSource.sh"
#      ./installOSMMapnikUbuntuSource.sh
####echo "# ./installOSMMapnikUbuntuPaquet.sh"
#echo "# ./installOSMPythonMapnikUbuntu.sh"
#      ./installOSMPythonMapnikUbuntu.sh
#echo "# ./installOSMTirex.sh"
#      ./installOSMTirex.sh
#echo "# ./installOSMTilemanUbuntu.sh"
#      ./installOSMTilemanUbuntu.sh
#echo "#----------------------"
#echo "#"
echo "#"
