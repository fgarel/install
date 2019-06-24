# Démarrage de session sous byobu

## 1. Ouverture des connexions
### 1.1. lien vers dsiappli39
'''
cd ~/Documents/install/source/environnementTravail
./ssh_wake_dsi3.sh
'''
Mot de passe pour root@dsiappli58 : 12.07$adm,LI
Mot de passe pour fred@vlr6180y : Mie3Asie
Mot de passe pour fred@vlr6180x : Mie3Asie

Test de la connexion a dsiappli39
psql -h localhost -p 33292 -d sig -U postgres
Mot de passe pour postgres : YepYesh555+

### 1.2. Ouverture de vlr6180y
'''
./ssh_open_host_vl6180y.sh
'''
Mot de passe pour fred@cdalr : Mie3Asie
Mot de passe pour ssh.freeshell.de : Lei6Vie5

### 1.3. Connexion
'''
./ssh_connect_via.sh
'''
Mot de passe pour fred@cdalr : Mie3Asie
Mot de passe pour ssh.freeshell.de : Lei6Vie5

Test de la connexion (via les tunnels cdalr->vlr6180y) à :
dsibdd09 (62390)
brulhois (62391)
dsiappli59 (62392)
(via les tunnels vlr6180y->cdalr)
vlr6180y (63239)
[cdalr (63230)]

psql -h localhost -p 62391 -d sig -U postgres
Mot de passe pour postgres : P0stgre$

psql -h localhost -p 62392 -d sig -U postgres
Mot de passe pour postgres : YepYesh555+

psql -h localhost -p 63239 -d espu -U fred
Mot de passe pour postgres : fgpass

## 2. Lancement de pgadmin4
'''
cd ~/Documents/install/source/pgadmin
pipenv shell
./pgadmin4_launch.sh
'''
(si necessaire, pipenv install ./pgamin4-4.3-py2.py3-none-any.whl)

## 3. Lancement du cache pour les tuiles raster
'''
cd ~/Documents/install/source/tilestache
pew workon mapproxy
./mapproxy_wms_ortho_cda_plus.sh
'''

## 4. Mise à jour des bases apres modifications de fichiers excel
### 4.1. Numerotation / parcelle
'''
cd ~/f/CARTOGRAPHIE/donnees/urbanisme/NUMEROTATIONS/2018/bin
./update_parcelle.sh
'''

### 4.2. Grands projets
'''
cd ~/Documents/technic/source/voirie/bin
./update_projetsTravaux.sh
'''

# Procédure changement de mot de passe "fenêtre"

## 1. Comment
Sous windows, sous virutalbox, taper la combinaison de touches
```
Ctrl+Suppr
```
(c'est la touche Ctrl de droite)

## 2. changement à faire sous vlr6180y
### 2.1. Système

```
sudo vi /root/.smbcredentials
```

```
username=frederic.garel
password=
domain=mairie.fr
```

```
sudo vi /root/.smbcredentials_Administrateur
```

```
username=Administrateur
password=
domain=mairie.fr
```


### 2.2. Firexox / outlook express
Connexion à outlook express, puis enregistrement du nouveau mot de passe

### 2.3. Postgresql / pgpass
```
vi ~/.pgpass
```

```
172.17.150.6:*:frederic.garel:Mie
localhost:62381:*:frederic.garel:Mie

```

### 2.4. Postgresql / divers fichiers sql

Ce sont les fichiers qui contiennent des dblinks

cd ~/Documents/technic/source/
rgrep -E -e dblink

```
# vi ~/Documents/technic/source/voirie/bin/sql/update_projetsTravaux.sql
```
```
# vi ~/f/CARTOGRAPHIE/donnees/urbanisme/NUMEROTATIONS/2018/bin/sql/update_parcelle.sql
```
```
vi ~/Documents/technic/source/voirie/bin/sql/espu_voirieAdministratif_projet_create.sql
```

il faut refaire les vues distantes parcelle_vue et numvoie_vue
(soit directement sous pgadmin (solution a préférer
  car il ne faut pas rejouer entierement le fichier espu_voirieAdministratif_projet_create.sql,
  sous peine d'ecraser nos saisies préalables)

### 2.5. Qgis

vi ~/f/CARTOGRAPHIE/donnees/urbanisme/NUMEROTATIONS/2018/numerotations_linux_20181116.qgs

```
:%s/Mie..../Mie..../g
```
