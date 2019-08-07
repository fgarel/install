# Se connecter au gestionnaire de base de données, sur la machine dsiappli39


## 1. Présentation

Le but est de se connecter, à partir d'un client linux, à la base postgresql qui est sous la machine dsiappli39, windows, configurée avec une authentification "spéciale windows".
on ne parle pas ici de la configuration kerberos.
on passe ici par une autre voie : la découverte de faille

## 2. Obtenir des infos de concernant la machine dsiappli39

### 2.1. Parcours du système de fichier
On monte les disques c et e de dsiappli39 dans notre système de fichier
sudo mkdir -p /mnt/dsiappli39
sudo vi /etc/fstab

### 2.2. Les découvertes

Deux informations importantes ont été découvertes

#### 2.2.1. Le fichier de configuration de postgresql
vi /mnt/dsiappli39/e/PostgreSQL/9.6/data/pg_hba.conf
pour les utilisateurs lambda, la methode est sspi
pour l'utilisateur postgres, il est possible de se connecter à partir des sous-reseaux
10.5.10.0/24
10.73.10.0/24
10.254.0.0/16

#### 2.2.2. Un script de sauvegarde
Ce script contient le mot de passe de l'utilisateur postgres
vi /mnt/dsiappli39/e/sauvegarde/sauvegarde_schema.bat
"""
rem Bonne pratique pour utiliser le mot de passe sans le voir en clair dans le script
rem edit %APPDATA%\postgresql\pgpass.conf
rem *:5432:*:username:password


rem Utilisation avec pgpass.conf
rem PGPASSWORD=password&& pg_dump -h host -p port -U username database > file.sql

set PGPASSWORD=YepYesh555+

rem dump global de la base
E:\PostgreSQL\9.6\bin\pg_dump.exe -U postgres -h localhost -d sig > E:\sauvegarde\dump\sig.sql
"""

#### 2.2.3. La stratégie
Nous pourrons donc nous connecter au serveur avec le compte postgres, mais à partir d'une machine d'un sous réseau autorisé


## 3. Rechercher une machine du sous reseau 10.254.140.x

Pourquoi ce sous réseau ?
dsiappli39 est dans le sous-reseau 10.254.140.x
blade05, pjpb, aul, ...

### 3.1. Zenmap
Pour parcourir le réseau, nous utiliserons l'outil zenmap
cible : 10.254.140.0/24
Après un long moment de scan, nous obtenons les machines qui sont sous linux, avec un serveur ssh.
il est possible de filtrer les machines hotes avec les mots clefs linux ou debian.

### 3.2. Les services ouverts sur les machines linux
Le port 22 (ssh) est ouvert mais aussi les ports 3389 (rdp) et 10000 (webmin)

Les tentatives de connexions par ssh sur l'une ou l'autre de ces machines se soldent par des échecs.
Pour pourvoir se connecter, il faut que notre machine et notre compte soient autorisés à se connecter en ssh.

Par contre, nous allons pouvoir nous connecter à l'interface webmin de ces machines

Nous allons nous concentrer sur la machine dsipgsql9test.mairie.fr, 10.254.140.125

## 4. Obtenir la possiblité de se connecter à une machine du sous-réseau 10.254.140.x
Pour pourvoir se connecter, il faut que notre machine et notre compte soient autorisés à se connecter en ssh, et pour obtenir cette autorisation, il faut :
- generer une paire de clef RSA
- copier la clef publique de cette paire, sur un serveur linux, dans un fichier contenant la liste des clefs autorisés à se connecter

### 4.1. Genérer la paire de clef
Il faut suivre les tuto qui sont ici, ou là :
http://www.linux-france.org/prj/edu/archinet/systeme/ch13s03.html

Sur notre machine, executer
ssh-keygen -t rsa

### 4.2. Recopie de la clef publique sur la machine dsipgsql9test.mairie.fr
#### 4.2.1. ssh-copy-id ne marche pas ici
La meilleure methode est d'uiliser ssh-copy-id, mais ici, ce n'est pas possible sans l'aide de l'administrateur...

#### 4.2.2. Recopie à l'aide de webmin
le contenu de la cle publique
cat ~/.ssh/id_rsa.pub

il faut recopier ce contenu dans le fichier qui s'appelle :
/root/.ssh/authorized_keys

le menu est donc accessible par ici :
https://dsipgsql9test.mairie.fr:10000/
Menu, Others,
puis, File Manager,

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCo0dTjXO0wVtHv9U6lxWAzcxqHC5Ao14aCakDo1QzXy5wndZ6rEsb+rXXOTWczVWSyPHmnf57VVwIbALm54Soq/bRc81WNU53x8ZF3Q6mVq/QC7IoJkVGRj3gl59QfE1aGZye+faLvDTTnXQvmdZhNaFhvTiG59EoXQhhwdtvQxiLJCw7SBEfaw5f5Jk8pJGEsTwmcsAdDlB03LQCrZE/uF0HBUPRHifVqWcytOrRPdp7+m2yaJaIvidQ06Uun3fcT+hHORmcOQL+J5A0kh0BE1KgVpz+GZways/xkCfUs56UxNmi+rT0Wm421QT7BJrXJ+STFnjpe6AxAa0uQivhL fred@VLR6180Y" >> .ssh/authorized_keys

### 4.3. Test
Une fois que notre clef publique est installée, on peut se connecter en ssh entre vlr6180y et dsiappli58
Une fois sur dsiappli58, on peut se connecter au serveur postgresql qui est sur la machine dsiappli39
psql -h dsiappli39 -d sig -U postgres

## 5. Créer un tunnel
Le tunnel part de notre machine vlr6180y, et arrive jusqu'à la machine dsiappli39, en passant par une machine intermédiaire, la machine dsiappli58

### 5.1. La théorie
Sur la machine dsiappli58,
- on va créer un demi-tunnel (local) entre dsiappli58 et dsiappli39
- on va créer un demi-tunnel (remote) entre vlr6180y et dsiappli58

La création de ces demi-tunnels est automatisé grace au script
~/Documents/install/source/environnementTravail/ssh_open_host_dsi3.sh

### 5.2. La Pratique
Un script (pere) s'occupe d'envoyer sur dsiappli58 un second script (fils) et de lancer son execution
Ce script (pere) quii fait tout est :
~/Documents/install/source/environnementTravail/ssh_wake_dsi3.sh

### 5.3. Test
Depuis vlr6180y, connexion à postgresql sur la machine dsiappli39
tunnel : vlr6180y -> dsiappli58 -> dsiappli39

psql -h localhost -p 33292 -d sig -U postgres

Puis, après :
- ouverture du reseau : ./ssh_open_vlr6180y.sh
- connexion au reseau : ./ssh_connect_via.sh

On peut alors, se connecter
tunnel : tux0 -> cdalr -> vlr6180y -> dsiappli58 -> dsiappli39
psql -h localhost -p 62392 -d sig -U postgres
