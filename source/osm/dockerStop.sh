#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# Arret du service et suppression du lien reseau"
echo "######################################################"
echo "#"
echo "#"
echo "# Arret du service et suppression du lien reseau docker0"
echo "#"
echo "sudo service docker stop"
      sudo service docker stop
echo "sudo ip link del docker0"
      sudo ip link del docker0
echo "#"
echo "#"
echo "#"
