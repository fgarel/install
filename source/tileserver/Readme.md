# Serveur de tuile vecteur

## Introduction
Il y a le serveur de tuile vecteur


## Mise en place d'un serveur de tuile
La doc est ici :
https://hub.docker.com/r/klokantech/openmaptiles-server/
ou là :
https://openmaptiles.org/docs/

la commande est ici :
```
docker run --rm -it -v $(pwd):/data -p 8081:80 klokantech/openmaptiles-server
```

Pour simplifier, on passe par un script
```
./startDockerKitematic.sh
```

### Paramétrage du serveur
Une fois installé, le paramétrage du serveur, y compris le telechargement des données osm au format tuile, se fait en suivant l'assistant.
Le jeu de données (tileset) téléchargées se mettent dans le repertoire courant.
Au cours du processus, on choisit de telecharger la version libre

```
https://openmaptiles.com/downloads/tileset/osm/europe/france/la-rochelle/?wizard&usage=open-source
```

### Utilisation sous qgis
les tuiles, au format wmts, peuvent etre lues en configurant la nouvelle source :
tuiles_tilserver
```
http://localhost:8081/services/wmts?service=WMTS&request=GetCapabilities
```

## Personnalisation des styles

il existe un editeur de style, qui permet de sauvegarder un style au format json.

Ce fichier de style peut etre recuperer et charger par le serveur tileserver que l'on vient d'installer en local.

### maputnik pour personnaliser un style
l'editeur est disponible en ligne ici:
```
https://editor.openmaptiles.org/#12.37/46.16113/-1.17056
```


