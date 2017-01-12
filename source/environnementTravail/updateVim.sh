#!/bin/sh


# 6ème Partie : Installation de vim et spf13-vim3
###############################################
# Installation de vim et spf13-vim3
echo "# 6ème Partie : Mise à jour de neovim et de spf13-vim3"
echo "######################################################"
echo "#"
echo "# La doc sur spf13-vim3 est ici :"
echo "# https://github.com/spf13/spf13-vim"
echo "#"
echo "# Installation du paquet vim ou installation de neovim"
echo "#"
echo "# En fait, on va utiliser spf13-vim3 qui est un"
echo "# script qui s'occupe d'installer et de paramétrer"
echo "# des plugins pour vim ou neovim"
echo "#"
echo "#"
echo "#-----------------------------------------------"
echo "# Installation de spf13-vim3"
echo "#"
echo "# curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh"
      # curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
echo "#"
echo "#-----------------------------------------------"
echo "#"
echo "# Mise à jour de spf13-vim3"
echo "#"
echo "# cf http://vim.spf13.com"
echo "#"
echo "cd $HOME/.spf13-vim-3/"
      cd $HOME/.spf13-vim-3/
echo "git pull"
      git pull
echo "#vim +BundleInstall! +BundleClean +q +q"
      #vim +BundleInstall! +BundleClean +q +q
echo "nvim +BundleInstall! +BundleClean +q +q"
      nvim +BundleInstall! +BundleClean +q +q
echo "#"
echo "# Configuration de vim"
echo "# https://github.com/fgarel/myDebianInstall01/blob/master/usr/sbin/bfaptitudeinstallvim01b.sh"
echo "# https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/"
echo "# http://tuppervim.org"
echo "#"
echo ""
