

# OSM 1ère partie : Récupérez et stocker des données OSM

Dans cette partie, nous allons nous concentrer sur la mise en oeuvre d'un espace de stockage (une base postgresql), l'installation d'outil permettant d'importer de la données du serveur public vers notre instance privée

## Les outils

L'installation des composants OSM nécessite parfois des prérequis.

Par exemple, des outils comme osmosis sont développés en Java.

D'autre part, il faut aussi veillez  avoir postgresql qui tourne...

Il faut donc au moins :

  - une base de données postgresql, avec l'extension postgis, nécessaire pour stocker les données
  - l'outil osmosis, nécessaire pour télécharger les données OpenStreetMap, est fourni par le paquet osmosis
  - l'outil osm2pgsql, nécessaire pour importer les données dans postgresql, est fourni par le paquet osm2pgsql

## La base postgresql

Un serveur Postgresql va acueillir une base appelée *"osm"*.

(Il y aura plusieurs serveurs)

La base est divisée en plusieurs schémas, en fonction des outils utilisés pour l'import, mais aussi en fonction des usages.

La doc sur les shémas de postgresql est ici :

http://wiki.openstreetmap.org/wiki/Databases_and_data_access_APIs

Nous utiliserons les serveurs, les schemas, les tables, suivantes :

(les dernières colonnes indiquent le système de coordonnées à utiliser quand on charge les données dans qgis)

| host     | port  | dbname | user    | password | schema         | table             | typ. geom.   | scr  | nom du SCR      |
|:--------:|:-----:|:------:|:-------:|:--------:|:--------------:|:-----------------:|:------------:|:----:|:---------------:|
| vlr6180x | 63238 | osm    | osmuser | osmuser  | abidb          | nodes             | point        | 4326 | WGS84           |
| vlr6180x | 63238 | osm    | osmuser | osmuser  | abidb          | ways              | linestring   | 4326 | WGS84           |
| vlr6180x | 63238 | osm    | osmuser | osmuser  | abidb          | ways              | polygone     | 4326 | WGS84           |
| vlr6180x | 63238 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_point  | point        | 3857 | Pseudo-Mercator |
| vlr6180x | 63238 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_line   | linestring   | 3857 | Pseudo-Mercator |
| vlr6180x | 63238 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_roads  | linestring   | 3857 | Pseudo-Mercator |
| vlr6180x | 63238 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_poygon | polygone     | 3857 | Pseudo-Mercator |
| vlr6180x | 63238 | osm    | osmuser | osmuser  | osm2postgresql | .                 | point        | .    | .               |
| vlr6180x | 63238 | osm    | osmuser | osmuser  | osm2postgresql | .                 | linestring   | .    | .               |
| vlr6180x | 63238 | osm    | osmuser | osmuser  | osm2postgresql | .                 | polygone     | .    | .               |

| host     | port  | dbname | user    | password | schema         | table             | typ. geom.   | scr  | nom du SCR      |
|:--------:|:-----:|:------:|:-------:|:--------:|:--------------:|:-----------------:|:------------:|:----:|:---------------:|
| vlr6180y | 63239 | osm    | osmuser | osmuser  | abidb          | nodes             | point        | 4326 | WGS84           |
| vlr6180y | 63239 | osm    | osmuser | osmuser  | abidb          | ways              | linestring   | 4326 | WGS84           |
| vlr6180y | 63239 | osm    | osmuser | osmuser  | abidb          | ways              | polygone     | 4326 | WGS84           |
| vlr6180y | 63239 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_point  | point        | 3857 | Pseudo-Mercator |
| vlr6180y | 63239 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_line   | linestring   | 3857 | Pseudo-Mercator |
| vlr6180y | 63239 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_roads  | linestring   | 3857 | Pseudo-Mercator |
| vlr6180y | 63239 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_poygon | polygone     | 3857 | Pseudo-Mercator |
| vlr6180y | 63239 | osm    | osmuser | osmuser  | osm2postgresql | .                 | point        | .    | .               |
| vlr6180y | 63239 | osm    | osmuser | osmuser  | osm2postgresql | .                 | linestring   | .    | .               |
| vlr6180y | 63239 | osm    | osmuser | osmuser  | osm2postgresql | .                 | polygone     | .    | .               |

