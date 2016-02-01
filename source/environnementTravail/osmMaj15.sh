#!/bin/sh



echo "# osmMaj15.sh"
echo "###############################################"
echo "#"
echo "#"
days='1 2 3 4 5 6 7 8 9 10 11 12 13 14 15'
for day in $days;
do 
    echo "# day = "$day;
    echo "# ===========";
    echo "#";
    echo "# Téléchargement des données diff";
    echo "./osmDownloadOtherTime.sh";
          ./osmDownloadOtherTime.sh;
    echo "#";
    echo "#";
    echo "# Import de ces données";
    echo "./osmImportOtherTime.sh";
          ./osmImportOtherTime.sh;
    echo "#";
    echo "#";
done
echo "# Test"
echo "./osmTest.sh"
      ./osmTest.sh
echo "#"
echo "# Affichage de la nouvelle date"
echo "cat /home/fred/Documents/osmosis/state.txt"
      cat /home/fred/Documents/osmosis/state.txt
echo "#"
