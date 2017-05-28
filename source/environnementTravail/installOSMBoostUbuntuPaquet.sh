#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de boost"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de boost"
echo "#"
echo "# boost est nécessaire pour compiler mapnik"
echo "#"
echo "# http://www.boost.org/doc/libs/1_61_0/more/getting_started/unix-variants.html"
echo "#"
echo "#"
echo "# Boost sera installé grace aux paquets de la distribution"
echo "#"

echo "#"
echo "# Il faut desinstaller les installations de boost qui ont été réalisées avec les sources"
echo "#"
#echo "cd .."
#      cd ..
echo "pwd"
      pwd
echo "#"
echo "# Desinstallation de boost source"
echo "#"
echo "#"
echo "sudo rm -rf ../boost_1_63_0"
      sudo rm -rf ../boost_1_63_0
echo "#"
echo "# Desinstallation de icu source"
echo "#"
echo "sudo rm -rf ../icu"
      sudo rm -rf ../icu
echo "#"
#echo "cd ../environnementTravail"
#      cd ../environnementTravail
echo "pwd"
      pwd
echo "# Il faut vider la base de ldconfig"
echo "#"
echo "# Pour mettre à jour son contenu :"
echo "# sudo ldconfig"
echo "#"
echo "# Pour voir son contenu :"
echo "# sudo ldconfig -p"
echo "#"
echo "# Pour voir les entrées relatives à boost 1.63"
echo "# sudo ldconfig -p | grep boost"
echo "sudo ldconfig -p | grep boost"
      sudo ldconfig -p | grep boost
echo "# sudo ldconfig -p | grep boost | grep 1.63"
echo "# sudo ldconfig -p | grep boost | grep 1.63 | cut -f 2 -d '>'"
echo "# "
echo "#"
echo "# Pour supprimer les entrées relatives à boost 1.63"
echo "sudo ldconfig -p | grep boost | grep 1.63 | cut -f 2 -d '>' | xargs -I{} sudo rm {}"
      sudo ldconfig -p | grep boost | grep 1.63 | cut -f 2 -d '>' | xargs -I{} sudo rm {}
echo "# "
echo "# Mise à jour du contenu :"
echo "sudo ldconfig"
      sudo ldconfig
echo "#"
echo "# Vérification :"
echo "sudo ldconfig -p | grep boost | grep 1.63"
      sudo ldconfig -p | grep boost | grep 1.63
echo "#"
echo "#"
echo "# Installation de boost a partir des paquets de la distribution"
echo "#"
echo "sudo aptitude install -y libboost-filesystem1.58.0"
      sudo aptitude install -y libboost-filesystem1.58.0
echo "sudo aptitude install -y libboost-filesystem1.58-dev"
      sudo aptitude install -y libboost-filesystem1.58-dev
echo "sudo aptitude install -y libboost-system1.58.0"
      sudo aptitude install -y libboost-system1.58.0
echo "sudo aptitude install -y libboost-system1.58-dev"
      sudo aptitude install -y libboost-system1.58-dev
echo "sudo aptitude install -y libboost-regex1.58.0"
      sudo aptitude install -y libboost-regex1.58.0
echo "sudo aptitude install -y libboost-regex1.58-dev"
      sudo aptitude install -y libboost-regex1.58-dev
echo "#"
echo "sudo ldconfig"
      sudo ldconfig
echo "#"
echo "#----------------------"
echo "# Test de l'installation de boost :"
echo "#----------------------"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSM.sh"
#echo "# ./installOSMCartoCSS.sh"
#echo "# ./installOSMBoostDebian.sh"
echo "# ./installOSMMapnikDebian.sh"
##echo "# ./installOSMMapnikUbuntu.sh"
echo "# ./installOSMPythonMapnikDebian"
##echo "# ./installOSMPythonMapnikUbuntu"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
##echo "# ./installOSMTilemanUbuntu.sh"
echo "#----------------------"
