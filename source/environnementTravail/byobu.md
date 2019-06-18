# Démarage de session sous byobu
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

### 1.2. ouverture de vlr6180y
'''
./ssh_open_host_vl6180y.sh
'''
Mot de passe pour fred@cdalr : Mie3Asie
Mot de passe pour ssh.freeshell.de : Lei6Vie5

### 1.3. connexion
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
### 4.1. numerotation / parcelle
'''
cd ~/f/CARTOGRAPHIE/donnees/urbanisme/NUMEROTATIONS/2018/bin
./update_parcelle.sh
'''

### 4.2. Grands projets
'''
cd ~/Documents/technic/source/voirie/bin
./update_projetsTravaux.sh
'''
