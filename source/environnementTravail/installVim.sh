#!/bin/sh


# 6ème Partie : Installation de neovim et spf13-vim3
###############################################
# Installation de neovim et spf13-vim3
echo "# 6ème Partie : Installation de neovim et spf13-vim3"
echo "###############################################"
echo "#"
echo "# La doc sur spf13-vim3 est ici :"
echo "# https://github.com/spf13/spf13-vim"
echo "#"
echo "# Installation du paquet neovim, de vim et spf13 ????"
echo "#"
echo "# En fait, l'idee finale est d'utiliser spf13-vim3 qui est un"
echo "# script qui s'occupe d'installer et de paramétrer"
echo "# des plugins pour vim ou neovim"
echo "#"
echo "# Nous avons donc le choix d'installer vim ou neovim"
echo "# On prendra le choix de neovim par defaut"
echo "#"
echo "# Nous commentons donc les lignes suivantes"
echo "# sudo apt-get install vim"
      # sudo apt-get install vim
echo "#"
echo "# Installation de neovim"
echo "# https://github.com/neovim/neovim/wiki/Installing-Neovim"
echo "#"
echo "# Debian"
echo "########"
echo "sudo apt-get install -y neovim"
      sudo apt-get install -y neovim
echo "sudo apt-get install -y python3-neovim"
      sudo apt-get install -y python3-neovim
echo "#"
echo "# Ubuntu"
echo "########"
echo "#sudo apt-get install software-properties-common"
      #sudo apt-get install software-properties-common
echo "#sudo add-apt-repository ppa:neovim-ppa/unstable"
      #sudo add-apt-repository ppa:neovim-ppa/unstable
echo "#sudo apt-get update"
      #sudo apt-get update
echo "#sudo apt-get install neovim"
      #sudo apt-get install neovim
echo "#sudo apt-get install python-dev python-pip python3-dev python3-pip"
      #sudo apt-get install python-dev python-pip python3-dev python3-pip


echo "# On fabrique en premier nos fichiers .local"
echo "# puis, on utilisera le script spf13-vim3"
echo "# Quand on travaille dans cet ordre, alors l'installation"
echo "# (commande BundleInstall) prend en compte nos fichiers .local"
echo ""
echo "# Fabrication du fichier ~/.vimrc.local"
echo "#######################################"
echo '" Sous-fichier de configuration de l apparence (theme)'
echo '" Sous-fichier de configuration de l apparence (theme)' > ~/.vimrc.local
echo 'source ~/.vimrc.local.d/theme.vim'
echo 'source ~/.vimrc.local.d/theme.vim' >> ~/.vimrc.local
echo '" Sous-fichier de configuration de vos fonctions et mappages personnelles'
echo '" Sous-fichier de configuration de vos fonctions et mappages personnelles' >> ~/.vimrc.local
echo 'source ~/.vimrc.local.d/functions.vim'
echo 'source ~/.vimrc.local.d/functions.vim' >> ~/.vimrc.local
echo ""
echo "# Fabrication du sous repertoire ~/.vimrc.local.d"
echo "mkdir ~/.vimrc.local.d 2> /dev/null"
      mkdir ~/.vimrc.local.d 2> /dev/null
