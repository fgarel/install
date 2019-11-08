

# geogig 1ère partie : Installation des outils

Première partie,
  - installation ou upgrade de postgresql et postgis
  - Installation de Java (pour geogig) et de Tomcat (pas obligatoire, mais pour geoserver)
  - installation du serveur geogig,
  - installation de geoserver (pas obligatoire mais oui), et du plugin geoserver-geogig (en le compilant avec postgresql)
<!--
  - installation de geogig-py (non)
  - installation des plugins qgis geogig (non)
-->

## Installation ou upgrade de postrgresql / postgis

Quelles versions ?
<!--
postgresql 10 et postgis 2.4 (?) ... en attendant que ...
postgresql 11 et postgis 2.5 soient sortis (?)
(actuellement ces deux dernieres versions sont en beta)
Mais, après quelques essais, bien que geogig soit adapté à postgresql 10,
il semble que le plugin geoserver-geogig ne communique bien qu'avec postgresql 9.6

Nous allons donc installer :
postgresql 9.6 et postgis 2.3 -->

UPDATE du 20191104 : test avec postgresql 12 et postgis 3
(bien que postgresql-12-python3-multicorn ne soit pas encore disponible en version 12, mais uniquement en version 11)

La base de données est installé sur le serveur (pg.cdalr.fr : non) localhost : oui
```
~/Documents/install/source/environnementTravail/installPostgresql.sh
```
ou
```
~/Documents/install/source/environnementTravail/upgradePostgresql.sh
```

On peut maintenant lancer pgadmin4 avec la commande :
```
pgadmin4 &
```

Puis, le navigateur ouvre la page :

```
https://127.0.0.1:35891/browser/
```

## Installation de java et tomcat

Java est nécessaire pour geogig
Java et Tomcat sont nécessaires pour geoserver

Quelle version de java ?
<!-- la 8
geogig fonctionne avec java 8 mais pas avec java 9
cf ici :
http://docs.geoserver.org/latest/en/user/production/java.html
Avec java 9, nos tests ont fait apparaitre ce genre de messages :
"WARNING: Illegal reflective access"
```
apt-cache search openjdk | grep jre
```
openjdk-8-jre -->

UPDATE : openjdk-11-jre


Quelle version de tomcat ?
```
apt-cache search tomcat
```

UPDATE : tomcat9

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

### Configuration de tomcat9

#### Les utilisateurs/Roles

Ajout des roles admin-gui et manager-gui

```
sudo su
vi /var/lib/tomcat$TOMCAT_VERSION/conf/tomcat-users.xml
```
```
<tomcat-users>
    <role rolename="tomcat"/>
    <role rolename="role1"/>
    <role rolename="role2"/>
    <role rolename="role3"/>
    <role rolename="admin-gui"/>
    <role rolename="admin-script"/>
    <role rolename="manager-gui"/>
    <role rolename="manager-script"/>
    <user username="tomcat" password="tomcat" roles="tomcat"/>
    <user username="both" password="both" roles="tomcat,role1"/>
    <user username="role1" password="role1" roles="role1"/>
    <user username="admin-gui" password="admin-gui" roles="admin-gui"/>
    <user username="admin-script" password="admin-script" roles="admin-script"/>
    <user username="manager-gui" password="manager-gui" roles="manager-gui"/>
    <user username="manager-script" password="manager-script" roles="manager-script"/>
    <user username="admin" password="admin" roles="admin-gui,admin-script"/>
    <user username="manager" password="manager" roles="manager-gui,manager-script"/>
    <user username="gui" password="gui" roles="admin-gui,manager-gui"/>
    <user username="script" password="script" roles="admin-script,manager-script"/>
    <user username="sa" password="sa" roles="admin-gui,admin-script,manager-gui,manager-script"/>
    <user username="geoserver" password="geoserver" roles="role2"/>
    <user username="fred" password="fred" roles="role3"/>
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

### Test et lancement du serveur d'application Tomcat 9

```
sudo service tomcat9 status
sudo service tomcat9 start
```

On peut alors ce rendre sur la page de tomcat :

```
http://localhost:8080/
```

En tant qu'administrateur de tomcat
```
http://localhost:8080/host-manager/html
```
sa/sa

Et en tant que manager (par exemple, pour installer des war)
```
http://localhost:8080/manager/html
```
sa/sa

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

Compilation a partir des sources (UPDATE du 20191104 : branche 1.4.x),
et non à partir du zip car la version proposée en zip
ne fonctionne pas correctement avec des
versions de postgresql trop récentes...
https://github.com/locationtech/geogig/issues/417

Le dépot github
https://github.com/locationtech/geogig/
est donc à préférer au telechargment de zip
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

UPDATE du 20191104 : on ne s'occupe plus des plugins entre qgis et geogig,
car ils ne semblent plus évoluer.

<!--
Ainsi, nos premiers essais ont montré que si l'on souhaitait
utiliser le plugin qgis-geogiglight-plugin,
 - nous étions limité à une version de geogig :
   il ne fallait pas prendre une version trop recente de geogig,
   il fallait se limiter à la version 1.1 de geogig
 - du coup, vu que ce plugin n'apporte, à priori, pas de fonctionnalités,
   on ne va pas l'installer

Message vu, après avoir essayé d'utiliser ce plugin :
  Attention, ce plugin de qgis ne fonctionne pas avec une version trop recente de geogig :

file:///home/fred/.local/share/QGIS/QGIS3/profiles/default/python/plugins/geogig/docs/html/usage.html#geogig-plugin-interface-and-tools
```
You need GeoGig 1.1.1 version to use the QGIS plugin; version 1.2 may not work due to API changes. You can download it here.
```


### Configuration supplémentaire

Il s'agit de faire les présentations, c'est à dire de faire connaitre geogig au système
(variable PATH)

```
source ~/Documents/install/source/geogig/bin/majGeogig.sh
```
-->

Une fois que nous avons installé geogig,
nous pouvons maintenant lancer la commande :
```
geogig version
geogig help
```


## Installation de geoserver et de son plugin gs-geogig

Quelles versions :
 - de geoserver,
 - et du plugin gs-geogig ?

UPDATE du 20191104 :
Ici encore, nous avons fait plusieurs tentatives, et, après avoir essayé
des installations à partir de fichier zip, nous finirons par faire une installation
à partir des sources sur github, mais avec, non pas la branche master, mais avec une branche
particulière qui est la 2.15.x

<!--
Pour memoire, voici nos essais avec les zip :

Normalement, la derniere version devrait fonctionner, mais, en décelant une erreur
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

-->

Edition du fichier installGeoServer.sh
```
vi ~/Documents/install/source/geogig/bin/installGeoServer.sh
```
Puis Execution
```
~/Documents/install/source/geogig/bin/installGeoServer.sh
```

<!--
### Rechargement de tomcat9

Attention : après l'installation, il est fort probable qu'il faille
recharger geoserver (tomcat ?) pour qu'il prenne en compte le plugin gs-geogig
-->

On peut alors ce rendre sur la page de geoserver :

```
http://127.0.0.1/geoserver/web/
http://www.cdalr.fr/geoserver/index.html
http://geoserver.mairie.fr/geoserver/web/

