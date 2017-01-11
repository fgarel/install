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
echo "# Installation du paquet vim ou installation de neovim"
echo "#"
echo "# En fait, on va utiliser spf13-vim3 qui est un"
echo "# script qui s'occupe d'installer et de paramétrer"
echo "# des plugins pour vim ou neovim"
echo "#"
echo "# Nous avons donc le choix d'installer vim ou neovim"
echo "# On prendra le choix de neovim par defaut"
echo "#"
echo "# Nous commentons donc les lignes suivantes"
echo "#sudo apt-get install vim"
#      sudo apt-get install vim
echo "#"
echo "# Installation de neovim"
echo "# https://github.com/neovim/neovim/wiki/Installing-Neovim"
echo "#"
echo "# Debian"
echo "#sudo apt-get install neovim"
      #sudo apt-get install neovim
echo "#sudo apt-get install python3-neovim"
      #sudo apt-get install python3-neovim
echo "#"
echo "# Ubuntu"
echo "sudo apt-get install software-properties-common"
      sudo apt-get install software-properties-common
echo "sudo add-apt-repository ppa:neovim-ppa/unstable"
      sudo add-apt-repository ppa:neovim-ppa/unstable
echo "sudo apt-get update"
      sudo apt-get-update
echo "sudo apt-get install neovim"
      sudo apt-get install neovim
echo "sudo apt-get install python-dev python-pip python3-dev python3-pip"
      sudo apt-get install python-dev python-pip python3-dev python3-pip

echo ""
echo ""

# on fabrique en premier nos fichiers .local
# puis, on utilisera le script spf13-vim3
# Quand on travaille dans cet ordre, alors l'installation
# (commande BundleInstall) prend en compte nos fichiers .local

# fabrication du fichier ~/.vimrc.local
#######################################
echo '" sous-fichier de configuration de l apparence' > ~/.vimrc.local
echo 'source ~/.vimrc.local.d/theme.vim' >> ~/.vimrc.local
echo '" sous-fichier de configuration de vos fonctions personnelles par exemple' >> ~/.vimrc.local
echo 'source ~/.vimrc.local.d/functions.vim' >> ~/.vimrc.local

# fabrication du sous repertoire ~/.vimrc.local.d
mkdir ~/.vimrc.local.d 2> /dev/null
# theme.vim
echo '" chargment du theme molokai' > ~/.vimrc.local.d/theme.vim
echo 'colorscheme molokai' >> ~/.vimrc.local.d/theme.vim
echo '" chargment du theme solarized' > ~/.vimrc.local.d/theme.vim
echo 'colorscheme solarized' >> ~/.vimrc.local.d/theme.vim
# functions.vim
echo '" chargement des fonctions' > ~/.vimrc.local.d/functions.vim

# fabrication du fichier ~/.vimrc.before.local
###############################################
echo "\" Une bonne base d'extension quel que soit votre langage de programmation :" > ~/.vimrc.before.local
echo "let g:spf13_bundle_groups=['general', 'neocomplcache', 'programming', 'python', 'javascript', 'html', 'php', 'misc']" >> ~/.vimrc.before.local
echo "let g:spf13_bundle_groups=['general', 'neocomplcache', 'programming', 'python', 'javascript', 'php', 'misc']" >> ~/.vimrc.before.local

# fabrication du fichier ~/.vimrc.bundles.local
###############################################
echo "\" Des Bundles supplémentaires :" > ~/.vimrc.bundles.local
echo "Bundle 'ZoomWin'" >> ~/.vimrc.bundles.local
echo "\"Bundle 'spf13/vim-colors'" >> ~/.vimrc.bundles.local
echo "Bundle 'ajashton/cascadenik-vim'" >> ~/.vimrc.bundles.local
echo "\"Bundle 'scrooloose/nerdcommenter'" >> ~/.vimrc.bundles.local
echo "Bundle 'vimpager'" >> ~/.vimrc.bundles.local


# recupération de spf13-vim3 et execution du script
###################################################
#curl http://j.mp/spf13-vim3 -L -o - | sh


echo ""

echo ""

echo "# Installation ou mise à jour de spf13 ?"
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
      curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
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
echo "vim +BundleInstall! +BundleClean +q +q"
      vim +BundleInstall! +BundleClean +q +q
echo "#"
echo "# Configuration de vim"
echo "# https://github.com/fgarel/myDebianInstall01/blob/master/usr/sbin/bfaptitudeinstallvim01b.sh"
echo "# https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/"
echo "# http://tuppervim.org"
echo "#"
echo ""
