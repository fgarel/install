# Projet Install
Après avoir cloné ce dépot, il sera alors très simple d'utiliser des scripts qui automatisent différentes installations.

## Installation de git
```
sudo aptitude install git
```

## Clonage du dépot dans le répertoire Documents de l'utilisateur courant
```
cd ~/Documents
git clone https://github.com/fgarel/install
```

## Execution des utilitaires / scripts
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
