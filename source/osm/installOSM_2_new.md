

# OSM 2ème partie : Diffuser les données

## Introduction

Dans la première partie, nous avons vu comment recuperer les données vectorielles d'OSM.
Mais, pour le moment, nous ne savons ps encore les utiliser.
(faire un rendu à partir de ces données vectorielles, en utilisant des feuilles de styles)

Il y a plusieurs façon de penser le rendu, selon que l'on le fasse ponctuellement,
de manière automatisé, conjointement avec un serveur de tuile, etc

Après avoir présenter les differentes briques dans le sous-paragraphe ci-dessous, nous commencerons et commenterons l'installation des outils pour générer le rendu de nos cartes.

### Les différentes briques

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

cf aussi le projet OpenMapTiles et son implémentation MapTiler Cloud
https://openmaptiles.org/

## Installation
Nous allons tout d'abord finir l'installation de
openstreetmap-carto-vector-tiles

### Openstreetmap-carto-vector-tiles
En effet, dans la partie 1, nous avons telecharger la feuille de style, mais nous n'avons pas fini l'installation.

Nous allons suivre la documentation qui est Ici
https://github.com/geofabrik/openstreetmap-carto-vector-tiles/blob/master/INSTALL.md

```
./installOSMCartoCSS2.sh
```
