# la copie de dvd....

# methode 1 : handbrake-gui
# methode 2 : dvdrip2
# methode 3 : vlc / lecture conversion
# methode 4 : dvdrip
# methode 5 : dvdisaster
# methode 6 : vobcopy
# methode 7 : rsync -av


# installation de dvdrip22

git clone https://github.com/xenomachina/dvdrip

sudo aptitude install handbrake-cli

Utilisation 

./dvdrip.py --scan \
            -i /dev/sr0 \
            -o /home/fred/Videos/HonourableWoman

rm -rf ~/Videso/HonourableWoman ; \
./dvdrip.py -v \
            -i /dev/sr0 \
            -o ~/Videos/HonourableWoman

# installation de dvdisater
# vu ici
# https://superuser.com/questions/391646/how-to-copy-a-dvd-with-a-patched-udf-filesystem-bad-sectors/392506#392506
# http://dvdisaster.net/downloads/manual.pdf
aptitude install dvdisaster
utilisation
dvdisaster -d /dev/sr0 \
           -i ~/Videos/HonourableWoman.iso \
           -e ~/Videos/corr.ecc \
           -r \
           --adaptive-read
