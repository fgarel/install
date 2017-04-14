# README.md



### Test pour vérifier la connexion à la base cdalr
```
cd ~/Documents/install/source/geogig/database/
python3 parametresConnection.py
```
il faut que la paquet python3-psycopg2 soit installé sur le poste client

### Test pour verifier la creation d'extension et de schema
```
python3 database.py
```
Attention, il semble qu'il ne faut pas mettre l'extension postgis-topology : cette extension apparait meme quand on ne selectionnne que postgis.


### Test de tomcat
```
www.cdalr.fr:8080/mnagaer/html
```
fred/M...


### Test de geoserver
```
www.cdalr.fr/geoserver/index.html
```
admin/geoserver

Notion d'espace de travail :

les différents espaces de travail sont :
pcrs
rtge
cada
rese
espu
bati
