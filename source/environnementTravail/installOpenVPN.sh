#!/bin/sh

echo "#"
echo "# la doc est ici"
echo "# https://angristan.fr/installer-facilement-serveur-openvpn-debian-ubuntu-centos/"
echo "#"
echo "# Téléchargement d'un script qui automatise l'installation"
echo "wget --no-check-certificate https://raw.githubusercontent.com/Angristan/OpenVPN-install-nyr/master/openvpn-install.sh"
      wget --no-check-certificate https://raw.githubusercontent.com/Angristan/OpenVPN-install-nyr/master/openvpn-install.sh
echo "chmod +x openvpn-install.sh"
      chmod +x openvpn-install.sh
echo "sudo ./openvpn-install.sh"
      sudo ./openvpn-install.sh
echo "#"
