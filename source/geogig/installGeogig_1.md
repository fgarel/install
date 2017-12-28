

# geogig 1ère partie : Installation des outils

Première partie,
  - installation du serveur geogig,
  - installation de geoserver,
  - installation des plugins qgis


## Installation de geogig

La dernière version de geogig est disponible sur le site officiel

http://geogig.org/

Il faut noter le numéro de la dernière version, modifier le fichier script puis l'exécuter

L'installation est automatisée et détaillée via l'exécution d'un script
Édition du fichier installGeogig.sh en fonction des versions,

```
vi ~/Documents/install/source/geogig/bin/installGeogig.sh
```

Puis exécution
```
~/Documents/install/source/geogig/bin/installGeogig.sh
```

## Installation de nginx et configuration des sites web
Le serveur web n'est pas vraiment nécessaire pour tomcat
(alors que tomcat est necessaire pour geoserver)
cependant, ce script ne fait pas qu'installer nginx :
il permet aussi de configurer des sites
(par exemple geoserver.mairie.fr)

Le script a exécuter est donc :
```
~/Documents/install/source/environnementTravail/installServeurWeb.sh
```

## Installation de java et tomcat
Java et Tomcat sont nécessaires pour l'installation de geoserver

Quelle version de java ?
Attention : il semble que geogig fonctionne avec java 8 mais pas avec java 9
Avec java 9, nos tests on t fait apparaitre ce genre de messages :
"WARNING: Illegal reflective access"
```
apt-cache search openjdk | grep jre
```
openjdk-8-jre

Quelle version de tomcat ?
```
apt-cache search tomcat
```
tomcat8

Edition du fichier installJava.sh en fonction des versions, puis execution
```
vi ~/Documents/install/source/environnementTravail/installJava.sh
```
```
~/Documents/install/source/environnementTravail/installJava.sh
```

Test de java
```
java -version
```

Test de Tomcat
```
http://localhost:8080/
```
En tant qu'administrateur,
```
http://localhost:8080/host-manager/html
```

Et en tant que manager (par exemple, pour installer des war)
```
http://localhost:8080/manager/html
```

## Installation de geoserver et de ses plugins

Installation de geoserver et de son plugin gs-geogig

Quelle version de geoserver ?
http://geoserver.org/

Quelle version du plugin gs-geogig ?
https://github.com/locationtech/geogig
puis, dans le fichier README.md il faut cliquer, dans le pargraphe download,
sur le lien :
The latest release Version 1.2.0 is available on github
https://github.com/locationtech/geogig/relesases/tag/v.1.2.0

Edition du fichier installGeoServer.sh
```
vi ~/Documents/install/source/geogig/bin/installGeoServer.sh
```
Puis Execution
```
~/Documents/install/source/geogig/bin/installGeoServer.sh
```

```
http://www.cdalr.fr/geoserver/index.html
http://geoserver.mairie.fr/geoserver/web/
```
admin/geoserver

## Installation des plugins qgis

Il existe au moins deux plugins qgis (dont le développement est actif) :
https://github.com/boundlessgeo/qgis-geogiglight-plugin
https://github.com/SWM-IT/qgis-netze-gas/blob/master/documents/en_gb/Dokumentation%20GeogigLocalClient.rst

### Installation du plugin de boundlessgeo : Geogig Client
L'installation du plugin se fait grace au script
```
~/Documents/install/source/geogig/bin/installPluginQgis.sh
```

Le plugin est accessible sous QGis dans le menu
```
Extension / Geogig
```

### Installation du plugin alternatif : Geogig Local Client
L'installation du plugin se fait grace au script
```
~/Documents/install/source/geogig/bin/installPluginQgis.sh
```

Le plugin est accessible sous QGis dans le menu
```
Base de Données / Geogig Local Client
```
