

# OSM 2ème partie : Diffuser les données

Dans cette seconde partie, nous abordons l'installation et l'utilisation des outils qui sont plus liés à la diffusion de la données OSM.

Ces outils sont, pour ne citer que les principaux, :
 - tileman
 - Tirex
 - nginx
 - mapnik

## Sous-ensemble d'un environnement plus large

Pour rappel, dans la partie 1, nous avons aborder l'installation de postgresql et des utilitaires osmosis, osm2pgsql, mais ces installations peuvent aussi être vues dans environnement plus complet.

L'environnement complet a pour but
de faciliter la manipulation de données OSM.

*(Ici, il faut comprendre le mot environnement comme ensemble d'outils, et non pas comme une environnement virtuel python)*

La documentation sur l'installation et l'utilisation de cet
environnement est détaillé dans
Linux Magazine N°188

L'environnemant OSM est un ensemble de composants

La liste des composants d'OSM est ici

http://wiki.openstreetmap.org/wiki/FR:Component_overview

L'installation de ces composants nécessite parfois des prérequis.

Par exemple, des outils comme osmosis sont développés en Java.

D'autre part, il faut aussi veillez  avoir postgresql qui tourne...

Il faut donc au moins :

  - une base de données postgresql, avec l'extension postgis, nécessaire pour stocker les données
  - l'outil osmosis, nécessaire pour télécharger les données OpenStreetMap, est fourni par le paquet osmosis
  - l'outil osm2pgsql, nécessaire pour importer les données dans postgresql, est fourni par le paquet osm2pgsql
  - l'outil mapnik est installe manuellement
  - l'outil tirex, equivalent de renderd, nécessaire pour fabriquer les tuiles, est installé manuellement
  - des scripts lua couplés au serveur NGINX, (outil tileman) remplacent le module apache mod_tile. (Ces scripts sont nécessaires pour servir les tuiles. L'outil tileman est aussi installé manuellement)

Mapnik est l'outil principal pour le rendu

http://wiki.openstreetmap.org/wiki/FR:Rendu

http://wiki.openstreetmap.org/wiki/FR:Mapnik

Tirex

http://wiki.openstreetmap.org/wiki/Tirex

Tileman

https://github.com/osmfj/tileman

http://osmfj.github.io/tileman/

http://miurahr.github.io/slides/2013-0908-tileman.html#/title

L'installation de ces composants a été réalisée grâce aux scripts :

  - installOSM.sh
  - installOSMBoost.sh
  - installOSMMapnik.sh
  - installOSMTirex.sh
  - installOSMTilemanDebian.sh
  - ou installOSMTilemanUbuntu.sh

Après ces installations, il faudra configurer ces outils pour qu'ils fonctionnent ensemble.

## Verification des installations

### Mapnik

On installe Mapnik depuis les sources....
```
./installOSMMapnik.sh
```

Puis on lance un nouveau shell

```

```

On ajoute des variables d'environnement"
```
source ../mapnik/mapnik-settings.env
env | grep PROJ
```

Test de l'installation de mapnik

Test 1 : test interne : make test

https://github.com/mapnik/mapnik/wiki/UbuntuInstallation

```
cd ../mapnik ; export JOBS=1 ; make test ; cd ../environnementTravail
cd ../mapnik ; export JOBS=16 ; make test ; cd ../environnementTravail
```

Test 2 : test interne : registration ?

```
cd ../mapnik ; \
./test/standalone/datasource_registration_test-bin ; \
cd ../environnementTravail

../mapnik/test/standalone/datasource_registration_test-bin
```

Test 3 : mapnik-config

(mapnik-config est normalement dans le paquet libmapnik-dev)
La doc est ici

https://github.com/mapnik/mapnik/wiki/GettingStartedInPython

```
mapnik-config -v # should return a version number
mapnik-config --input-plugins
ls -al $(mapnik-config --input-plugins)
```

Test 4 : mapnik-render

Attention, il faut etre dans le repertoire mapnik !!!!

(mapnik-render est normalement dans le paquet mapnik-utils)

```
cd ../mapnik ; \
mapnik-render \
             ../environnementTravail/testMapnik.xml \
             ../environnementTravail/testMapnik.png ;\
cd ../environnementTravail ; \
display testMapnik.png
```

### Tirex

### Tileman

## Les premiers pas de la configuration (nginx et tileman)

Les paquets suivants sont installés :

  - tileman
  - tileman-example

Ces paquets fournissent des fichiers de configuration pour nginx, dont les paramètres correspondent à des sites, des cartes et un renderer pour tirex.....


|                          paquet                          |                             site-enabled                            |                                                         host                                                        |                map               |            renderer            |
|:--------------------------------------------------------:|:-------------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------------:|:--------------------------------:|:------------------------------:|
| Nom du paquet utilisé lors de l’installation sous debian | Nom du fichier présent dans le répertoire /etc/nginx/sites-enabled/ | Nom de l’hote virtuel présent dans ce ficher de configuration nginx et donc nom à ajouter dans le ficher /etc/hosts | Nom de la carte associée (tirex) | Nom du rendrer associé (tirex) |

Passons à l'utilisation et aux premiers paramétrages.

Par défaut, après installation, les fichiers de configuration de nginx sont paramétrés pour servir des sites qui s'appellent **tile** (pour la map *test*, paquet tileman) et **tileserver** (pour la map *example*, paquet tileman-example)

|      paquet     |  site-enabled  |    host    |   map   | renderer |
|:---------------:|:--------------:|:----------:|:-------:|----------|
|     tileman     |  tileman-proxy |    tile    |   test  |   test   |
| tileman-example | tileman-server | tileserver | example |  mapnik  |


#### Nom de la machine

You can access to the nginx from your local machine.

And VirtualHost name of the tile cache server is named 'tile' as default.

So you have to add 'tile' entry on your local hosts file (not on the remote host).

```
vi /etc/hosts
```

Le contenu est

```
127.0.0.1 localhost
127.0.0.1 tile
127.0.0.1 tileserver
```

#### Ajout des sites

```
sudo ln -s /etc/nginx/sites-available/tileman-proxy /etc/nginx/sites-enabled/tileman-proxy

sudo ln -s /etc/nginx/sites-available/tileman-server /etc/nginx/sites-enabled/tileman-server
```

#### Démarrage de nginx

```
sudo service nginx stop
sudo systemctl status nginx.service
sudo mkdir -p /opt/tileman/cache
sudo service nginx start
```

#### Visualisation du resultat

Test de nginx seul

```
firefox http://localhost
```

Test du site tileman-proxy

```
firefox http://tile/
firefox http://tile/12/2034/1454.png
```

Test du site site tileman-server

```
firefox http://tileserver/
```

## Un environnement pour orchestrer l'ensemble des outils

Nous avons donc installer et configurer les différents outils, maintenant nous allons mettre en place un environnement pour utiliser ces différents outils.

Création d'un environnement avec byobu
```
vi ~/.byobu/windows.tmux.split4
```

```
BYOBU_WINDOWS=osm byobu
```

```
./launchOsmByobu.sh
```
https://plus.google.com/+HannoBehrens/posts/CDUD1NJSHnr

http://stackoverflow.com/questions/5447278/bash-scripts-with-tmux-to-launch-a-4-paned-window

https://github.com/iasj/IniTmux

http://www.leehodgkinson.com/blog/quickly-setup-multiple-pane-and-multiple-window-sessions-in-your-terminal/

Byobu emploie le terme de "fenêtre" pour que l'utilisateur interagissent avec les différents outils.

### Window "*run*" : Exécution des programmes serveurs ou daemons
#### Serveur http nginx
##### configuration du nom de la machine
```
sudo vi /etc/hosts
```
##### daemon nginx
```
sudo service nginx status
sudo service nginx stop
sudo systemctl status nginx.service
sudo mkdir -p /opt/tileman/cache
sudo service nginx start
sudo service nginx start
```
#### daemon tirex
```
sudo service tirex-master status
sudo service tirex-backend-manager status
```

### Window "*log*" : Visualisation des logs
#### Colonne 1 : logs de nginx"
```
tail -f /var/log/nginx/access.log
tail -f /var/log/nginx/error.log
firefox http://localhost
firefox http://tile
links2 http://tileserver
```
#### Colonne 2 : logs de tirex
```
tirex-status --extended
tail -f /var/log/syslog
tail -f /var/log/tirex/jobs.log
```

### Window "*etc1*" Visualisation des premiers paramètres
#### Colonne 1 : tileman
```
vi /etc/tileman.conf
```

#### Colonne 2 : tirex
```
tirex-check-config
tirex-tiledir-check test
tirex-tiledir-check example
vi /etc/tirex/tirex.conf
```

### Window "*etc2*" Visualisation des seconds paramètres
#### Rangée 1 : nginx/site-enabled
##### Colonne 1 : site test
```
vi /etc/nginx/sites-enabled/tileman-proxy
```
##### Colonne 2 : site example
```
vi /etc/nginx/sites-enabled/tileman-server
```
#### Rangée 2 : les renderers de tirex
Les renderers sont listés au milieu de la commande
```
tirex-status --extended
```
Ou bien, en listant les fichiers de ce repertoire
```
ls -al /etc/tirex/renderer/
```
##### Colonne 1 : site test
```
vi /etc/tirex/renderer/test.conf
```
##### Colonne 2 : site example
```
vi /etc/tirex/renderer/mapnik.conf
```
##### Rangée 3 : les maps de tirex
Les maps dont listés en bas de la commande
```
tirex-status --extended
```
##### Colonne 1 : site test
test
##### Colonne 2 : site example
```
vi /usr/share/tirex/example-map/example.xml
```


### Fabrication des tuiles : on se place coté client

#### Sollicitation de la fabrication des tuiles par batch
##### map test
```
ls -al /var/lib/tirex/tiles/test
tirex-batch --prio=1 map=test z=0 x=0 y=0
ls -al /var/lib/tirex/tiles/test/0/0/0/0/0/0.meta
```
##### map example
```
ls -al /var/lib/tirex/tiles/example
tirex-batch --prio=1 map=example z=0 x=0 y=0
ls -al /var/lib/tirex/example/test/0/0/0/0/0/0.meta
```
#### Sollicitation de la fabrication des tuiles par web, direct
```
firefox http://tile/0/0/0.png
firefox http://tile/4/7/5.png
firefox http://tile/5/15/11.png
firefox http://tile/6/31/22.png
firefox http://tile/7/63/45.png
firefox http://tile/8/127/90.png
firefox http://tile/9/254/181.png
firefox http://tile/10/508/363.png
firefox http://tile/11/1017/727.png
firefox http://openlayers.org/en/v3.15.1/examples/canvas-tiles.html
firefox http://tile/12/2034/1454.png
```
http://tile/0/0/0.png

http://tile/4/7/5.png

http://tile/5/15/11.png

http://tile/6/31/22.png

http://tile/7/63/45.png

http://tile/8/127/90.png

http://tile/9/254/181.png

http://tile/10/508/363.png

http://tile/11/1017/727.png

http://openlayers.org/en/v3.15.1/examples/canvas-tiles.html

http://tile/12/2034/1454.png

#### Sollicitation de la fabrication des tuiles par web, via OpenLayers

http://openlayers.org/en/v3.15.1/examples/

#### Sollicitation de la fabrication des tuiles par qgis
qgis avec extension openstreetmap et tilelayer plugin

http://www.3liz.com/blog/rldhont/index.php?post/2012/07/17/Les-Tuiles-OpenStreetMap-dans-QGIS

http://www.portailsig.org/content/qgis-visualiser-les-tuiles-tms-openstreetmap-et-autres-avec-gdal-ou-les-extensions-tilelayer