| host     | port  | dbname | user    | password | schema         | table             | typ. geom.   | scr  | nom du SCR      |
|:--------:|:-----:|:------:|:-------:|:--------:|:--------------:|:-----------------:|:------------:|:----:|:---------------:|
| cdalr    | 63230 | osm    | osmuser | osmuser  | abidb          | nodes             | point        | 4326 | WGS84           |
| cdalr    | 63230 | osm    | osmuser | osmuser  | abidb          | ways              | linestring   | 4326 | WGS84           |
| cdalr    | 63230 | osm    | osmuser | osmuser  | abidb          | ways              | polygone     | 4326 | WGS84           |
| cdalr    | 63230 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_point  | point        | 3857 | Pseudo-Mercator |
| cdalr    | 63230 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_line   | linestring   | 3857 | Pseudo-Mercator |
| cdalr    | 63230 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_roads  | linestring   | 3857 | Pseudo-Mercator |
| cdalr    | 63230 | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_poygon | polygone     | 3857 | Pseudo-Mercator |
| cdalr    | 63230 | osm    | osmuser | osmuser  | osm2postgresql | .                 | point        | .    | .               |
| cdalr    | 63230 | osm    | osmuser | osmuser  | osm2postgresql | .                 | linestring   | .    | .               |
| cdalr    | 63230 | osm    | osmuser | osmuser  | osm2postgresql | .                 | polygone     | .    | .               |

| host     | port  | dbname | user    | password | schema         | table             | typ. geom.   | scr  | nom du SCR      |
|:--------:|:-----:|:------:|:-------:|:--------:|:--------------:|:-----------------:|:------------:|:----:|:---------------:|
| zenbook  | 5432  | osm    | osmuser | osmuser  | abidb          | nodes             | point        | 4326 | WGS84           |
| zenbook  | 5432  | osm    | osmuser | osmuser  | abidb          | ways              | linestring   | 4326 | WGS84           |
| zenbook  | 5432  | osm    | osmuser | osmuser  | abidb          | ways              | polygone     | 4326 | WGS84           |
| zenbook  | 5432  | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_point  | point        | 3857 | Pseudo-Mercator |
| zenbook  | 5432  | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_line   | linestring   | 3857 | Pseudo-Mercator |
| zenbook  | 5432  | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_roads  | linestring   | 3857 | Pseudo-Mercator |
| zenbook  | 5432  | osm    | osmuser | osmuser  | osm2pgsql      | planet_osm_poygon | polygone     | 3857 | Pseudo-Mercator |
| zenbook  | 5432  | osm    | osmuser | osmuser  | osm2postgresql | .                 | point        | .    | .               |
| zenbook  | 5432  | osm    | osmuser | osmuser  | osm2postgresql | .                 | linestring   | .    | .               |
| zenbook  | 5432  | osm    | osmuser | osmuser  | osm2postgresql | .                 | polygone     | .    | .               |



Un premier script shell a été écrit pour créer les utilisateurs et les bases de données, mais attention, ce script est à executer sur le poste en local.
Ce script a été réécrit en python

Ces scripts sont :
 - installPostgresqlOsm.sh (old)
 - 01_base_create.py       (new)

```
ssh fred@vlr6180x
cd ~/Documents/install/source/osm/
./01_base_create.py
```
```
ssh fred@ssh.cdalr.fr
cd ~/Documents/install/source/osm/
./01_base_create.py
```

## Les scripts et utilitaires pour l'import des données

Nous allons tester plusieurs utilitaires pour l'import des données.

L'utilisation de ces utilitaires va etre automatisée avec des scripts.

### Les scripts

les différents scripts osm sont ici:
 - installation / configuration
   - installOSMTools.sh
   - installOSMCartoCSS.sh
   - 01_base_create.py
 - utilisation
   - osmFirstTime.sh
   - osmCreateRepository.sh
   - osmDownloadFirstTime.sh
   - osmDownloadOtherTimes.sh
   - osmImportFirstTime.sh
   - osmImportOtherTime.sh
   - osmMaj.sh
   - osmMaj15.sh
   - osmTest.sh
   - osmPrepareQgis.sh

Le dernier script, **osmPrepareQgis.sh**, ne fait que créer des vues afin d'alléger
l'usage des données avec Qgis.

Le fihier qgis est ici
```
~/Documents/technic/source/voirie/localhost_osm.qgs
```

### Les utilitaires

Les utilitaires pour manipuler et importer les données osm sont :
 - osmosis
 - osm2pgsql
 - osm2postgresql_05rc4
 - imposm

 ....

 - osmctools ? https://switch2osm.org/loading-osm-data/
   osmconvert, osmupdate, osmfilter....


