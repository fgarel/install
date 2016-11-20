#!/bin/sh



# 5ème Partie : Installation de byobu et tmux
###############################################
# Installation de byobu
echo "# 5ème Partie : Installation de byobu et tmux"
echo "###############################################"
echo "#"
echo "sudo apt-get install byobu"
      sudo apt-get install byobu
echo ""
echo "# Choix du theme byobu"
echo "# http://superuser.com/questions/387256/how-do-i-reset-the-status-bar-colors-in-byobu"
echo "#    8 = bleu"
echo "#   12 = vert"
echo "echo 8 | byobu-select-profile"
      echo 8 | byobu-select-profile
echo ""
echo "# Doc sur zsh tmux et vim"
echo "#   https://www.codementor.io/linux/tutorial/configure-linux-toolset-zsh-tmux-vim"
echo "# Les principales commandes sont"
echo "#   CTRL A ? : affichage de l'aide"
echo "#   CTRL A | : split horizontal"
echo "#   CTRL A % : split vertical"
echo '#   CTRL B " : split horizontal'
echo "#   CTRL B % : split vertical"
echo "#"
echo "# byobu-config"
echo "# Avec cette commande, byobu-config, il es possible d'activer byobu"
echo "# pour qu'il s'execute à la connexion."
echo "#"

