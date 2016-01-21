#!/bin/sh



echo "# osmMaj.sh"
echo "###############################################"
echo "#"
echo "#"
echo "# Téléchargement des données diff"
echo "./osmDownloadOtherTime.sh"
      ./osmDownloadOtherTime.sh
echo "#"
echo "#"
echo "# Import de ces données"
echo "./osmImportOtherTime.sh"
      ./osmImportOtherTime.sh
echo "#"
echo "#"
echo "# Test"
echo "./osmTest.sh"
      ./osmTest.sh
echo "#"
