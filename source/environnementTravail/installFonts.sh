#!/bin/sh



# 1ère Partie : Installation de quelques polices sur le poste client
###############################################
# Cette partie est à faire dans le terminal du poste client
# Cette installation permet par exemple de pouvoir utiliser
# le theme agnoster sous zsh-antigen
# Le but est d'installer des polices compatibles powerline
#-----------------------------------------------
echo "# 1ère partie : Installation de quelques polices sur le poste client"
echo "###############################################"
echo "# Le but est d'installer des polices compatibles powerline"
echo "#"
echo "# Cette partie est à faire dans le terminal du poste client"
echo "# Cette installation permet par exemple de pouvoir utiliser"
echo "# le theme agnoster sous zsh-antigen"
echo "#"
echo "# Pour info, voici la différence entre"
echo "#  - police d'écriture"
echo "#  - et fonte de caractères"
echo "# cf https://fr.wikipedia.org/wiki/Fonte_de_caract%C3%A8res"
echo "#"
echo "# La fonte de caractères se distingue de la police d’écriture"
echo "# qui regroupe tous les corps et graisses d’une même famille."
echo "# Ainsi, Helvetica est une police d’écriture."
echo "# L’Helvetica romain gras 10 points est une fonte,"
echo "# et l’Helvetica romain gras 12 points en est une autre."
echo "#"
echo ""
echo "#-----------------------------------------------"
echo "D'abord, il faut installer le paquet fontconfig qui contient"
echo "l'utilitaire fc-cache"
echo ""
echo "sudo apt-get install -y fontconfig"
      sudo apt-get install -y fontconfig
echo ""
echo "# Ici, on cherche à installer des fonts qui pourront etre utilisées avec powerline"
echo "# Mais, avant de faire cela, on va installer des fonts très classiques"
echo "# msfonts et autres"
echo "# On commence donc par le besoin 'supplementaire' avant de faire le 'powerline'"
echo ""
echo "# Installation supplementaire 1"
echo "#"
echo "git clone https://github.com/gabrielelana/awesome-terminal-fonts"
      git clone https://github.com/gabrielelana/awesome-terminal-fonts
echo "./awesome-terminal-fonts/install.sh"
      ./awesome-terminal-fonts/install.sh
echo "#"
echo "# Installation supplementaire 2"
echo "#"
echo "sudo aptitude install ttf-mscorefonts-installer"
      sudo aptitude install ttf-mscorefonts-installer
echo "sudo apt-get install -y ttf-mscorefonts-installer"
      sudo apt-get install -y ttf-mscorefonts-installer
echo "#"
echo "# Si le telechargement est problématique, on peut utiliser une procedure parallèle :"
echo "# 1. Telechargement des fichiers de polices .exe dans un sous-repertoire msfonts"
echo '#    mkdir msfonts'
           mkdir msfonts
echo '#    cd msfonts'
           cd msfonts
echo "#    cat /usr/share/package-data-downloads/ttf-mscorefonts-installer | grep Url | sed 's|Url:|wget|'"
           cat /usr/share/package-data-downloads/ttf-mscorefonts-installer | grep Url | sed 's|Url:|wget|'
echo "#    cat /usr/share/package-data-downloads/ttf-mscorefonts-installer | grep Url | sed 's|Url:||' | xargs wget -N -c"
           cat /usr/share/package-data-downloads/ttf-mscorefonts-installer | grep Url | sed 's|Url:||' | xargs wget -N -c
echo "# 2. Extraction"
echo "#    cabextract *"
           cabextract *
echo '#    cd ..'
           cd ..
echo "# 3. Installation avec lecture du repertoire de départ"
echo "#    Information a recopier dans la reponse a la question ci dessous"
echo "#    Répertoire contenant les polices MS (si elles ont déjà été téléchargées)"
echo "#    /home/fred/Documents/install/source/environnementTravail/msfonts"
echo "#    sudo dpkg-reconfigure ttf-mscorefonts-installer"
           sudo dpkg-reconfigure ttf-mscorefonts-installer
echo "#    Répertoire contenant les polices MS (si elles ont déjà été téléchargées)"
echo "#    /home/fred/Documents/install/source/environnementTravail/msfonts"
echo "#"
echo "# Enregistrement de ces nouvelles fontes / polices"
echo "#"
echo "fc-cache -vf msfonts/"
      fc-cache -vf msfonts/
echo "fc-cache -vf ~/msfonts/"
      fc-cache -vf ~/msfonts/
echo "#"
echo "#-----------------------------------------------"
echo "#"
echo "# Téléchargement des fichiers de fonts"
echo "#"
echo "# Installation des fontes powerline"
echo "# La doc est ici : "
echo "#   https://powerline.readthedocs.org/en/latest/installation/linux.html#fonts-installation"
echo "# La doc sur le test est ici : "
echo "#   https://gist.github.com/agnoster/3712874"
echo "#"
echo "# apt-get install git"
echo "sudo aptitude install git"
      sudo aptitude install git
echo "git clone https://github.com/powerline/fonts"
      git clone https://github.com/powerline/fonts
echo "git fetch https://github.com/powerline/fonts"
      git fetch https://github.com/powerline/fonts
echo "cd fonts"
      cd fonts
echo "./install.sh"
      ./install.sh
echo "cd .."
      cd ..
echo "#"
echo "# Enregistrement de ces nouvelles fontes / polices"
echo "#"
echo "fc-cache -vf ~/.local/share/fonts/"
      fc-cache -vf ~/.local/share/fonts/
echo "fc-cache -vf ~/.fonts/"
      fc-cache -vf ~/.fonts/
echo "fc-cache -vf fonts/"
      fc-cache -vf fonts/
echo "#"
echo "# Test d'une fonte/police dans un terminal"
echo "#"
echo 'echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"'
      echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"
echo "#"
echo "# Installation de la fonte PowerlineSymbols"
echo "# Cette fonte n'est pas très jolie, on lui preferera"
echo "# les fontes supplémentaires prises sur github"
echo "# # apt-get install fonts-powerline"
echo "#"
echo "# Installation de la fonte pour les symboles"
echo "# https://libraries.io/github/caiogondim/bullet-train-oh-my-zsh-theme"
echo "#"
echo "sudo aptitude install fonts-symbola"
      sudo aptitude install fonts-symbola
echo "#"
echo "# BULLETTRAIN_VIRTUALENV_PREFIX"
echo "# table des caractères / ubuntu derivative powerline / commun / U1f40 / snake, sixth of the signs of the asian zodiac"
echo "#-----------------------------------------------"
echo "#"
echo ""
echo ""

