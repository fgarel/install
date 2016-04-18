#!/bin/sh



echo "# osmMaj.sh"
echo "###############################################"
echo "#"
echo "#"
echo "# Téléchargement des données diff"
echo "./osmDownloadOtherTime.sh"
echo "~fred/Documents/install/source/environnementTravail/osmDownloadOtherTime.sh"
      ~fred/Documents/install/source/environnementTravail/osmDownloadOtherTime.sh
echo "#"
echo "#"
echo "# Import de ces données"
echo "./osmImportOtherTime.sh"
echo "~fred/Documents/install/source/environnementTravail/osmImportOtherTime.sh"
      ~fred/Documents/install/source/environnementTravail/osmImportOtherTime.sh
echo "#"
echo "#"
echo "# Test"
echo "#./osmTest.sh"
echo "#~fred/Documents/install/source/environnementTravail/osmTest.sh"
      #~fred/Documents/install/source/environnementTravail/osmTest.sh
echo "#"
echo '#'
echo '#---------------------------------------'
echo '# Ajout d une tache cron qui va mettre a jour les donnes osm'
echo '# https://doc.ubuntu-fr.org/cron'
echo '#'
echo '# crontab -l'
echo '#'
echo '# crontab -e'
echo '#'
echo '# tous les jours à 7 heure'
echo '# 0 7 * * * /home/fred/Documents/install/source/environnementTravail/osmMaj.sh'
echo '#'
echo '#---------------------------------------'
