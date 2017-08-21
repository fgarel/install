#!/bin/sh



echo "# dockerInside1.sh"
echo "###############################################"

echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
      echo $OLDPWDFG
echo "#"
echo "cd ~"
      cd ~
echo "sudo chown -R fred:fred ."
      sudo chown -R fred:fred .
echo "#"

echo "cd ~/Documents/install/source/environnementTravail"
      cd ~/Documents/install/source/environnementTravail
echo "./installAll.sh"
      ./installAll.sh
echo "./installFonts.sh"
      ./installFonts.sh
echo "#"
echo "cd ~/Documents/install/source/osm"
      cd ~/Documents/install/source/osm
echo "./installOSMMapnikUbuntuDockerPaquet3.sh"
      ./installOSMMapnikUbuntuDockerPaquet3.sh
echo "#"

echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
