#!/bin/sh

echo "# nettoyage initiale des fichirs de configuration"
echo "# #####################################"
sudo rm /etc/apt/sources.list.d/micahflee-ubuntu-ppa-disco.list
sudo rm /etc/apt/sources.list.d/neovim-ppa-ubuntu-stable-disco.list
sudo rm /etc/apt/sources.list.d/vincent-vandevyvre-ubuntu-vvv-disco.list
sudo rm /etc/apt/sources.list.d/yannubuntu-ubuntu-boot-repair-disco.list
sudo rm /etc/apt/sources.list.d/*.list.save

echo "# recuperation des clefs"
echo "# ######################"
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository ppa:yannubuntu/boot-repair
sudo add-apt-repository ppa:micahflee/ppa
sudo add-apt-repository ppa:vincent-vandevyvre/vvv
wget -O TeamViewer2017.asc https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc
sudo apt-key add TeamViewer2017.asc
wget -O - https://qgis.org/downloads/qgis-2017.gpg.key | gpg --import
gpg --export --armor CAEB3DC3BDF7FB45 | sudo apt-key add -

echo "# second nettoyage des fichirs de configuration"
echo "# #####################################"
sudo rm /etc/apt/sources.list.d/micahflee-ubuntu-ppa-disco.list
sudo rm /etc/apt/sources.list.d/neovim-ppa-ubuntu-stable-disco.list
sudo rm /etc/apt/sources.list.d/vincent-vandevyvre-ubuntu-vvv-disco.list
sudo rm /etc/apt/sources.list.d/yannubuntu-ubuntu-boot-repair-disco.list
sudo rm /etc/apt/sources.list.d/*.list.save

echo "# recopie des fichirs de configuration"
echo "# #####################################"
sudo cp /home/fred/Documents/install/source/environnementTravail/apt/sources.list.d/* /etc/apt/sources.list.d/
sudo cp /home/fred/Documents/install/source/environnementTravail/apt/preferences.d/* /etc/apt/preferences.d/

echo "# update"
echo "# #####################################"
sudo apt-get update
