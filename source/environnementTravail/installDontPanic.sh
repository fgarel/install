#!/bin/sh

echo "#"
echo "# regarder des videos"
echo "# Le but est d'installer vpngate et dont apnic"
echo "#"
echo "# La doc sur vpngate est ici :"
echo "# http://www.vpngate.net/en/"
echo "# https://github.com/Dragon2fly/vpngate-with-proxy"
echo "#"
echo "# La doc sur dontpanic est ici :"
echo "# https://yeuxdelibad.net/Blog/?d=2017/02/10/13/33/05-dontpanic-passe-en-version-20"
echo "# http://3hg.toile-libre.org/dontpanic/index.html"
echo "# http://3hg.toile-libre.org/dontpanic/download.html"
echo "#"
echo "# Alternative :"
echo "# https://touchandgo.readthedocs.io/en/master/"
echo "#"
echo "# installation des dependances"
echo "sudo aptitude install python3-bottle python3-bs4 python3-libtorrent sqlite3"
      sudo aptitude install python3-bottle python3-bs4 python3-libtorrent sqlite3
echo "# recuperation de dontpanic"
echo "wget http://3hg.toile-libre.org/dontpanic/downloads/dontpanic-latest.tgz"
      wget http://3hg.toile-libre.org/dontpanic/downloads/dontpanic-latest.tgz
echo "# decompression"
echo "tar xvzf dontpanic-latest.tgz"
      tar xvzf dontpanic-latest.tgz
echo "# Enjoy :"
echo "cd dontpanic"
      cd dontpanic
echo "#./dontpanic"
      #./dontpanic
echo "#"
