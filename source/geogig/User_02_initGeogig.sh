#!/bin/sh



DBHOST=VLR6180Y
DBNAME=origine

echo "#"
echo "# Recopie de la configuration générale"
echo "#"
echo "cp ./.geogigconfig ~/.geogigconfig"
      cp ./.geogigconfig ~/.geogigconfig

listuser='CDA Departement DGFiP erdf SDE SDEER Soluris VLR';

echo "#"
echo "# Creation et initialisation de dépot par acteur"
echo "#"
for user in $listuser ;
    do
        echo "rm -rf $user"
        rm -rf $user
        echo "mkdir $user"
        mkdir $user
    done

echo "#"
echo "# Initialisation"
echo "#"
for user in $listuser ;
    do
        echo "cd $user ; geogig init ; cd .."
        cd $user ; geogig init ; cd ..
    done

echo "#"
echo "# Creation du premier commit dans chacun des dépots"
echo "#"
for user in $listuser ;
    do
        echo "cd $user ; touch README.md ; geogig add README.md ; geogig commit -m 'first commit' ; cd .."
        cd $user
        # ajout d'un chouette README
        # https://dbader.org/blog/write-a-great-readme-for-your-github-project
        # https://github.com/dbader/readme-template
        wget https://raw.githubusercontent.com/dbader/readme-template/master/README.md
        #touch README.md
        #geogig add README.md
        echo "Dans la branche master, import des données du schema" \"Soluris__Etape_01\"
        geogig pg import --host $DBHOST --database origine --user $user --password $user --schema \"Soluris__Etape_01\" --all
        geogig add
        geogig commit -m "first commit"
        cd ..
    done

echo "#"
echo "# Creation des branches dans chacun des dépots"
echo "#"
for user in $listuser ;
    do
        echo "# cd $user ; geogig branch PlanTopoControle ; geogig branch Controle ; geogig branch PlanTopoNonControle ; geogig branch PlanExecution ; geogig branch PlanProjet ; cd .."
        cd $user ;
        geogig branch PlanTopoControle
        geogig branch Controle
        geogig branch PlanTopoNonControle
        geogig branch PlanExecution
        geogig branch PlanProjet
        cd ..
    done

echo "#"
echo "# Premier vrai import dans chacun des dépots"
echo "#"
for user in $listuser ;
    do
        echo "cd $user ; geogig pg import ... ; geogig add ... ; geogig commit -m '...' ; cd .."
        cd $user
        echo "On se place dans la bonne branche"
        geogig checkout PlanTopoNonControle
        echo "Import des données du schema" \""$user"__Etape_01\"
        geogig pg import --host $DBHOST --database origine --user $user --password $user --schema \""$user"__Etape_01\" --all
        geogig add
        geogig commit -m "Import des premieres données"
        #geogig ls
        cd ..
    done
