

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

Une base de données postgres doit être installée sur le serveur.

Nous utiliserons les trois serveurs suivants :

|       host      |       port     |   dbname   |   user  | password |
|:---------------:|:--------------:|:----------:|:-------:|----------|
|     vlr6180x    |      63238     |     osm    |   Fred  |   Fred   |
|     vlr6180y    |      63239     |     osm    |   Fred  |   Fred   |
|       cdalr     |      63230     |     osm    |   Fred  |   Fred   |

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
Pour que ces scripts fonctionnent, il faut que l'utilitaire osmosis soit installé sur le poste.

```
./installOSM.sh
```

### Première utilisation
On commence par créer un repertoire , dans le système de fichier, qui va nous permettre de stocker les données au format planet.

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

```
./osmImportFirstTime.sh
```


### Les mises à jour

Pour mettre à jour la base de données osm,
le fichier ./osmMaj.sh va en faite enchaîner l'exécution de deux scripts.

Ces deux scripts sont
./


Pour faire simple, il suffit donc d'exécuter :

```
./osmMaj.sh
```


## Automatisation

Le téléchargement des données et l'import dans la base de données a été automatisé et un job est ajouté dans le crontab

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
