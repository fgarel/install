#!/bin/sh



# 1ère Partie : ajout de l'utilisateur fred au groupe sudo
###############################################
# ajout de l'utilisateur fred au groupe sudo
echo "# 1ère Partie : ajout de l'utilisateur fred au groupe sudo"
echo "###############################################"
echo "#"
echo "sudo adduser fred sudo"
      sudo adduser fred sudo
echo "#"
#echo "# Installation de aptitude"
#echo "sudo apt-get install aptitude"
#      sudo apt-get install aptitude
echo "#"
echo "sudo apt-get install -y apt-utils"
      sudo apt-get install -y apt-utils
echo "#"
echo "sudo apt-get install -y apt-file"
      sudo apt-get install -y apt-file
echo "#"
echo "sudo apt-file update"
      sudo apt-file update
echo "#"
echo "sudo apt-get install -y mlocate"
      sudo apt-get install -y mlocate
echo "#"
echo "sudo updatedb"
      sudo updatedb
echo "#"
echo "sudo apt-get install -y net-tools"
      sudo apt-get install -y net-tools
echo "#"
echo "sudo apt-get install -y iputils-ping"
      sudo apt-get install -y iputils-ping
echo "#"
echo "sudo apt-get install -y iproute2"
      sudo apt-get install -y iproute2
echo "#"
echo "# Test du parametrage de l'export display"
echo "# programme xeyes"
echo "sudo apt-get install -y x11-apps"
      sudo apt-get install -y x11-apps
echo "#"
echo "# transfert de fichier"
echo "# https://transfer.sh/"
echo "#"
echo "# https://github.com/warner/magic-wormhole"
echo "#"
echo "# partage de console => byobu (screen) ou teleconsole"
echo "# https://www.2daygeek.com/teleconsole-share-terminal-session-instantly-to-anyone-in-seconds/"
echo "# https://www.teleconsole.com/"
echo "#"
echo ""
