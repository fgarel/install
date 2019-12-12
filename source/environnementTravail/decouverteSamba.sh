#!/bin/sh
# utilitaire pour mettre en correpsondance un nom de machine windows et son utilisateur
# l'usage est :
# decouverteSamba.sh ; vi reportSamba.txt

# le reseau a scannner
# Amenagement
RESEAU="10.3.10.0/24"
RESEAU="10.254.110.0/24"
RESEAU="10.2.10.0/24"
#RESEAU="10.2.11.0/24"
#RESEAU="10.5.10.0/24"
#RESEAU="10.5.11.0/24"

# la commande pour scanner et pour recueillir les recultats dans une liste
# cf ici :
# https://stackoverflow.com/questions/28739456/parse-nmap-result-bash
LIST=$( nmap -p 135 -oX - $RESEAU | xmllint --xpath '//port[@portid="135"]/state[@state="open"]/../../../address/@addr' - | sed -e 's/addr=//g' -e 's/\"//g' )
LIST=$( nmap -p 135 -oX - $RESEAU | xmllint --xpath '//port[@portid="135"]/state[@state="open"]/../../../hostnames/hostname/@name' - | sed -e 's/name=//g' -e 's/\"//g' )
#echo $LIST
#for HOST in $LIST
#do
#    echo "HOST = "$HOST
#done
rm -f reportSamba.txt

# la commande pour lister les utilisateurs d'une machine
# for HOST in VLR10887 VLR40417 VLR10737 VLR10922
for HOST in $LIST
do
  sudo umount /mnt/tmp/
  sudo mount -t cifs //$HOST/c$ /mnt/tmp/ -o credentials=/root/.smbcredentials_Administrateur
  echo $HOST >> reportSamba.txt
  ls -al /mnt/tmp/Users/ \
      | grep -v "admin" \
      | grep -v "Administrateur" \
      | grep -v "All Users" \
      | grep -v "Default" \
      | grep -v "Default User" \
      | grep -v "desktop.ini" \
      | grep -v "dsi" \
      | grep -v "MAIRIELR" \
      | grep -v "mairie" \
      | grep -v "Public" \
      | grep -v -i "Temp" \
      | grep -v "VLR" \
      | grep -v "boutet" \
      | grep -v "giret" \
      | grep -v "le-saout" \
      | grep -v "potut" \
      | grep -v "vigneron" \
      >> reportSamba.txt
  echo "********" >> reportSamba.txt
done
sudo umount /mnt/tmp/

echo "sudo mount -t cifs //vlrxxxx.mairie.fr/c$ /mmnt/tmp/ -o credentials=/root/.smbcredentials_Administrateur"
