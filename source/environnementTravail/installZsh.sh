#!/bin/sh



# 4ème Partie : zsh et antigen
###############################################
# Affichage du shell courant
#-----------------------------------------------
echo "# 4ème Partie : zsh et antigen"
echo "###############################################"
echo "# Affichage du shell courant"
echo "echo $SHELL"
      echo $SHELL
echo "# Installation de zsh-antigen"
echo "sudo aptitude install zsh-antigen"
      sudo aptitude install zsh-antigen

# Liste des shells disponibles
#-----------------------------------------------
#cat /etc/shells

# Pour changer le shell de l'utilisateur en cours
#-----------------------------------------------
# https://wiki.archlinux.org/index.php/Zsh
#echo "/usr/bin/zsh" | chsh
echo "# Changement du shell courant"
echo "sudo chsh -s /bin/zsh root"
      sudo chsh -s /bin/zsh root
echo "sudo chsh -s /bin/zsh fred"
      sudo chsh -s /bin/zsh fred

# Création d'un fichier .zshrc
#-----------------------------------------------
echo "# Création d'un fichier .zshrc pour l'utilisateur root"
echo "#"
#mkdir /root
#echo "# Created by newuser" > /root/.zshrc
#echo "source /usr/share/zsh-antigen/antigen.zsh" >> /root/.zshrc
#echo "antigen use oh-my-zsh" >> /root/.zshrc
#echo "antigen theme agnoster" >> /root/.zshrc
echo ""
echo "# Utilisation d'un fichier zshrc existant"
echo "# Recopie du fichier zshrc_antigen"
echo "#"
echo "sudo rm /root/.zshrc"
      sudo rm /root/.zshrc
#cp /home/$USER/Documents/install/environnementTravail/zshrc_antigen /root/.zshrc
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/zshrc_antigen /root/.zshrc"
      sudo cp /home/fred/Documents/install/source/environnementTravail/zshrc_antigen /root/.zshrc
echo ""
echo "# Copie du fichier .zshrc vers le repertoire /home/fred de l'utilisateur fred"
echo "#"
#mkdir /home/fred
echo "sudo cp /root/.zshrc /home/fred/.zshrc"
      sudo cp /root/.zshrc /home/fred/.zshrc
echo "sudo chown fred:fred /home/fred/.zshrc"
      sudo chown fred:fred /home/fred/.zshrc
echo ""
echo "# Copie du fichier .zshrc vers le repertoire /home/fred/.antigen/repos de l'utilisateur fred"
echo "#"
echo "# En effet, il semble que byobu cherche à lire un fichier .zshrc dans ce repertoire..."
echo "# Donc, pour eviter d'avoir à sourcer manuellement ~/.zshrc, autant placer le fichier"
echo "# .zshrc au bon endroit dès le début."
echo "# Sans ce fichier, alors le script zsh-newuser-install est executé."
echo "#"
echo "sudo cp /root/.zshrc /home/fred/.antigen/repos/.zshrc"
      sudo cp /root/.zshrc /home/fred/.antigen/repos/.zshrc
echo "sudo chown fred:fred /home/fred/.antigen/repos/.zshrc"
      sudo chown fred:fred /home/fred/.antigen/repos/.zshrc
echo ""
echo "# Changement du shell par defaut pour les futurs utilisateurs"
echo "# Pour changer le shell des futurs utilisateurs"
echo "# http://askubuntu.com/questions/28969/how-do-you-change-the-default-shell-for-all-users-to-bash"
echo "#"
echo "sudo sed -i -e 's/DSHELL=\/bin\/bash/DSHELL=\/bin\/zsh/g' /etc/adduser.conf"
      sudo sed -i -e 's/DSHELL=\/bin\/bash/DSHELL=\/bin\/zsh/g' /etc/adduser.conf
echo ""


