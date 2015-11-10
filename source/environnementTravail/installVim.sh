#!/bin/sh


# 6ème Partie : Installation de vim et spf13-vim3
###############################################
# Installation de vim et spf13-vim3
echo "# 6ème Partie : Installation de vim et spf13-vim3"
echo "###############################################"
echo "#"
echo "# La doc sur spf13-vim3 est ici :"
echo "# https://github.com/spf13/spf13-vim"
echo "#"
echo "# Installation du paquet vim"
echo "#"
sudo apt-get install vim
echo ""
echo "# Installation ou mise à jour ?"
echo "# Par défaut, ce script considère que,"
echo "# relancé plusieurs fois de suite,"
echo "# c'est une mise à jour qu'il faut faire."
echo "#"
echo "# Si l'utilisateur souhaite faire l'installation initiale,"
echo "# alors, il faut décommenter les lignes suivantes"
echo "#"
echo "#-----------------------------------------------"
echo "# Installation de spf13-vim3"
echo "#"
echo "curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh"
echo "#"
echo "#-----------------------------------------------"
echo "#"
echo "# Mise à jour de spf13-vim3"
echo "#"
echo "# cf http://vim.spf13.com"
echo "#"
cd $HOME/.spf13-vim-3/
git pull
vim +BundleInstall! +BundleClean +q +q
echo "#"
echo "# Configuration de vim"
echo "# https://github.com/fgarel/myDebianInstall01/blob/master/usr/sbin/bfaptitudeinstallvim01b.sh"
echo "#"
echo ""
