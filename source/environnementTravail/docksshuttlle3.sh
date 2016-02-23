#!/bin/sh
#
#
echo '#'
echo '# Creation d un tunnel entre la machine perso et une machine du boulot'
echo '#'
echo '# Ce tunnel se fait en trois parties'
echo '#  - à partir de VLR6180X, on creuse le tiers central du tunnel avec l option -R de ssh'
echo '#  - à partir de la machine perso, on creuse le premier tiers du tunnel avec l option -L'
echo '#  - si besoin, apres avoir réveiller VLR6180Y à partit de VLR6180X, on creuse le 3ème tiers du tunnel entre les deux machines du bureau'
echo '#'
