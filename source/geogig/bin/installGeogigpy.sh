#!/bin/sh


echo "#"
echo "# Installation de geogig-py"
echo "#"
echo "#-----------------------------------------------------------------------"
echo "# Pour python 3.."
echo "# Attention, geogig-py est un module python version 2"
echo "# il ne fonctionne pas en version 3...."
echo "# que ce soit en version pipy ou en version github..."
echo "#"
echo "# version pypi"
echo "#"
echo "sudo -H pip3 install geogig-py"
      sudo -H pip3 install geogig-py
echo "#"
echo "# version github"
echo "#"
echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
echo $OLDPWDFG
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "#"
echo "git clone https://github.com/boundlessgeo/geogig-py"
      git clone https://github.com/boundlessgeo/geogig-py
echo "git fetch https://github.com/boundlessgeo/geogig-py"
      git fetch https://github.com/boundlessgeo/geogig-py
echo "#"
echo "cd geogig-py"
      cd geogig-py
echo "sudo -H pip3 install ."
      sudo -H pip3 install .
echo "cd .."
      cd ..
echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
# echo "# Ajout de geogigpy dans le PYTHONPATH"
# echo "#"
# echo "#-----------------------------------------------------------------------"
# echo "export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.6/dist-packages/geogigpy"
# echo 'python3 -c "import sys; print(sys.path)"'
# echo 'python3 -c "import sys, geogigpy; print(sys.path)"'
#       export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.6/dist-packages/geogigpy
#       python3 -c "import sys; print(sys.path)"
#       python3 -c "import sys, geogigpy; print(sys.path)"
# echo "#-----------------------------------------------------------------------"
echo "#"
echo "#-----------------------------------------------------------------------"
echo "# Pour python 2.."
echo "#"
echo "sudo -H pip install geogig-py"
      sudo -H pip install geogig-py
echo "#"
