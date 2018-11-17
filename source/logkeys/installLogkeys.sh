#!/bin/sh

echo "sudo apt-get update"
      sudo apt-get update
echo "sudo apt-get install -y autotools-dev"
      sudo apt-get install -y autotools-dev

echo "git clone https://github.com/kernc/logkeys.git"
      git clone https://github.com/kernc/logkeys.git
echo "git fetch https://github.com/kernc/logkeys.git"
      git fetch https://github.com/kernc/logkeys.git

echo "cd logkeys"
      cd logkeys
echo "./autogen.sh"
      ./autogen.sh
echo "cd build"
      cd build
echo "../configure"
      ../configure
echo "make"
      make
echo "sudo make instal"
      sudo make install
