

# OSM 3ème partie : Manipuler les données

Dans cette troisième partie, nous abordons l'installation et l'utilisation des outils
qui sont plus liés à l'interrogation, la manipulation de la données OSM.

Ces outils sont, pour ne citer que les principaux, :
 - JOSM
 - overpas-turbo.eu

## Sous-ensemble d'un environnement plus large

Pour rappel, dans la partie 1, nous avons aborder l'installation de postgresql et des utilitaires osmosis, osm2pgsql, mais ces installations peuvent aussi être vues dans environnement plus complet.

Dans la partie 2, nous avons vu comment construire des tuiles à partir de données vecteur.

Dans la partie 3, nous allons voir comment modifier les données vecteur OSM
(les interroger, les modifier, reverser nos modifications dans le depot central)

## Dessin

### JOSM

On installe JOSM en suivant la doc de cette page
https://josm.openstreetmap.de/
https://josm.openstreetmap.de/wiki/Fr%3AWikiStart
```
```


```

```
### Maputnik


Maputnik est un autre editeur, avec des styles paramétrables
```

```

## Interogation des données

### overpass-turbo.eu

C'est le site pour interroger (select avec filtre) les données osm

### Utilisation de overpass-turbo.eu

1. aller sur le site
2. copier coller le contenu du fichier
```
~/Documents/install/source/osm/requete_overpass-turbo_BandesPistesCyclables.oql
```
```
~/Documents/install/source/osm/requete_overpass-turbo_FondDePlan.oql
```


### La liste des tags

La liste des tags OSM peut-etre vu ici :
http://jawg.github.io/h2geo

https://github.com/jawg/h2geo
http://taginfo.openstreetmap.org/
http://wiki.openstreetmap.org/wiki/Tag:shop%3Dpharmacy
https://wiki.openstreetmap.org/wiki/FR%3AKey%3Aamenity

### OpenMapTiles
Outil pour fair des tuiles ? => partie 2
