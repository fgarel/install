

# OSM 2ème partie : Diffuser les données

Dans cette seconde partie, nous abordons l'installation et l'utilisation des outils qui sont plus liés à la diffusion de la données OSM.

(moteur de rendu (mapnik), serveur cache et serveur de tuile (tilestache))

Voici, en simplifié, les différentes briques,
(vue ici : https://karussell.wordpress.com/2013/10/26/setup-tile-server-mapnik/) :

```
 A) browser/client (leaflet, openlayers)
 |
 B) tile server (mod_tile, tile cache, tile stache, mapproxy, geowebcache)
 |
 C) map web service = WMS (MapServer, GeoServer, Mapnik)
 |
 D) Data storage (PostgreSQL, vector tiles)
 |
 E) OSM data (xml, pbf)

```
Comments

    for C => Mapnik can use TileMill to style to map
    leaflet can do tile layers (B) but also WMS (C)
    Nearly always you need PostgreSQL, but in rare cases you can avoid it via vector tiles.
    A common approach is to use apache2 with mod_tile. Serving the tiles from disc or creating the image via mapnik through renderd. But also nginx gets more popular. Tiledrawer
    has an old scripts also with mapnik and nginx.
    You can also use GeoServer with a cache in front. Often it only serves some feature layers.
    WFS = web feature service
    MWS = map web service


http://www.volkerschatz.com/net/osm/osm.html
http://www.volkerschatz.com/net/osm/canonicalosm.html
https://tilemill-project.github.io/tilemill/docs/guides/osm-bright-mac-quickstart/

Comparaison des serveurs de tuiles
https://www.openstreetmap.org/user/pnorman/diary/39920

Ces outils sont, pour ne citer que les principaux (nous nous contenterons de mapnik et tilestache et tessera):

 - des moteurs de rendus :
   - mapnik
   - mapbox-gl
 - des serveurs de tuiles
   - avec le moteur mapnik
     - renderd (?)
       http://wiki.openstreetmap.org/wiki/Mod_tile
     - Tirex (en perl)
       http://wiki.openstreetmap.org/wiki/Tirex
     - tilestache (en python)
       (pour servir des tuiles rendues a l'aide du moteur mapnik et mapbox)
       http://tilestache.org/
       https://github.com/TileStache/TileStache
     - tessera (en node-js)
       https://github.com/mojodna/tessera
   - avec le moteur mapbox-gl
     - tileserver (pour servir des tuiles rendues à l'aide du moteur mapbox)
       http://tileserver.org/
       https://github.com/klokantech/tileserver-gl
     - tilestream
       https://github.com/cutting-room-floor/tilestream
 - des servers et des caches
   - tileman
     https://github.com/osmfj/tileman

## Sous-ensemble d'un environnement plus large

Pour rappel, dans la partie 1, nous avons aborder l'installation de postgresql et des utilitaires osmosis, osm2pgsql, mais ces installations peuvent aussi être vues dans environnement plus complet.

L'environnement complet a pour but
de faciliter la manipulation de données OSM.

*(Ici, il faut comprendre le mot environnement comme ensemble d'outils, et non pas comme une environnement virtuel python)*

La documentation sur l'installation et l'utilisation de cet
environnement est détaillé dans
Linux Magazine N°188

L'environnement OSM est un ensemble de composants

La liste des composants d'OSM est ici

http://wiki.openstreetmap.org/wiki/FR:Component_overview

L'installation de ces composants nécessite parfois des prérequis.

Par exemple, des outils comme osmosis sont développés en Java.

D'autre part, il faut aussi veillez  avoir postgresql qui tourne...

Il faut donc au moins :

  - une base de données postgresql, avec l'extension postgis, nécessaire pour stocker les données
  - l'outil osmosis, nécessaire pour télécharger les données OpenStreetMap, est fourni par le paquet osmosis
  - l'outil osm2pgsql, nécessaire pour importer les données dans postgresql, est fourni par le paquet osm2pgsql
  - l'outil mapnik qui est le "moteur"
    Mapnik est l'outil principal pour le rendu
    http://wiki.openstreetmap.org/wiki/FR:Rendu
    http://wiki.openstreetmap.org/wiki/FR:Mapnik
  - tilestache est le serveur de tuile
    Tilestache
    http://tilestache.org/
    https://github.com/TileStache/TileStache
  - autre serveur de tuile openmaptiles (tuiles vectorielles)
    https://git.osgeo.org/gogs/foss4g-europe/foss4g-europe-2017-paris/src/master/presentations/2017-07-20/general_track/foss4g-europe-2017-OpenMapTiles_Ready_to_use_OpenStreetMap_vector_tiles-PetrSloup.pdf

  - autre doc
    https://www.apicy.fr/carte/realiser-une-carte-similaire

old :
  - l'outil tirex, equivalent de renderd, nécessaire pour fabriquer les tuiles, est installé manuellement
    Tirex
    http://wiki.openstreetmap.org/wiki/Tirex
  - des scripts lua couplés au serveur NGINX, (outil tileman) remplacent le module apache mod_tile.
    (Ces scripts sont nécessaires pour servir les tuiles. L'outil tileman est aussi installé manuellement)
    Tileman
    https://github.com/osmfj/tileman
    http://osmfj.github.io/tileman/
    http://miurahr.github.io/slides/2013-0908-tileman.html#/title

L'installation de ces composants a été réalisée grâce aux scripts :

  - installOSMMapnikUbuntuDockerPaquet1.sh
  - installOSMUbuntu.sh
  - installOSMTools.sh
  - installOSMCartoCSS.sh
  - installOSMMapnikUbuntuPaquet.sh
  - installOSMPythonMapnikUbuntu.sh
  - installOSMTilestache.sh

Après ces installations, il faudra configurer ces outils pour qu'ils fonctionnent ensemble.

## Installation

Pour simplifier, nous allons faire les installations dans un container Docker

### Permettre la communication entre le poste host et le container
Sur la machine hote, il faut autoriser un container :
 - à acceder au display de la machine hote
 - à acceder au serveur de base de données postgresql

#### Serveur X
Par defaut, une application graphique ne peut pas être lancée dans un container docker.
Par exemple, on ne peut pas lancer un navigateur graphique, ou même afficher une simple image.

Pour modifier cette configuration, nous allons tester la création et l'utilisation d'un
nouveau container dont le but est de démontrer l'affichage déportée d'une application
graphique depuis un container vers le serveur hôte.

Ce qu'il faut retenir de cette démonstration, c'est que nous allons utiliser les
arguments supplémentaires dans notre appel à docker :
```
-v $XSOCK:$XSOCK \
-v $XAUTH:$XAUTH \
-e DISPLAY=$DISPLAY \
-e XAUTHORITY=$XAUTH
```

Voici donc la démonstration (POC)
La doc est ici
https://stackoverflow.com/questions/16296753/can-you-run-gui-apps-in-a-docker-container

```
docker build -t xeyes - << __EOF__
FROM debian
RUN apt-get update
RUN apt-get install -qqy x11-apps
ENV DISPLAY :0
CMD xeyes
__EOF__
```

```
XSOCK=/tmp/.X11-unix/X0
XAUTH=/tmp/.docker.xauth
```

The Xauthority file can be written in a way so that the hostname does not matter.
We need to set the Authentication Family to 'FamilyWild'.
I am not sure, if xauth has a proper command line for this, so here is an example that combines xauth and sed to do that.
We need to change the first 16 bits of the nlist output.
The value of FamilyWild is 65535 or 0xffff.
```
xauth nlist $DISPLAY | sed -e 's/^..../ffff/'  | xauth -f $XAUTH nmerge -    
```

```
docker run -ti -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTH xeyes
```

#### Acces au server postgres


Quand nous sommes dans le container c-ubuntu-mapnik-2, il faut que nous soyons
capable de se connecter au serveur de base de données qui est sur la machine hôte.

Sur la machine localhost, qui héberge à la fois :
- le container docker qui est en train de s'exécuter
- le serveur de base de données postgresql

Il faut configurer ce serveur de base de données postgresql pour qu'il
accepte les connections d'un container docker

Cette configuration a été vu ici :
https://stackoverflow.com/questions/31249112/allow-docker-container-to-connect-to-a-local-host-postgres-database

Sur localhost,
```
sudo vi /etc/postgresql/9.5/main/pg_hba.conf
```

```
host      all     all     172.17.0.0/16    md5
```

```
sudo service postgresql reload
```

Dans le container, on pourra verifier

```
psql -h 172.17.0.1 -d osm -U osmuser
```

```

```

### Installation du container

Si besoin, on supprime tout, et on part d'une feuille blanche.

Attention, cette commande supprime tous les containers et toutes les images...
```
./dockerRaz.sh
```

Il faut donc commencer par le script pour créer l'image

```
./installOSMMapnikUbuntuDockerPaquet1.sh
```

Puis, il faut créer un container basé sur cette image
```
docker run -ti \
           -p 9001:9001 \
           -p 8000:80 \
           -v $(readlink --canonicalize ./docker-mapnik/resources):/etc/tilestache/resources \
           -v $(readlink --canonicalize ..):/home/fred/Documents/install/source \
           -v $XSOCK:$XSOCK \
           -v $XAUTH:$XAUTH \
           -e DISPLAY=$DISPLAY \
           -e XAUTHORITY=$XAUTH \
           --name c-ubuntu-mapnik \
           i-ubuntu-mapnik
```

Cette ligne de commande est dans le script
```
./dockerRun1.sh
```

Et enfin à l'intérieur de ce container, il faut lancer l'installation des outils
```
chown -R fred:fred .
cd ~/Documents/install/source/environnementTravail/
./installAll.sh
./installFonts.sh
zsh
cd ~/Documents/install/source/osm
./installOSMCartoCSS2.sh
## cd ~/Documents/install/source/openstreetmap-carto-vector-tiles/scripts
## ./get-shapefile.py --no-shape
```

Cette ensemble de commande est dans le script
```
./Documents/install/source/osm/dockerInside1.sh
zsh
exit
exit
```

Une fois que l'installation est finie à l'intérieur du container, nous allons sortir de ce container,
puis créer une seconde image à partir de ce container
```
docker commit c-ubuntu-mapnik i-ubuntu-mapnik-2
docker rm c-ubuntu-mapnik
```

Enfin, nous pouvons maintenant utiliser cette seconde image pour travailler
```
docker run -ti \
           -p 9001:9001 \
           -p 8000:80 \
           -v $(readlink --canonicalize ./docker-mapnik/resources):/etc/tilestache/resources \
           -v $(readlink --canonicalize ..):/home/fred/Documents/install/source \
           -v $XSOCK:$XSOCK \
           -v $XAUTH:$XAUTH \
           -e DISPLAY=$DISPLAY \
           -e XAUTHORITY=$XAUTH \
           --name c-ubuntu-mapnik-2 \
           i-ubuntu-mapnik-2 \
           /bin/zsh
```

Cette ligne de commande est dans le script
```
./dockerRun2.sh
```

Vérification que, depuis le container, nous soyons capable d'interroger la base de données hébergée sur la machine hôte
```
psql -h 172.17.0.1 -d osm -U osmuser
```

A l'intérieur du container, nous allons lancer kosmtik pour qu'il serve le project.mml qui est dans le répertoire openstreetmap-carto-vector-tiles
Cependant, nous devons modifier un peu ce fichier project.mml
Modification du fichier project.mml de façon a ce qu'il pointe vers la base de données

Nota : cette modification a déjà été réalisée dans installOSMCartoCSS2.sh


On peut maintenant lancer kosmtik pour avoir notre serveur de tuile qui marche

```
cd ~/Documents/install/source/openstreetmap-carto-vector-tiles
kosmtik serve --host 172.17.0.2 --port 8000 project.mml
```

Sur le poste client (host), on peut lancer la visualisation de la carte
```
http://172.17.0.2:8000/
```

## Les modes d'utilisation

### Tessera pour servir des tuiles vecteurs avec le protocole tilejson

Il faut que dans le fichier project.mml, la directive "source" soit activée

En lançant tessera dans le container, on a donc maintenant un serveur de tuile
make tessera

Comment l'utiliser ?
Dans le navigateur
Acces a un page web
http://172.17.0.2:8080/pbfs/live/index.json
Acces a une dalle
http://172.17.0.2:8080/pbfs/live/10/508/363.pbf
http://172.17.0.2:8080/pbfs/live/11/1017/727.pbf
http://172.17.0.2:8080/pbfs/live/12/2034/1454.pbf
http://172.17.0.2:8080/pbfs/live/13/4069/2909.pbf
http://172.17.0.2:8080/pbfs/live/14/8139/5818.pbf
http://172.17.0.2:8080/pbfs/live/15/16278/11636.pbf
http://172.17.0.2:8080/pbfs/live/16/32556/23272.pbf


Avec qgis, il faut l'extension "Vector Tiles Reader"
https://github.com/geometalab/Vector-Tiles-Reader-QGIS-Plugin
http://giswiki.hsr.ch/Vector_Tiles
puis aller dans Couche / Ajouter une couche / Add vector Tile layer

La connexion "TuilesCDALR" est paramétrée avec cette TileJson url
http://172.17.0.2:8080/pbfs/live/index.json


### Kosmtik pour servir des tuiles png

Il faut que dans le fichier project.mml, la directive "source" soit désactivée

En lancant kosmtik dans le container, on a maintenant un framework
kosmtik serve --host 172.17.0.2 --port 8000 project.mml

Comment l'utiliser ?
Dans le navigateur
Acces a un page web
http://172.17.0.2:8000/
Acces a une dalle
http://172.17.0.2:8000/openstreetmap-carto-vector-tiles/tile/10/508/363.png

Sous qgis
Il faut l'extension "TileLayerPlugin"

Il faut ajouter un fichier .qgis2/TuilesCDALR.tsv qui contient ces configurations
```
#title	credit	serviceUrl	yOriginTop	zmin	zmax	xmin	ymin	xmax	ymax
OpenStreetMap	© OpenStreetMap contributors	http://tile.openstreetmap.org/{z}/{x}/{y}.png	1	0	19
TuilesCDALR	CDALR	http://172.17.0.2:8000/openstreetmap-carto-vector-tiles/tile/{z}/{x}/{y}.png	1	0	19				
```

Internet / TileLayerPlugin / AddTileLayer

Settings
External Layer definition repository
/home/fred/.qgis2

usage
prendre la nouvelle couche "TuilesCDALR"



## Autre test : tilestache

Ici, le but est de mettre en place un cache entre un serveur de tuile et le client.

### Tilestache en tant que proxy tuile open street map

Voici quelques tuiles accessibles depuis le navigateur :
```
http://tile.openstreetmap.org/10/508/363.png
http://tile.openstreetmap.org/11/1017/727.png
http://tile.openstreetmap.org/12/2034/1454.png
http://tile.openstreetmap.org/13/4069/2909.png
http://tile.openstrretmap.org/14/8139/5818.png
```


Nous allons installer et configurer tilstache pour qu'il fasse office de proxy
La doc pour configurer est ici :
```
http://tilestache.org/doc/
```

#### tilestache_test : le mode test

Voici un fichier de configuration pour tilestache :
```
vi tilestache_test.cfg
```

```
{
  "cache": {
    "name": "Test",
    "verbose": false},
  "layers": {
    "openstreetmap": {
      "provider": {
        "name": "proxy",
        "url": "http://tile.openstreetmap.org/{Z}/{X}/{Y}.png"}
    }
  }
}
```

On peut maintenant lancer tilestache avec ce nouveau fichier de configuration :
```
tilestache-server -c tilestache_test.cfg -p 8081
```

Puis on teste cette configuration dans le navigateur
```
http://localhost:8081/roads/10/508/363.png
http://localhost:8081/roads/11/1017/727.png
http://localhost:8081/roads/12/2034/1454.png
http://localhost:8081/roads/13/4069/2909.png
http://localhost:8081/roads/14/8139/5818.png
```

#### tilestache_disk : un vrai cache

Nous allons maintenant améliorer notre configuration pour avoir une véritable
cache des tuiles sur notre disque local.

Voici le nouveau fichier de configuration :

```
vi tilestache_disk.cfg
```

```
{
  "cache": {
    "name": "Disk",
    "path": "/tmp/stache",
    "umask": "0000",
    "dirs": "portable",
    "gzip": ["xml", "json"],
    "verbose": false},
  "layers": {
    "openstreetmap": {
      "provider": {
        "name": "proxy",
        "url": "http://tile.openstreetmap.org/{Z}/{X}/{Y}.png"}
    }
  }
}
```

On execute :
```
tilestache-server -c tilestache_disk.cfg -p 8081
```

Lorsque le client appelle la dalle 14/8139/5818, elle est copiée sur le disque pour une
utilisation ultérieure.

```
ls -al /tmp/stache/roads/14/8139/5818.png
```

Nous avons donc maintenant un serveur proxy de tuile qui est configuré pour "cacher"
des tuiles openstreetmap.

Nous allons maintenant configurer qgis pour utiliser ce sytème de cache :

Depuis qgis :
Il faut l'extension "TileLayerPlugin"

Il faut ajouter un fichier .qgis2/TuilesCDALR.tsv qui contient ces configurations
```
#title	credit	serviceUrl	yOriginTop	zmin	zmax	xmin	ymin	xmax	ymax
OpenStreetMap direct	© OpenStreetMap contributors	http://tile.openstreetmap.org/{z}/{x}/{y}.png	1	0	19
OpenStreetMap via Tilestache	CDALR	http://127.0.0.1:8081/roads/{z}/{x}/{y}.png	1	0	19
TuilesCDALR container docker	CDALR	http://172.17.0.2:8000/openstreetmap-carto-vector-tiles/tile/{z}/{x}/{y}.png	1	0	19		
```

Internet / TileLayerPlugin / AddTileLayer

Settings
External Layer definition repository
/home/fred/.qgis2

usage
prendre la nouvelle couche "OpenStreetMap via Tilestache"

### Est il possible d'utiliser tilestache pour cacher des tuiles qui viennent de CeramikServer ?

Vérifions tout d'abord que nous avons bien un serveur de tuiles
```
https://sigar.agglo-larochelle.fr/CeramikServer/rest/wmts/cdalr/ortho2014_geo17?request=GetCapabilities
```

Voici l'url pour afficher une tuile dans le navigateur
```
https://sigar.agglo-larochelle.fr/CeramikServer/rest/wmts/cdalr/ortho2014_geo17/default/epsg:3946/5/13/7
```

Le nouveau fichier TuilesCDALR.tsv
```
#title	credit	serviceUrl	yOriginTop	zmin	zmax	xmin	ymin	xmax	ymax
OpenStreetMap direct	OpenStreetMap	http://tile.openstreetmap.org/{z}/{x}/{y}.png	1	0	19
OpenStreetMap via Tilestache	OpenStreetMap	http://127.0.0.1:8081/openstreetmap/{z}/{x}/{y}.png	1	0	19
TuilesCDALR container docker	CDALR	http://172.17.0.2:8000/openstreetmap-carto-vector-tiles/tile/{z}/{x}/{y}.png	1	0	19
CeramikServer Ortho 2014 3857 direct	CDA	https://sigar.agglo-larochelle.fr/CeramikServer/rest/wmts/cdalr/ortho2014_geo17/default/epsg:3857/{z}/{y}/{x}.png	1	0	19	-1.249	46.00	-0.907059	46.247775
CeramikServer Ortho 2014 3946 direct	CDA	https://sigar.agglo-larochelle.fr/CeramikServer/rest/wmts/cdalr/ortho2014_geo17/default/epsg:3946/{z}/{y}/{x}.png	1	0	19	-138525	5781063	-95109	5820461
CeramikServer Ortho 2014 via Tilestache	CDA	https://127.0.0.1:8081/ortho_2014/{z}/{y}/{x}.png	1	0	19
```

Le nouveau fichier tilestache_disk.cfg
```
{
  "cache": {
    "name": "Disk",
    "path": "/tmp/stache",
    "umask": "0000",
    "dirs": "portable",
    "gzip": ["xml", "json"],
    "verbose": false},
  "layers": {
    "openstreetmap": {
      "provider": {
        "name": "proxy",
        "url": "http://tile.openstreetmap.org/{Z}/{X}/{Y}.png"}
    },
    "ortho_2014": {
      "provider": {
        "name": "proxy",
        "url": "https://sigar.agglo-larochelle.fr/CeramikServer/rest/wmts/cdalr/ortho2014_geo17/default/epsg:3946/{Z}/{X}/{Y}.png"}
    }
  }
}
```

on voit les tuiles : mais on a un problème de coordonnées :
le plugin ne gere que des tuiles en 3857 et dont le niveau 0 est mondial..
