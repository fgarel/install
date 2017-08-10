

# OSM : Manipulation de données vectorielles pour fabriquer nos propres tuiles

Quand on parle d'OSM, il faut déjà distinguer les types de données et les usages qui peuvent en être fait.

Pour faire un résumé très rapide, il y a les données de type "vecteur" et les données de type "tms" (tuiles dejà toutes faites)

Une bonne introduction à OSM est sur cloud.sagemath.com

https://cloud.sagemath.com/projects/c9022f4a-0154-4034-bb05-bf3e56d3e3cd/files/osm/OpenStreetMap.md


## Serveurs publics
Cependant, dans les explications qui sont sur cloud.sagemath.com, il est question des serveurs publics d'OSM

## Serveurs Privés
Ici, nous allons nous concentrer sur la mise en oeuvre d'une instance privée.

Nous allons distinguer deux parties dans cette documentation :
 - la 1ère partie est consacré à la récupération et au stockage de données,
 - la 2de partie est consacré à la transformation et à la diffusion de la donnée OSM

Nous allons avoir besoin d'installer des outils, mais nous allons aussi avoir besoin d'écrire des scripts et/ou des procédures.

## Installation d'un ensemble d'outils liés à OSM

La documentation sur l'installation et l'utilisation de cet
ensemble d'outil est détaillé dans
Linux Magazine N°188

La liste de ces outils est ici

http://wiki.openstreetmap.org/wiki/FR:Component_overview

L'installation de ces composants nécessite parfois des prérequis.

Par exemple, des outils comme osmosis sont développés en Java.

D'autre part, il faut aussi veiller à avoir postgresql qui tourne...

Il faut donc au moins :

  - une base de données postgresql, avec l'extension postgis, nécessaire pour stocker les données
  - l'outil osmosis, nécessaire pour télécharger les données OpenStreetMap, est fourni par le paquet osmosis
  - l'outil osm2pgsql, nécessaire pour importer les données dans postgresql, est fourni par le paquet osm2pgsql
  - l'outil mapnik, outil principal pour la fabrication du rendu (des tuiles), est utilisé dans un container docker
  - l'outil tirex, equivalent de renderd, nécessaire pour fabriquer les tuiles, est installé manuellement dans ce meme container docker
  - des scripts lua couplés au serveur NGINX, (outil tileman) remplacent le module apache mod_tile. (Ces scripts sont nécessaires pour servir les tuiles. L'outil tileman est aussi installé manuellement)


Nous allons donc découper cette installation d'environnement "OSM" en trois parties :
 - les outils qui sont nécessaires à la création de notre instance privée (partie 1)
 - les outils qui concernent la création de tuiles et à leurs diffusions (partie 2)
 - les outils (et les ressources) qui sont liés à la modification de la donnée (JOSM, overpass-turbo.eu, ....) (partie 3)
