#!/bin/sh
#

# pour passer le proxy
# l'utilitaire sera sshuttle...
# https://korben.info/sshuttle-le-vpn-a-larrache.html
#
# Resolution du problème : Broken pipe client
# https://github.com/sshuttle/sshuttle/issues/150
sshuttle -r fgarel@ssh.freeshell.de:443 \
         -x 94.247.40.147/32 \
         -x 10.0.0.0/8 \
         0/0


