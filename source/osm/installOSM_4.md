# Utilisation de la photographie aérienne dans josm


Pour pouvoir utiliser la photo aérienne, nous allons utiliser mapproxy
(la connexion directe à sigar pose problème : car il y a un problème de chargement de tuiel : pas de tuiles à ce niveau de zoom)

En utilisant mapproxy, et le protocole wmts

Préferences d'imagerie
ajout d'un fournisseur wmts :
http://vlr6180y.mairie.fr:8080/service?SERVICE=WMTS&REQUEST=GetCapabilities&VERSION=1.3.0


https://sigar.agglo-larochelle.fr/CeramikServer/rest/wmts/cdalr/ortho2018?request=getCapabilities



# Recuperation de données OSM dans qgis



Facon 1 : Plugin QGIS : Osm Downloader


Facon 2 : Plugin QGIS : Quick OSM
Facon 2a : Telechargemnet préalable du fichier osm.pbf
QuickOSM est capable de lire un  fichier pbf
./osmDownloadFirstTime.sh



Facon 2b : telechargement direct

Facon 2c : overpass.api


Facon 3 : application de style sur des données teléchargées à la main 
suivi du processus decrit ici
https://github.com/yannos/Beautiful_OSM_in_QGIS/



osmImportFirstTime.sh : 
osm apidb osmuser osmpass
osm osm2pgsql fred fgpass
-> style openstreetmap-carto.style

osmImportBeautiful_OSM_in_QGIS.sh :
osm osm2pgsql fred fgpass
-> style /usr/share/osm2pgsql/default.style
