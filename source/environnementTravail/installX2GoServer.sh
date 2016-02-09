#!/bin/sh



# 5ème Partie : Installation de byobu et tmux
###############################################
# Installation de byobu
echo "# 5ème Partie : Installation de x2go server"
echo "###############################################"
echo "#"
echo '# Il est peut-etre necessaire de lancer ./docksshuttle1.sh'
echo '# avant de faire cette installation....'
echo '#'
echo "# http://http://www.tecmint.com/setup-remote-desktop-using-x2go-server-and-client-in-debian/"
echo "#"
echo "sudo apt-key adv --recv-keys --keyserver keys.gnupg.net E1F958385BFE2B6E"
      sudo apt-key adv --recv-keys --keyserver keys.gnupg.net E1F958385BFE2B6E
echo "#"
echo ""
echo "sudo rm /etc/apt/sources.list.d/x2go.list"
      sudo rm /etc/apt/sources.list.d/x2go.list
echo "sudo touch /etc/apt/sources.list.d/x2go.list"
      sudo touch /etc/apt/sources.list.d/x2go.list
echo "sudo chmod 666 /etc/apt/sources.list.d/x2go.list"
      sudo chmod 666 /etc/apt/sources.list.d/x2go.list
echo "#"
echo 'sudo echo "deb http://packages.x2go.org/debian jessie main" >> /etc/apt/sources.list.d/x2go.list'
      sudo echo "deb http://packages.x2go.org/debian jessie main" >> /etc/apt/sources.list.d/x2go.list
echo "#"
echo "sudo chmod 644 /etc/apt/sources.list.d/x2go.list"
      sudo chmod 644 /etc/apt/sources.list.d/x2go.list
echo "sudo apt-get update"
      sudo apt-get update
echo "#"
echo "sudo aptitude install x2goserver"
      sudo aptitude install x2goserver
echo "#"

