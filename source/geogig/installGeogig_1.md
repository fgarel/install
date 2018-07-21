

# geogig 1ère partie : Installation des outils

Première partie,
  - installation ou upgrade de postgresql
  - Installation de Java et de Tomcat
  - installation du serveur geogig,
  - installation de geoserver,
  - installation des plugins qgis


## Installation ou upgrade de postrgresql / postgis

Quelles versions ?
postgresql 10 et postgis 2.4 ... en attendant que ...
postgresql 11 et postgis 2.5 soient sortis
(actuellement ces deux dernieres versions sont en beta)

la base de données est installé sur le serveur pg.cdalr.fr
```
~/Documents/install/source/environnementTravail/installPostgresql.sh
```
ou
```
~/Documents/install/source/environnementTravail/upgradePostgresql.sh
```

## Installation de java et tomcat
Java et Tomcat sont nécessaires pour l'installation de geoserver

Quelle version de java ? la 8
geogig fonctionne avec java 8 mais pas avec java 9
cf ici :
http://docs.geoserver.org/latest/en/user/production/java.html
Avec java 9, nos tests ont fait apparaitre ce genre de messages :
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

### Test de java
```
java -version
```

### Configuration de tomcat8

#### Les utilisateurs/Roles

Ajout des roles admin-gui et manager-gui

```
sudo su
vi /var/lib/tomcat$TOMCAT_VERSION/conf/tomcat-users.xml
```
```
<tomcat-users>
  <role rolename="admin-gui"/>
  <role rolename="admin-script"/>
  <role rolename="manager-gui"/>
  <role rolename="manager-script"/>
  <role rolename="profil-01"/>
  <user username="fred" password="secret" roles="admin-gui,manager-gui"/>
  <user username="admin" password="secret" roles="admin-script,manager-script"/>
  <user username="geoserver" password="geoserver" roles="profil-01"/>
</tomcat-users>
```

#### Les connexions distantes
Afin de permettre à un client distant de se connecter au serveur tomcat,
il faut modifier un fichier de Configuration.
Par defaut, seul la connexion en localhost est possible.

```
sudo su
vi /usr/share/tomcat$TOMCAT_VERSION-admin/manager/META-INF/context.xml
```
Il faut commenter les deux lignes centrales
```
<Context antiResourceLocking="false" privileged="true" >
  <!--<Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />-->
</Context>
```

### Test et lancement du serveur d'application Tomcat 8

```
sudo service tomcat8 status
sudo service tomcat8 start
```

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

### Le petit plus optionnel : un serveur web frontal nginx

Le serveur web n'est pas vraiment nécessaire pour tomcat
(alors que tomcat est necessaire pour geoserver)
Cependant, ce script ne fait pas qu'installer nginx :
il permet aussi de configurer des sites
(par exemple geoserver.mairie.fr)

Le script a exécuter est donc :
```
~/Documents/install/source/environnementTravail/installServeurWeb.sh
```

## Installation de geogig

Compilation a partir des sources (branch master)
car la version proposée en zip ne fonctionne pas correctement avec postgresql 10...
https://github.com/locationtech/geogig/issues/417


Le depot github
https://github.com/locationtech/geogig/
est donc à preferer au telechargment de zip
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

### Configuration supplémentaire

Il s'agit de faire les présentations, c'est à dire de faire connaitre geogig au système
(variable PATH)

```
source ~/Documents/install/source/geogig/bin/majGeogig.sh
```

## Installation de geoserver et de son plugin gs-geogig


Quelles versions de geoserver, et du plugin gs-geogig ?
Normalement, la derniere version devrait fonctionner, mais, en decelant une erreur
lors de l'affichage de la page geogig settings, nous sommes revenus à une version antérieure
```
export GEOSERVER_VERSION='2.12.1'
export GEOSERVER_PLUGIN_GEOGIG_VERSION='2.12'
```
et non pas 2.13.1 et 2.13

http://geoserver.org/

https://github.com/locationtech/geogig
Puis, dans le fichier README.md il faut cliquer, dans le pargraphe download,
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
### Rechargement de tomcat8
Attention : après l'installation, il est fort probable qu'il faille
recharger geoserver (tomcat ?) pour qu'il prenne en compte le plugin gs-geogig

```
http://www.cdalr.fr/geoserver/index.html
http://geoserver.mairie.fr/geoserver/web/
```
admin/geoserver


## Installation du module python, geogig-py

C'est un module pour python2..
Utilité de ce module à démontrer...

```
~/Documents/install/source/geogig/bin/installGeogigpy.sh
```

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
