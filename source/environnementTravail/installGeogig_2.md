

# geogig 2de partie : Initialisation des données, Paramétrage

Seconde partie,
  - Initialisation de la base pour la gestion du PCRS
  - Initialisation de la base pour la gestion des données voirie
  - Paramétrage de geoserver
  - Paramétrage d'un serveur web formulaire django




## De nouvelles notions à assimiler

Avec geoserver, nous allons utiliser de nouveaux termes : espace de travail,
entrepôt de données, ...

Avec geogig, nous utilisons des dépots, des branches, ...

Sous postgresql, nous allons utiliser des bases de données, des schémas,
 des tables, ..

## Préparation de la base de données

Sous postgresql, nous allons créer une base de données que l'on appellera geogig.
Cette base de données contiendra plusieurs schémas


Avant de pouvoir utiliser geoserver avec l'extension geogig, il est nécessaire
de créer une base de données, que l'on va appeler geogig,
et qui va servir a la gestion interne de l'outil

En d'autres termes, cette base de données ne va pas servir à accueillir
les données geographiques

Cette base de données est créé à l'aide de l'utilisateur $POSTGRESQL_USER
Il faut donc que cet utilisateur soit capable de créer une base
```
sudo -u postgres psql -c "ALTER ROLE '$POSTGRESQL_USER' WITH PASSWORD '$POSTGRESQL_USER';"
sudo -u postgres psql -c "ALTER ROLE '$POSTGRESQL_USER' SUPERUSER NOCREATEDB NOCREATEROLE;"
```

La création de cette base de données geogig se fait grace au script python
```
~/Documents/install/source/geogigfg/bin/01_base_create.py
```

Nota :
 - Il faut que la paquet python3-psycopg2 soit installé sur le poste client
 - Attention, il semble qu'il ne faut pas mettre l'extension postgis-topology :
   cette extension apparaît même quand on ne sélectionne que postgis.

###  Les premiers pas avec geoserver/geogig

http://docs.geoserver.org/latest/en/user/gettingstarted/web-admin-quickstart/index.html

```
www.cdalr.fr/geoserver/index.html
```
Ensuite, il faut se logguer avec l'identifiant / mot de passe suivant
admin/geoserver

#### Notion d'espace de travail

Création d'un espace de travail pcrs

name : pcrs
uri : http://geoserver.cdalr.fr/geoserver/pcrs
default workspace : oui

Les différents espaces de travail que l'on va créer par la suite sont :
pcrs
rtge
cada
rese
espu
bati

#### Notion d’entrepôt de données

Création d'un nouvel entrepot de type geogig

2 façons de faire :
 - la première, en passant par le menu Données / Entrepôts
 - la seconde, en passant par le menu Geogig / Geogig Repositories

##### 1ere methode : Données / Entrepôts

Nouvelle ressource / Sources de données Vecteur / Geogig (Geogig Versionning DataStore)

workspace : pcrs
data source name : pcrs_repos
description :
enable : yes

Paramètres de connexion

Create a new repository
repository type : Postgresql
repository name : pcrs_repos

hostname : localhost
database name : geogig
schema name : pcrs
username : fred
password :

##### 2de methode : Geogig / Geogig Repositories

##### Import d'un depot

Dans le paragraphe précédent, nous avons vu comment créer un nouvel entrepot.
Ici, nous allons voir comment importer un entrepot

Si on parle d'importer, c'est parce qu'auparavant, nous l'avons déjà créer.

La création se fait à l'aide des scripts
01 - 06

Une fois que le depot geogig est crée (sous la forme d'un schema, pcrs,
dans la base geogig, sous posgresl),
il faut donc l'importer en tant que depot sous geoserver

Cela se fait en passant par le menu Geogig / Geogig Repositories

Repository Type : postgresql

repository name : CDA-46-00197-01045-16*-D-16

hostname : pg.cdalr.fr
port : 5432

database : geogig
schema : pcrs
user : fred
password : fg....
