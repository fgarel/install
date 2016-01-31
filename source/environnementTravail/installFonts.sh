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
echo "# Installation de la fonte PowerlineSymbols"
echo "# Cette fonte n'est pas très jolie, on lui preferera"
echo "# les fontes supplémentaires prises sur github"
echo "# # apt-get install fonts-powerline"
echo "#"
echo "# Installation des fontes supplementaires"
echo "# La doc est ici : "
echo "#   https://powerline.readthedocs.org/en/latest/installation/linux.html#fonts-installation"
echo "# La doc sur le test est ici : "
echo "#   https://gist.github.com/agnoster/3712874"
echo "#"
echo ""
echo "#-----------------------------------------------"
echo "# Téléchargement des fichiers de fonts"
echo "#"
echo "apt-get install git"
echo "git clone https://github.com/powerline/fonts"
echo "cd fonts"
echo "./install.sh"
echo "#"
echo "# Enregistrement de ces nouvelles fontes / polices"
echo "#"
echo "fc-cache -vf ~/.fonts/"
echo "#"
echo "# Test d'une fonte/police dans un terminal"
echo "#"
echo 'echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"'
echo "#"
echo "# Installation supplementaire"
echo "#"
echo "git clone https://github.com/gabrielelana/awesome-terminal-fonts"
echo "./awesome-terminal-fonts/install.sh"
echo "#"
echo "#-----------------------------------------------"
echo "#"
echo ""

