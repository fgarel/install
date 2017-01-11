#!/bin/sh



# 3ème Partie : plantuml
###############################################
# Installation de plantuml
#-----------------------------------------------
echo "# 3ème Partie : plantuml"
echo "###############################################"
echo "# Installation de plantuml"
echo "#"
echo "# La documentation est dans le repertoire "
echo "# technic/source/environnementTravail/Chapter03_vim_plantuml.rst"
echo "#"
echo "sudo apt-get install plantuml"
      sudo apt-get install plantuml
echo "#"
echo "# Ajout d'un bundle dans le fichier ~/.vimrc.bundles.local"
echo "# echo Bundle \\'aklt/plantuml-syntax\\' >> ~/.vimrc.bundles.local"
      # echo Bundle \'aklt/plantuml-syntax\' >> ~/.vimrc.bundles.local
echo "#"
echo "# On procdède à l'installation du bundle"
echo "vim +BundleInstall +qall"
      vim +BundleInstall +qall
echo "#"
echo "# On install aussi le paquet librsvg2-bin qui fournit l'utilitaire rsvg"
echo "# Cet utilitaire permet de manipuler les fichiers svg"
echo "#"
echo "sudo apt-get install librsvg2-bin"
      sudo apt-get install librsvg2-bin

echo ""


