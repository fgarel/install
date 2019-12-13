# Automatisation de l'émission des DT/DICT

## Introduction

Cette tâche que l'on peut décrire comme suit :

    Un fichier original, au format zip est placé dans un répertoire.

    Le traitement consiste à dézipper le fichier dans un répertoire temporaire, et parser les différents fichiers un par un.

    Deux types de fichiers sont contenus dans le fichier original.zip

    En fonction des infos contenues dans le xml et dans les pdf, des courriels sont préparés (avec les bonnes pièces jointes) et expédiés.

Cet utilitaire peut être décomposé en plusieurs problèmes à résoudre

    la surveillance d'un repertoire : vérifier l'apparition d'un fichier dans ce repertoire, puis, dès que ce fichier arrive, alors, lancer un traitement. Cette surveillance est réalisée à l'aide du module watchdog.

    le pdf est parsé à l'aide d'utilitaire gnu (grep, sed, regex, iconv, qpdf) : cette partie du traitement est prise en charge par le module pdfReader.py

    le xml est parsé à l'aide de la librairie python lxml, mais un utilitaire simplifie encore plus l'utilisation du xml. En effet, generateDS est un utilitaire capable de lire un fichier xsd pour fabriquer automatiquement un module python contenant un classe d'objet dont la structure est conforme au xsd. Un petit script shell, appelé "01_generate_dtdict.sh" et utilisant "generateDS.py", permet donc de fabriquer un module python appelé dtdict_appli1.py, module qui sera importé dans le programme principal sous l'appelation xmlReader

    l'envoi de mails est réalisé avec les modules smtplib et mail

Cet utilitaire tourne en tant que daemon


## Mise à jour de l'outil suite à la mise à jour du xsd

par exemple, une nouvelle version du xsd est apparue

le fichier xsd est place ici :
~/Docuements/install/source/environnementTravail/watchdtdict-emission/XSD_3_0_20181120/XSD/


## Fichiers xml et xsd

### Mise à jour de l'outil suite à la mise à jour du xsd

Le fichier xsd a été vu ici

http://www.reseaux-et-canalisations.ineris.fr/gu-presentation/front/display.action?idPage=98&hl=xml

http://www.reseaux-et-canalisations.ineris.fr/gu-presentation/schemas/schemaTeleservice_2_1.xsd

Deux outils (librairies ?) permettent de travailler avec des fichiers xsd :

https://pypi.python.org/pypi/PyXB/1.2.4

https://pypi.python.org/pypi/generateDS/2.16a0

Nous allons travailler avec le deuxième outil.


### Utilisation de l'outil generateDS

La doc est ici

http://pythonhosted.org/generateDS/

#### Installation

sudo pip install generateDS --pre

#### Mise à jour de generateDS

pip3 install GenerateDS --upgrade --user
sudo -H pip3 install GenerateDS --upgrade




#### Utilisation de generateDS.py

Pour fabriquer un fichier teleservice.py

/usr/local/bin/generateDS.py -o dtdict_api.py \
                             -s dtdict_appli1.py \
                             --super=dtdict_api \
                             --member-specs=dict \
                             --external-encoding='utf-8' \
                             --export='write literal etree' \
                             --user-methods=gends_user_methods \
                             schemaTeleservice_2_1.xsd




/usr/local/bin/generateDS.py -o dtdict_api_v30.py \
                             -s dtdict_appli1_v30.py \
                             --super=dtdict_api \
                             --member-specs=dict \
                             --external-encoding='utf-8' \
                             --export='write literal etree' \
                             --user-methods=gends_user_methods \
                             XSD_3_0_20181120/XSD/schemaTeleservice_gu_3_0.xsd

C'est le fichier pad qu'il faut lire.

generateDS.py -o dtdict_api_v30.py \
              -s dtdict_appli1_v30.py \
              --super=dtdict_api_v30 \
              --member-specs=dict \
              --external-encoding='utf-8' \
              --export='write literal etree' \
              XSD_3_0_20181120/XSD/schemaTeleservice_pad_3_0.xsd

Utilisation de teleservice.py

Pour parser un fichier xml

./dtdict_api_v30.py 2019061700601T_DDC_description.xml


### Lancement de la Surveillance

#### Lancement manuelle de watchdtdict-emission.py

la commande est :
```

```
en cas de problème au lancement (observer), alors la réponse est ici



https://unix.stackexchange.com/questions/13751/kernel-inotify-watch-limit-reached

reparation temporaire :
cat /proc/sys/fs/inotify/max_user_watches
sudo sysctl fs.inotify.max_user_watches=524288
cat /proc/sys/fs/inotify/max_user_watches

reparation définitive

sudo vi /etc/sysctl.d/40-max-user-watches.conf
