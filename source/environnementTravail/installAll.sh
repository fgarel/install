#!/bin/sh



# 1ère Partie : Installation de quelques polices sur le poste client
###############################################
# Installation de quelques polices sur le poste client
echo "# 1ère Partie : Installation de quelques polices sur le poste client"
echo "###############################################"
./installFonts.sh
echo ""

# 2ème Partie : Ajout de l'utilisateur fred au groupe sudo
###############################################
# Ajout de l'utilisateur fred au groupe sudo
echo "# 2ème Partie : Ajout de l'utilisateur fred au groupe sudo"
echo "###############################################"
./installSudo.sh
echo ""

# 3ème Partie : git et git-flow
###############################################
# Installation de git et de git-flow
echo "# 3ème Partie : git et git-flow"
echo "###############################################"
./installGit.sh
echo ""

# 4ème Partie : zsh et antigen
###############################################
# zsh et antigen
echo "# 4ème Partie : zsh et antigen"
echo "###############################################"
./installZsh.sh
echo ""

# 5ème Partie : byobu
###############################################
# byobu
echo "# 5ème Partie : byobu"
echo "###############################################"
./installByobu.sh
echo ""

# 6ème Partie : Installation de vim et spf13-vim3
###############################################
# Installation de vim et spf13-vim3
echo "# 6ème Partie : Installation de vim et spf13-vim3"
echo "###############################################"
./installVim.sh
echo ""

# 7ème Partie : plantuml
###############################################
# plantuml
echo "# 7ème Partie : plantuml"
echo "###############################################"
sudo ./installPlantuml.sh
echo ""

# 7ème Partie : postgresql
###############################################
# postgresql
echo "# 7ème Partie : postgresql"
echo "###############################################"
sudo ./installPostgresql.sh
sudo ./installPostgresqlGeogigGTReseaux.sh
sudo ./installPostgresqlGeogigVLR.sh
sudo ./installPostgresqlAutresVLR.sh
echo ""

# 7ème Partie : python
###############################################
# python
echo "# 7ème Partie : python"
echo "###############################################"
sudo ./installPython.sh
echo ""

# 7ème Partie : python mapproxy
###############################################
# python mapproxy
echo "# 7ème Partie : python mapproxy"
echo "###############################################"
sudo ./installPythonMapproxy.sh
echo ""

# 7ème Partie : python ecriture_sphinx
###############################################
# python ecriture_sphinx
echo "# 7ème Partie : python ecriture_sphinx"
echo "###############################################"
sudo ./installPythonEcritureSphinx.sh
echo ""

# 8ème Partie : suite d'outils pour la manipulation des données OSM
###############################################
# suite d'outils pour la manipulation des données OSM
echo "# 8ème Partie : suite d'outils pour la manipulation des données OSM"
echo "###############################################"
sudo ./installOSM.sh
echo ""
