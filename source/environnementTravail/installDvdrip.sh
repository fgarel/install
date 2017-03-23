installation de dvdrip

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

# methode 1 handbrake-gui
# methode 2 : dvdrip2
# methode 3 : vlc / lecture conversion
# methode 4 : dvdrip