echo ""
echo '" Apparence / Theme'
echo '" Apparence / Theme' > ~/.vimrc.local.d/theme.vim
echo '" La gestion des couleurs dans un terminal'
echo '" La gestion des couleurs dans un terminal' >> ~/.vimrc.local.d/theme.vim
echo '" https://github.com/neovim/neovim/wiki/FAQ#where-should-i-put-my-config-vimrc'
echo '" https://github.com/neovim/neovim/wiki/FAQ#where-should-i-put-my-config-vimrc' >> ~/.vimrc.local.d/theme.vim
echo '" https://gist.github.com/XVilka/8346728'
echo '" https://gist.github.com/XVilka/8346728' >> ~/.vimrc.local.d/theme.vim
echo '" '
echo '" ' >> ~/.vimrc.local.d/theme.vim
echo '" Chargment du theme molokai'
echo '" Chargment du theme molokai' >> ~/.vimrc.local.d/theme.vim
echo 'colorscheme molokai'
echo 'colorscheme molokai' >> ~/.vimrc.local.d/theme.vim
echo '" Chargment du theme solarized'
echo '" Chargment du theme solarized' >> ~/.vimrc.local.d/theme.vim
echo 'colorscheme solarized'
echo 'colorscheme solarized' >> ~/.vimrc.local.d/theme.vim
echo '" Chargment du theme seoul256' >> ~/.vimrc.local.d/theme.vim
echo 'colorscheme seoul256'
echo 'colorscheme seoul256' >> ~/.vimrc.local.d/theme.vim
echo 'colorscheme heroku-terminal'
echo 'colorscheme heroku-terminal' >> ~/.vimrc.local.d/theme.vim
echo 'colorscheme gruvbox'
echo 'colorscheme gruvbox' >> ~/.vimrc.local.d/theme.vim
echo ""
echo '" Fonctions et mappages'
echo '" Fonctions et mappages' > ~/.vimrc.local.d/functions.vim
echo '" Chargement des fonctions'
echo '" Chargement des fonctions' >> ~/.vimrc.local.d/functions.vim
echo '" mappage pour plantuml (?)'
echo '" mappage pour plantuml (?)' >> ~/.vimrc.local.d/functions.vim
echo 'nnoremap <F5> :w<CR>:make<CR>'
echo 'nnoremap <F5> :w<CR>:make<CR>' >> ~/.vimrc.local.d/functions.vim
echo 'inoremap <F5> <Esc>:w<CR>:make<CR>'
echo 'inoremap <F5> <Esc>:w<CR>:make<CR>' >> ~/.vimrc.local.d/functions.vim
echo 'vnoremap <F5> :<C-u>:w<CR>:make<CR>'
echo 'vnoremap <F5> :<C-u>:w<CR>:make<CR>' >> ~/.vimrc.local.d/functions.vim
echo ""
echo "# Fabrication du fichier ~/.vimrc.before.local"
echo "##############################################"
echo '" Les différents plugins/extensions qui améliorent vim sont tres nombreux'
echo '" Les différents plugins/extensions qui améliorent vim sont tres nombreux' > ~/.vimrc.before.local
echo '" Et ils ont été regroupés en famille'
echo '" Et ils ont été regroupés en famille' >> ~/.vimrc.before.local
echo '" Une bonne base d extension quel que soit votre langage de programmation :'
echo '" Une bonne base d extension quel que soit votre langage de programmation :' >> ~/.vimrc.before.local
echo "let g:spf13_bundle_groups=['general', 'neocomplcache', 'programming', 'python', 'javascript', 'html', 'php', 'misc']"
echo "let g:spf13_bundle_groups=['general', 'neocomplcache', 'programming', 'python', 'javascript', 'html', 'php', 'misc']" >> ~/.vimrc.before.local
echo "let g:spf13_bundle_groups=['general', 'neocomplcache', 'programming', 'python', 'javascript', 'php', 'misc']"
echo "let g:spf13_bundle_groups=['general', 'neocomplcache', 'programming', 'python', 'javascript', 'php', 'misc']" >> ~/.vimrc.before.local
echo ""
echo "# Fabrication du fichier ~/.vimrc.bundles.local"
echo "###############################################"
echo '" Ajout local'
echo '" Ajout local' > ~/.vimrc.bundles.local
echo "\" Des Bundles supplémentaires :"
echo "\" Des Bundles supplémentaires :" > ~/.vimrc.bundles.local
echo "Bundle 'ZoomWin'"
echo "Bundle 'ZoomWin'" >> ~/.vimrc.bundles.local
echo "\"Bundle 'spf13/vim-colors'"
echo "\"Bundle 'spf13/vim-colors'" >> ~/.vimrc.bundles.local
echo "Bundle 'ajashton/cascadenik-vim'"
echo "Bundle 'ajashton/cascadenik-vim'" >> ~/.vimrc.bundles.local
echo "\"Bundle 'scrooloose/nerdcommenter'"
echo "\"Bundle 'scrooloose/nerdcommenter'" >> ~/.vimrc.bundles.local
echo "Bundle 'vimpager'"
echo "Bundle 'vimpager'" >> ~/.vimrc.bundles.local
echo "Bundle 'morhetz/gruvbox'"
echo "Bundle 'morhetz/gruvbox'" >> ~/.vimrc.bundles.local
echo "\"Bundle 'noahfrederick/vim-neovim-defaults'"
echo "\"Bundle 'noahfrederick/vim-neovim-defaults'" >> ~/.vimrc.bundles.local
echo "Bundle 'aklt/plantuml-syntax'"
echo "Bundle 'aklt/plantuml-syntax'" >> ~/.vimrc.bundles.local
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
echo "sudo apt-get install -y curl"
      sudo apt-get install -y curl
echo "curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh"
      curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
echo "#"
echo "#-----------------------------------------------"
echo "#"
echo "# Mise à jour de spf13-vim3"
echo "#"
echo "# cf http://vim.spf13.com"
echo "#"
echo "# cf ./updateVim.sh"
echo "#"
echo ""
echo "# Les fichiers de configuration de nvim"
echo "# sont des liens vers les fichiers de configuration de vim"
echo ""
echo "# https://neovim.io/doc/user/nvim.html#nvim-from-vim"
echo ""
echo "#mkdir ~/.config"
      #mkdir ~/.config
echo "ln -s ~/.vim ~/.config/nvim"
      ln -s ~/.vim ~/.config/nvim
echo "ln -s ~/.vimrc ~/.config/nvim/init.vim"
      ln -s ~/.vimrc ~/.config/nvim/init.vim
echo ""
