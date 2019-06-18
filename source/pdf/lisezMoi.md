# Pdf : conversion d'une table pdf en excel

Ce qui est présenté ici, ce sont les manipulations à réaliser pour convertir un pdf en xls

le fichier original est au format pdf
on peut y voir une table, sur plusieurs pages.
On souhaite convertir ce tableau en fichier excel.

Le problème, c'est que le tableau est une image
(on ne peut pas sélectionner du texte)
il faut donc procéder d'abord par une opération de reconnaissance de caractères.

cf ici : https://superuser.com/questions/28426/how-to-extract-text-with-ocr-from-a-pdf-on-linux

## Installation des outils
 -- non : on installe cuneiform, yagf (et tesseract)
On installe pdfsandwich et poppler-utils
(pdfchain et pdftk ne sont pas utilisés ici...)

## Utilisation

-- non : l'utilisation de yagf ne fonctionne pas directement

Les etapes qui fonctionnent sont :

1. on convertit d'abord avec pdfsandwich
```
/usr/bin/pdfsandwich -maxpixels 30951297 -lang fra -resolution 400 BPU\ ALBERT\ 1ER.pdf
/usr/bin/pdfsandwich -maxpixels 39172735 -lang fra -resolution 450 BPU\ ALBERT\ 1ER.pdf
```
cela a pour effet de genener un fichier qui s'appelle
BPU\ ALBERT\ 1ER_ocr.pdf

2. on utilise l'utilitaire pdf2text (qui fait partie du paquet poppler-utils)
```
pdftotext BPU\ ALBERT\ 1ER_ocr.pdf
```
cela a pour effet de generer un fichier qui s'appelle
BPU\ ALBERT\ 1ER_ocr.txt


3. on copie les données dans execel et on réarrange le tableau à la main....


