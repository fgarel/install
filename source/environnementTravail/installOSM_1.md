

# OSM 1ère partie : Récupérez et stocker des données OSM

Dans cette partie, nous allons nous concentrer sur la mise en oeuvre d'un espace de stockage (une base postgresql), l'installation d'outil permettant d'importer de la données du serveur public vers notre instance privée

## les outils

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



Un script a été écrit pour créer les utilisateurs et les bases de données, mais attention, ce script est à executer sur le poste en local.

Ce script est :
 - installPostgresqlOsm.sh

```
ssh fred@vlr6180x
cd ~/Documents/install/source/environnementTravail/
./installPostgresqlOsm.sh
```
```
ssh fred@ssh.cdalr.fr
cd ~/Documents/install/source/environnementTravail/
./installPostgresqlOsm.sh
```

## Les scripts pour l'import des données

les différents scripts osm sont ici:
 - osmCreateRepository.sh
 - osmDownloadFirstTime.sh
 - osmDownloadOtherTimes.sh
 - osmImportFirstTime2.sh
 - osmImportOtherTime.sh
 - osmMaj.sh
 - osmMaj15.sh
 - osmTest.sh


Prérequis :
Pour que ces scripts fonctionnent, il faut que l'utilitaire *osmosis* soit installé sur le poste.

```
./installOSM.sh
```

Il faut aussi que le script *osm2postgresql_05rc4.sh* soit lui aussi sur le poste.
Cet outil est disponible ici (installation à faire à la mian)

http://wiki.openstreetmap.org/wiki/Osm2postgresql

### Première utilisation

Astuce pour la suite : Pour éviter d'avoir à taper sans arret le mot de passe,
il est possible d'editer le fichier ~/.pgpass

```
vi ~/.pgpass
```

```
localhost:5432:*:osmuser:osmuser
localhost:5432:*:mapnikuser:mapnikuser
```

```
chmod 600 ~/.pgpass
```

On commence par créer un répertoire, dans le système de fichier, qui va nous permettre de stocker les données au format planet.

```
./osmCreateRepository.sh
```

On lance ensuite le premier téléchargement.

Cependant, il faut modifier le script avant de l'exécuter. Les explications sont dans le script, mais grossièrement, il faut aller sur la page :

http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/001/

Il faut alors noter le numero du fichier qui correspond à la date de la **veille** et inscrire ce numero dans le script
(attention, le numero est à écrire deux fois)

```
vi ./osmDownloadFirstTime.sh
```

Une fois corrigé, il n'y a plus qu'à l'exécuter

```
./osmDownloadFirstTime.sh
```

L'étape suivante, c'est de lancer l'import du fichier planete dans la base postgresql.



On peut lancer l'execution de l'import
```
./osmImportFirstTime.sh
```

L'import est réalisé dans différenst schémas.
On ne gardera peut-etre pas tous ces schemas : on fera le choix en fonction de l'usage.


Donc, l'enchainement de tous les scripts pour le premier chargement des données est :

```
./installPostgresqlOsm.sh \
./osmCreateRepository.sh \
./osmDownloadFirstTime.sh \
./osmImportFirstTime2.sh
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


## Automatisation

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
0 7 * * * /home/fred/Documents/install/source/environnementTravail/osmMaj.sh
```
