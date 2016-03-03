#!/bin/sh


# 6ème Partie : Installation d'outils pour respect vie privee3
###############################################
# Installation d'outils pour respect vie privee
echo "# 6ème Partie : Installation de vpn"
echo "###############################################"
echo "#"
echo "# La doc sur vpn est ici :"
echo "# https://github.com/sbandur84/Free-OpenVPN-Connect-for-Linux"
echo "#"
echo "# Installation de Free-OpenVPN-Connect-for-Linux"
echo "#"
echo "git clone https://github.com/sbandur84/Free-OpenVPN-Connect-for-Linux"
      git clone https://github.com/sbandur84/Free-OpenVPN-Connect-for-Linux
echo "git fetch https://github.com/sbandur84/Free-OpenVPN-Connect-for-Linux"
      git fetch https://github.com/sbandur84/Free-OpenVPN-Connect-for-Linux
echo "#"
#echo "# cd Free-OpenVPN-Connect-for-Linux"
# cd Free-OpenVPN-Connect-for-Linux
#echo "# chmod +x FreeVPNconnect.sh"
# chmod +x FreeVPNconnect.sh
echo "chmod +x Free-OpenVPN-Connect-for-Linux/FreeVPNconnect.sh"
      chmod +x Free-OpenVPN-Connect-for-Linux/FreeVPNconnect.sh
echo "#"
echo "#-----------------------------------------------"
echo "# Utilisation de Free-OpenVPN-Connect-for-Linux"
echo "#"
echo "# ./Free-OpenVPN-Connect-for-Linux/FreeVPNconnect.sh"
echo "#"
echo "# 1ere utilisation : Installation et paramètrage"
echo "#"
echo "# 6) Install / 1) Deb / 1) Install "
echo "# 3) Download VPN Profiles / 1) VPNbook.vom / 1)  Euro1 "
echo "#"
echo "# 2eme utilisation : Choix d'un profil et connection"
echo "#"
echo "# 1) Profil / 1) TCP443 "
echo "# 2) Connect "
echo "#"
echo "#-----------------------------------------------"
echo "#"
echo "# Installation de tor"
echo "#"
echo "sudo aptitude install tor"
      sudo aptidude install tor
echo "sudo aptitude install torbrowser"
      sudo aptidude install torbrowser
echo "#"
echo "# https://github.com/micahflee/torbrowser-launcher/issues/206"
echo "# sudo apt-get install python2.7-dev"
      sudo apt-get install python2.7-dev
echo "pip2 install --upgrade --user twisted"
      pip2 install --upgrade --user twisted
echo "sudo aptitude install libffi-dev"
      sudo aptitude install libffi-dev
echo "pip2 install --user service_identity"
      pip2 install --user service_identity
echo ""
echo "#"
echo "# https://github.com/micahflee/torbrowser-launcher/issues/206"
echo "# https://github.com/micahflee/torbrowser-launcher/issues/224"
echo "# https://github.com/micahflee/torbrowser-launcher"
echo "#"
echo "sudo add-apt-repository ppa:micahflee/ppa"
      sudo add-apt-repository ppa:micahflee/ppa
echo "sudo apt-get update"
      sudo apt-get update
echo "sudo apt-get install torbrowser-launcher"
      sudo apt-get install torbrowser-launcher
echo "#"
echo "#"
echo ""
