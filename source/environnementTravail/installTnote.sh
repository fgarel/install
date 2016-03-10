#!/bin/sh


# 6ème Partie : Installation de tnote
###############################################
# Installation de tnote
echo "# 6ème Partie : Installation de tnote"
echo "###############################################"
echo "#"
echo "# La doc sur vpn est ici :"
echo "# https://github.com/prodicus/tnote"
echo "#"
echo "# Installation des dépendances..."
echo "#"
echo "sudo aptitude install libsqlcipher-dev"
      sudo aptitude install libsqlcipher-dev
echo "#"
echo "#"
echo "#git clone https://github.com/prodicus/tnote"
      #git clone https://github.com/prodicus/tnote
echo "#git fetch https://github.com/prodicus/tnote"
      #git fetch https://github.com/prodicus/tnote
echo "#"
echo "# Installation des requirements..."
echo "#"
echo "cd tnote && pip install -r requirements.txt"
      cd tnote && pip install -r requirements.txt
echo "#"
echo "# Ajout d'un lien symbolique..."
echo "#"
echo "chmod +x tnote"
      chmod +x tnote
echo "cd /usr/local/bin/"
      cd /usr/local/bin/
echo "sudo ln -s /home/fred/Documents/install/source/environemmentTravail/tnote/tnote"
      sudo ln -s /home/fred/Documents/install/source/environemmentTravail/tnote/tnote
echo "#"
echo "#"
echo "#"
echo ""