```
admin/geoserver

<!--
UPDATE du 20191104 : on n'installe pas des outils qui sont en python2...

## Installation du module python, geogig-py

C'est un module pour python2..
Utilité de ce module à démontrer...

```
~/Documents/install/source/geogig/bin/installGeogigpy.sh
```
-->

<!--
## Installation des plugins qgis

Il existe au moins troisième plugins qgis
(dont le développement est plus ou moins actif...) :
 - qgis-geogig-plugin (appelé aussi Geogig Client)
   ce plugin est abandonné
   (ici, le developpement c'est plutot moins que plus... )
   https://github.com/planetfederal/qgis-geogig-plugin
 - qgis-geogiglight-plugin (appelé aussi Geogig Local Client)
   https://github.com/planetfederal/qgis-geogiglight-plugin
   (ex https://github.com/boundlessgeo/qgis-geogiglight-plugin)
   ce depot contient une branche de developpement dédiée à la version 3 de QGIS
   https://github.com/planetfederal/qgis-geogiglight-plugin/tree/qgis3
   une autre documentation sur ce second plugin se trouve ici :
   https://github.com/SWM-IT/qgis-netze-gas/blob/master/documents/en_gb/Dokumentation%20GeogigLocalClient.rst
 - geogig-qgis-client-plugin (appelé aussi QGIS GeoGig Client)
   ce plugin semble relativement récent, prévu pour qgis3, et documenté
   https://github.com/ngageoint/geogig-qgis-client-plugin
   https://github.com/ngageoint/geogig-qgis-client-plugin/blob/master/docs/source/usermanual/install.rst


### Installation du vieux plugin de boundlessgeo : Geogig Client

Attention, ce plugin de qgis ne fonctionne pas avec une version trop recente de geogig :

file:///home/fred/.local/share/QGIS/QGIS3/profiles/default/python/plugins/geogig/docs/html/usage.html#geogig-plugin-interface-and-tools
```
You need GeoGig 1.1.1 version to use the QGIS plugin; version 1.2 may not work due to API changes. You can download it here.
```

Il faut donc installer la version 1.1.1 de geogig et non pas la derniere version
L'installation du plugin se fait grace au script
```
~/Documents/install/source/geogig/bin/installPluginQgis.sh
```

Le plugin est accessible sous QGis dans le menu
```
Extension / Geogig
```

### Installation du nouveau plugin : Geogig Local Client
L'installation du plugin se fait grace au script
```
~/Documents/install/source/geogig/bin/installPluginQgis.sh
```

Le plugin est accessible sous QGis dans le menu
```
Base de Données / Geogig Local Client
```

### Installation du plugin alternatif : QGIS GeoGig Client
https://github.com/ngageoint/geogig-qgis-client-plugin/blob/master/docs/source/usermanual/install.rst

-->
