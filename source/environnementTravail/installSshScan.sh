#!/bin/sh



# 1ère Partie : installation de ssh_scan
###############################################
# installation de ssh_scan
echo "# Installation de ssh_scan"
echo "###############################################"
echo "#"
echo "# Autre utilitaire aussi a regarder : mida"
echo "#"
echo "# https://homputersecurity.com/2017/10/24/mida-loutil-denumeration-systeme-sous-linux/"
echo "#"
echo "git clone https://github.com/NullArray/MIDA-Multitool.git"
      git clone https://github.com/NullArray/MIDA-Multitool.git
echo "#"
echo "# La doc sur ssh_scan est ici :"
echo "# http://homputersecurity.com/2017/04/13/ssh_scan-le-scanneur-de-configuration-ssh/"
echo "#"
echo "# Installation de ruby (pour l'utilitaire gem)"
echo "sudo aptitude install ruby"
      sudo aptitude install ruby
echo "#"
echo "# Installation de ssh_scan (à l'aide de l'utilitaire gem)"
echo "sudo gem install ssh_scan"
      sudo gem install ssh_scan
echo "#"
echo "# Utilisation de ssh_scan"
echo "# sudo ssh_scan -t proxy.ville-larochelle.fr"
echo "# sudo ssh_scan -t 10.5.11.0-255              # pour scanner une plage d'adresse"
echo "# sudo ssh_scan -t 10.254.140.1-255"
echo "# Les plages sont disponibles sous dsiappli41_logigielsmairie_adressagereseau"
echo "# 10.5.11.200 vlr2177"
echo "# 10.5.11.205 vlr10923"
echo "# 10.5.11.215"
echo "# 10.5.11.254"
echo "#"
echo "# Cracker un mot de passe ssh : semi-automatique"
echo "###############################################"
echo "#"
echo "# La doc est ici :"
echo "# https://hackertarget.com/brute-forcing-passwords-with-ncrack-hydra-and-medusa/"
echo "#"
echo "# Installation de ncrack"
echo "sudo aptitude install ncrack"
      sudo aptitude install ncrack
echo "#"
echo "# Installation de hydra"
echo "sudo aptitude install hydra"
      sudo aptitude install hydra
echo "#"
echo "# Installation de medusa"
echo "sudo aptitude install medusa"
      sudo aptitude install medusa
echo "#"
echo "# Téléchargement d'une liste de mot de passe"
echo "#"
echo "# https://wiki.skullsecurity.org/Passwords"
echo "#"
echo "wget http://downloads.skullsecurity.org/passwords/500-worst-passwords.txt.bz2"
      wget http://downloads.skullsecurity.org/passwords/500-worst-passwords.txt.bz2
echo "#"
echo "bunzip2 500-worst-passwords.txt.bz2"
      bunzip2 500-worst-passwords.txt.bz2
echo "#"
echo "# Cracker un mot de passe ssh : à la main"
echo "###############################################"
echo "#"
echo "# La doc est ici :"
echo "# https://null-byte.wonderhowto.com/how-to/sploit-make-ssh-brute-forcer-python-0161689/"
echo "#"

echo "#"
echo "#"
echo "#"
