#!/bin/sh



# 7ème Partie : Installation de postgresql et postgis
#####################################################
# Installation de postgresql et postgis
echo '# 7ème Partie : Installation de postgresql et postgis'
echo '#####################################################'
echo '#'
echo '# Creation des utilisateurs et des bases pour tester geogig'
echo '#'
echo '# Creation des utilisaterus :'
#echo '#'
#echo '# Pour chacun des utilisateurs ...'
echo "#  - CDA"
#echo "#  - Departement"
#echo "#  - DGFiP"
#echo "#  - ERDF"
#echo "#  - SDE"
#echo "#  - SDEER"
#echo "#  - Soluris"
echo "#  - VLR"
echo '#'
echo '# Creation des bases :'
echo '# - origine qui contiendra les données exemples'
#echo '# ... nous allons attribuer deux bases de données ...'
echo '# - geogig qui contiendra les depots geogig'
#echo '# - rtge'
#echo '# - pcrs'
#echo '# ... qui seront configurées avec les extensions ...'
echo '#'
echo '# Ces bases seront configurées avec les extensions suivantes :'
echo '# - adminpack'
echo '# - postgis'
echo '# - postgis_topology'
echo '# - fuzzystrmatch'
echo '# - hstore'

echo '#'
echo '# Creation des utilisateurs et des bases de données'
echo '# ================================================='
