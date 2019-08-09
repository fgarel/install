#!/bin/sh



# Installation de base de données
#####################################################
# Installation de base de données
echo '# Installation de base de données'
echo '#####################################################'
echo '#'
echo '# Creation des bases :'
echo '# - origine qui contiendra les données exemples'
echo '#   cette base de données contiendra les données initiales,'
echo '#   des données de test'
echo '# - geogig qui contiendra les depots geogig'
echo '# - cada : cadastre'
echo '# - espu : espace public'
echo '#   cette base de données contiendra les données du theme espace public,'
echo '#   echelle : 1 / 1500 - 1 / 25000'
echo '#   voirie, osm, ...'
echo '# - rtge : referentiel tres grande echelle'
echo '# - pcrs : Plan Corps de Rue Simplifié'
echo '#   echelle : 1 / 100 - 1 / 1500'
echo '# - rese : les reseaux'
echo '#   cette base de données contiendra les données du theme espace public,'
echo '#   assepl, asseu, eclai, feux, fibre, ....'
echo '# - bati : batiment, bim'
echo '#'
echo '# La base geogig aura plusieurs schemas :'
echo '# - pcrs_emprise : dans ce schema, on trouvera les depots'
echo '#   pour que les utilisateurs gerent leurs plans topo'
echo '# - pcrs_case000200_xxxxxxxx : dans ce schema, on trouvera les dépots'
echo '#   pour que les utilisateurs gerent la case xxxxxxx (PCRS au 1/200)'
echo '# - rtge_emprise : dans ce schema, on trouvera les depots'
echo '#   pour que les utilisateurs gèrent leurs plans topo'
echo '# - rtge_yyyyyyy : gestion du plan yyyyy'
echo "#"
echo '# Création des utilisateurs'
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
#echo '# ... nous allons attribuer deux bases de données ...'
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
