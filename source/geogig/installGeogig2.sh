#!/bin/sh

echo "#"
echo "# Recopie de la configuration générale"
echo "#"
echo "# cp ./.geogigconfig ~/.geogigconfig"
cp ./.geogigconfig ~/.geogigconfig
echo "#"
echo "# Creation et initialisation de 5 dépots"
echo "#"
echo "# mkdir PCRS_17"
echo "# mkdir PCRS_Acteur_A"
echo "# mkdir PCRS_Acteur_B"
echo "# mkdir PCRS Acteur_C"
echo "# mkdir PCRS_Acteur_D"
mkdir PCRS_17
mkdir PCRS_Acteur_A
mkdir PCRS_Acteur_B
mkdir PCRS_Acteur_C
mkdir PCRS_Acteur_D
echo ""
echo "#"
echo "# Initialisation"
echo "#"
echo "# cd PCRS_17 ; geogig init ; cd .."
cd PCRS_17 ; geogig init ; cd ..
echo "# cd PCRS_Acteur_A ; geogig init ; cd .."
cd PCRS_Acteur_A ; geogig init ; cd ..
echo "# cd PCRS_Acteur_B ; geogig init ; cd .."
cd PCRS_Acteur_B ; geogig init ; cd ..
echo "# cd PCRS_Acteur_C ; geogig init ; cd .."
cd PCRS_Acteur_C ; geogig init ; cd ..
echo "# cd PCRS_Acteur_D ; geogig init ; cd .."
cd PCRS_Acteur_D ; geogig init ; cd ..

echo ""
echo "#"
echo "# Creation du premier commit dans chacun des 5 dépots"
echo "#"
echo '# cd PCRS_Acteur_A ; touch README.md ; geogig add README.md ; geogig commit -m "first commit" ; cd ..'
cd PCRS_Acteur_A
touch README.md
geogig add README.md
geogig pg import --database gis --user fred --password Mie3Bhoutan --table a_1_affleurant
geogig pg import --database gis --user fred --password Mie3Bhoutan --table a_1_batiment
geogig pg import --database gis --user fred --password Mie3Bhoutan --table a_1_bordure
geogig pg import --database gis --user fred --password Mie3Bhoutan --table a_1_case_00140_00100
geogig pg import --database gis --user fred --password Mie3Bhoutan --table a_1_cloture
geogig ls
geogig commit -m "first commit"
cd ..
cd PCRS_Acteur_B
touch README.md
geogig add README.md
geogig pg import --database gis --user fred --password Mie3Bhoutan --table b_1_affleurant
geogig pg import --database gis --user fred --password Mie3Bhoutan --table b_1_batiment
geogig pg import --database gis --user fred --password Mie3Bhoutan --table b_1_bordure
geogig pg import --database gis --user fred --password Mie3Bhoutan --table b_1_case_00140_00100
geogig pg import --database gis --user fred --password Mie3Bhoutan --table b_1_cloture
geogig ls
geogig commit -m "first commit"
cd ..
cd PCRS_Acteur_C
touch README.md
geogig add README.md
geogig pg import --database gis --user fred --password Mie3Bhoutan --table c_1_affleurant
geogig pg import --database gis --user fred --password Mie3Bhoutan --table c_1_batiment
geogig pg import --database gis --user fred --password Mie3Bhoutan --table c_1_bordure
geogig pg import --database gis --user fred --password Mie3Bhoutan --table c_1_case_00140_00100
geogig pg import --database gis --user fred --password Mie3Bhoutan --table c_1_cloture
geogig ls
geogig commit -m "first commit"
cd ..
cd PCRS_Acteur_D
touch README.md
geogig add README.md
geogig pg import --database gis --user fred --password Mie3Bhoutan --table d_1_affleurant
geogig pg import --database gis --user fred --password Mie3Bhoutan --table d_1_batiment
geogig pg import --database gis --user fred --password Mie3Bhoutan --table d_1_bordure
geogig pg import --database gis --user fred --password Mie3Bhoutan --table d_1_case_00140_00100
geogig pg import --database gis --user fred --password Mie3Bhoutan --table d_1_cloture
geogig ls
geogig commit -m "first commit"
cd ..

echo ""
echo "#"
echo "# Creation des branches dans chacun des 5 dépots"
echo "#"
echo "# cd PCRS_17 ; geogig branch PlanTopoControle ; geogig branch Controle ; geogig branch PlanTopoNonControle ; geogig branch PlanExecution ; geogig branch PlanProjet ; cd .."
cd PCRS_Acteur_A ; geogig branch PlanTopoControle ; geogig branch Controle ; geogig branch PlanTopoNonControle ; geogig branch PlanExecution ; geogig branch PlanProjet ; cd ..
