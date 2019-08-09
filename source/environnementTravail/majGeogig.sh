#!/bin/sh

echo "#"
echo "#-----------------------------------------------------------------------"
echo "#"
echo "# Ajout de geogig/bin dans le PATH"
echo "#"
echo "# plusieurs solutions s'offrent à nous :"
echo "#   - première solution, on recopie les executables dans un repertoire plus conventionnel"
echo "#   - seconde solution, on modifie le path dans le fichier zshrc_antigen"
echo "#   - troisième solution (qui ne fonctionne pas en dehors du script), on modifie le path dans le script"
echo "#"
echo "# On adopte la première solution"
echo "cp -rf $HOME/Documents/install/source/geogig/libexec/* $HOME/.local/libexec/"
      cp -rf $HOME/Documents/install/source/geogig/libexec/* $HOME/.local/libexec/
echo "cp -f $HOME/Documents/install/source/geogig/bin/geogig $HOME/.local/bin/"
      cp -f $HOME/Documents/install/source/geogig/bin/geogig $HOME/.local/bin/
#echo "#-----------------------------------------------------------------------"
#echo "echo \$PATH"
#echo "export PATH=\$PATH:/home/fred/Documents/install/source/geogig/geogig/bin"
#echo "echo \$PATH"
#      export PATH=$PATH:/home/fred/Documents/install/source/geogig/geogig/bin
#      echo $PATH
#echo "#-----------------------------------------------------------------------"
#echo "#-----------------------------------------------------------------------"
#echo "echo \$PATH"
#echo "export PATH=\$PATH:/home/fred/Documents/install/source/geogig/geogig/src/cli-app/target/geogig/bin"
#echo "echo \$PATH"
#      export PATH=$PATH:/home/fred/Documents/install/source/geogig/geogig/src/cli-app/target/geogig/bin
#      echo $PATH
#echo "#-----------------------------------------------------------------------"
echo "#"
