# Projet Install
Sur une machine ou une distribution Debian Strech vient d'etre installée, nous allons jouer un peu....
Après avoir cloné ce dépot, il sera alors très simple d'utiliser des scripts qui automatisent différentes installations.

## En root

### Configuration des locales
```
dpkg-reconfigure locales
```

### Ajout de l'utilisateur fred, y compris dans le groupe sudo
```
adduser fred
adduser fred sudo
```

## En tant qu'utilisateur normal "fred"

### Installation de git
```
sudo aptitude install git
```

### Clonage du dépot dans le répertoire Documents de l'utilisateur courant
```
mkdir ~/Documents/
cd ~/Documents
git clone https://github.com/fgarel/install
```

### Execution des utilitaires / scripts
```
cd ~/Documents/install/source/environnementTravail
./installAll.sh
```

### Install de VIM
```
cd ~/Documents/install/source/environnementTravail
./spf13-vim.sh
```

### Install des fonts
```
cd ~/Documents/install/source/environnementTravail
./installFonts.sh
```

### Install des outils pour la manipulation de données cartographiques (osm)
```
cd ~/Documents/install/source/osm
./installOSMDebian.sh
```