#### osmosis

Pour que ces scripts fonctionnent, il faut que l'utilitaire *osmosis* soit installé sur le poste.

```
./installOSMTools.sh
```

#### osm2pgsql

C'est la version de la distribution qui est utilisé


#### osm2postgresql

**TODO** : Réussir à le faire fonctionner ....

Il faut aussi que le script *osm2postgresql_05rc4.sh* soit lui aussi sur le poste.
Cet outil est disponible ici (installation à faire à la main)

http://wiki.openstreetmap.org/wiki/Osm2postgresql

#### imposm

Cet utilitaire est décrit ici :

https://imposm.org/

### Première utilisation

Astuce pour la suite : Pour éviter d'avoir à taper sans arrêt le mot de passe,
il est possible d'éditer le fichier ~/.pgpass

```
vi ~/.pgpass
```

```
localhost:5432:*:osmuser:osmpass
localhost:5432:*:mapnikuser:mapnikpass
```

```
chmod 600 ~/.pgpass
```

On verra ci dessous que l'import des données dans la base osm peut être paramétré à l'aide de "style".

Nous allons donc recupérer les styles grâce au script ./installOSMCartoCSS.sh

```
./installOSMCartoCSS.sh
```

On commence par créer un répertoire, dans le système de fichier, qui va nous permettre de stocker les données au format planet.

```
./osmCreateRepository.sh
```

On lance ensuite le premier téléchargement du fichier *planet* (.pbf)

Cependant, il faut modifier le script de téléchargement avant de l'exécuter.
Les explications sont dans le script, mais grossièrement, il faut aller sur la page :

http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/001/

Il faut alors noter le numéro du fichier qui correspond à la date (de la **veille**)
et inscrire ce numéro dans le script
(attention, le numéro est à modifier à plusieurs endroits dans le script)

```
vi ./osmDownloadFirstTime.sh
```

Une fois corrigé, il n'y a plus qu'à l'exécuter

```
./osmDownloadFirstTime.sh
```

L'étape suivante, c'est de lancer l'import des données dans la base postgresql.

On peut lancer l'exécution de l'import
```
./osmImportFirstTime.sh
```

L'import est réalisé dans différenst schémas.

L'utilitaire osmosis va nous permettre de stocker les données dans le schéma apidb.

L'utilitaire osm2pgsql va nous permettre de stocker les données dans le schéma osm2pgsql.

Avec cet utilitaire, il est possible de paramétrer l'import selon un "style".

La doc sur le "style", c'est à dire sur la façon de paramétrer l'import des données dans postgresql à l'aide de l'outil osm2pgsql est ici :

https://wiki.openstreetmap.org/wiki/Osm2pgsql#Import_style

Le style par defaut est ici

https://github.com/openstreetmap/osm2pgsql/blob/master/default.style

et ici

```
/usr/share/osm2pgsql/default.syle
```

On modifiera peut-être le style par défaut et on ne gardera peut-être pas tous ces schémas : on fera le choix en fonction de l'usage.

Le script ./installOSMCartoCSS.sh est chargé de la récupération des styles spécifiques.

Donc, l'enchaînement de tous les scripts pour le premier chargement des données est :

```
./osmFirstTime.sh
```

```
./installOsmTools.sh \
./installOSMCartoCSS.sh \
./01_base_create.py \
./osmCreateRepository.sh \
./osmDownloadFirstTime.sh \
./osmImportFirstTime.sh \
./osmPrepareQgis.sh
```


### Les mises à jour

Pour mettre à jour la base de données osm,
le fichier ./osmMaj.sh va enchaîner l'exécution de deux scripts.

Ces deux scripts sont :

 - ./osmDownloadOtherTime.sh
 - ./osmImportOtherTime.sh

Pour faire simple, il suffit donc d'exécuter :

```
./osmMaj.sh
```


## Automatisation des mises à jour

Le téléchargement des données et l'import dans la base de données ont été automatisés et un job est ajouté dans le crontab

Ajout d une tache cron qui va mettre a jour les donnes osm'
https://doc.ubuntu-fr.org/cron'

```
crontab -l
```
```
crontab -e
```
```
# tous les jours à 7h du matin, téléchargement et import des données osm
0 7 * * * /home/fred/Documents/install/source/osm/osmMaj.sh
```
