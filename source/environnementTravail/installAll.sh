#!/bin/sh



# 2ème Partie : Ajout de l'utilisateur fred au groupe sudo
###############################################
# Ajout de l'utilisateur fred au groupe sudo
echo "# 2ème Partie : Ajout de l'utilisateur fred au groupe sudo"
echo "###############################################"
echo "./installSudo.sh"
      ./installSudo.sh
echo ""

# 3ème Partie : git et git-flow
###############################################
# Installation de git et de git-flow
echo "# 3ème Partie : git et git-flow"
echo "###############################################"
echo "./installGit.sh"
      ./installGit.sh
echo ""

# 1ère Partie : Installation de quelques polices sur le poste client
###############################################
# Installation de quelques polices sur le poste client
echo "# 1ère Partie : Installation de quelques polices sur le poste client"
echo "###############################################"
#echo "./installFonts.sh"
#      ./installFonts.sh
echo ""

# 7ème Partie : python
###############################################
# python
echo "# 7ème Partie : python"
echo "###############################################"
echo "./installPython.sh"
      ./installPython.sh
echo ""


# 5ème Partie : byobu
###############################################
# byobu
echo "# 5ème Partie : byobu"
echo "###############################################"
echo "./installByobu.sh"
      ./installByobu.sh
echo ""

# 4ème Partie : zsh et antigen
###############################################
# zsh et antigen
echo "# 4ème Partie : zsh et antigen"
echo "###############################################"
echo "./installZsh.sh"
      ./installZsh.sh
echo ""


# 6ème Partie : Installation de vim et spf13-vim3
###############################################
# Installation de vim et spf13-vim3
echo "# 6ème Partie : Installation de vim et spf13-vim3"
echo "###############################################"
echo "./installVim.sh"
      ./installVim.sh
echo ""

# 7ème Partie : plantuml
###############################################
# plantuml
echo "# 7ème Partie : plantuml"
echo "###############################################"
#echo "./installPlantuml.sh"
#      ./installPlantuml.sh
echo ""

# 7ème Partie : python mapproxy
###############################################
# python mapproxy
echo "# 7ème Partie : python mapproxy"
echo "###############################################"
#echo "./installPythonMapproxy.sh"
#      ./installPythonMapproxy.sh
echo ""


# 7ème Partie : python ecriture_sphinx
###############################################
# python ecriture_sphinx
echo "# 7ème Partie : python ecriture_sphinx"
echo "###############################################"
#echo "sudo ./installPythonEcritureSphinx.sh"
#      sudo ./installPythonEcritureSphinx.sh
echo ""


# 7ème Partie : postgresql
###############################################
# postgresql
echo "# 7ème Partie : postgresql"
echo "###############################################"
#echo "./installPostgresql.sh"
#      ./installPostgresql.sh
#echo "./installPostgresqlGeogigGTReseaux.sh"
#      ./installPostgresqlGeogigGTReseaux.sh
#echo "./installPostgresqlGeogigVLR.sh"
#      ./installPostgresqlGeogigVLR.sh
#echo "./installPostgresqlAutresVLR.sh"
#      ./installPostgresqlAutresVLR.sh
#echo "./installPostgresqlOsm.sh"
#      ./installPostgresqlOsm.sh
#echo ""

# 8ème Partie : suite d'outils pour la manipulation des données OSM
###############################################
# suite d'outils pour la manipulation des données OSM
echo "# 8ème Partie : suite d'outils pour la manipulation des données OSM"
echo "###############################################"
#echo "sudo ./installOSM.sh"
#      sudo ./installOSM.sh
echo ""
