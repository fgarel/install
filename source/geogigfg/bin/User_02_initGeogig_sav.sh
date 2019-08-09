#!/bin/sh



DBHOST=VLR6180Y
DBNAME=origine

echo "#"
echo "# Recopie de la configuration générale"
echo "#"
echo "cp ./.geogigconfig ~/.geogigconfig"
      cp ./.geogigconfig ~/.geogigconfig

listuser1='CDA Departement DGFiP ERDF SDE SDEER Soluris VLR';
listuser2='CDA Departement ERDF SDE SDEER VLR';
listuser3='DGFiP';
listuser4='Soluris';
listuser="${listuser2} ${listuser3}"
listetape='Etape_01 Etape_02 Etape_03 Etape_04 Etape_05'
#listetape='Etape_01 Etape_02'
#listetape='Etape_01 Etape_02 Etape_03'
#listetape='Etape_01'
listobjet1='CalendrierPCRS ClassePrecisionPCRS CodeCouleurAffleurant CotationPCRS EmprisePCRSType GestionnaireReseaux NatureAffleurant PlacementPCRS ProprieteEspace QualiteCategorisation TexteJustification ThematiquePCRS TypeBordurePCRS TypeMurPCRS TypePilierPCRS'
listobjet2='AffleurantEnveloppePCRS ChangementRevetementPCRS HabillagePCRS MarcheEscalierPCRS NomVoiriePCRS NumeroVoiriePCRS ObjetGeneriquePCRS PilePontPCRS PilierParticulierPCRS PilierRegulierPCRS PointLevePCRS ProeminenceBatiPCRS RailPCRS SeuilPCRS SymboleHabillagePCRS TexteHabillagePCRS TronconVoiriePCRS'
listobjet3='EmprisePublicationPCRS FacadePCRS BordurePCRS MurPCRS PointCanevasPCRS AffleurantSymbolePCRS HaieEspaceVertPCRS ArbreAlignementPCRS'
listobjet="${listobjet1} ${listobjet3}"
listbranche1='PlanProjet PlanExecution PlanTopoNonControle Controle PlanTopoControle'
listbranche2='PlanProjet PlanExecution Controle PlanTopoControle'
listbranche3='PlanTopoNonControle Controle PlanTopoControle'

echo "#"
echo "# Suppression des dépots existants des acteurs"
echo "#"
for user in $listuser1 ;
    do
        echo "rm -rf $user"
        rm -rf $user
        #echo "mkdir $user"
        #mkdir $user
    done

echo "#"
echo "# Creation et Initialisation du dépot Soluris"
echo "#"
mkdir Soluris
cd Soluris
# ajout d'un chouette README
# https://dbader.org/blog/write-a-great-readme-for-your-github-project
# https://github.com/dbader/readme-template
wget https://raw.githubusercontent.com/dbader/readme-template/master/README.md
geogig init
# on renomme la branche master
geogig branch -m PlanTopoNonControle
geogig pg import --host $DBHOST --database origine --user $user --password $user --schema \"Soluris__Etape_01\" --all
geogig add
geogig commit -m "Commit initial"
for branche in $listbranche2 ;
    do
        echo ""
        geogig branch $branche
    done
cd ..

echo "#"
echo "# Clonage du dépot pour chacun des acteurs"
echo "#"
for user in $listuser ;
    do
        echo "geogig clone Soluris $user ; cd $user ; geogig branch -d master ; cd .."
        geogig clone Soluris $user
        cd $user
        geogig branch -d master
        echo "modif de la configuration de geogig pour cet utilisateur"
        geogig config user.name $user
        geogig config user.email "$user@$user.fr"
        wget https://raw.githubusercontent.com/dbader/readme-template/master/README.md
        echo "creation de fichier de log"
        touch diff_01_AvantPull.txt
        touch diff_02_ApresPull.txt
        touch diff_03_ApresImport.txt
        touch diff_04_ApresPush.txt
        cd ..
    done



pullAndExport () {
    # les arguments
    echo "Recupération des dernières infos du dépot Soluris"
    echo "et Export de l'état actuel du dépot de l'acteur $user"
    user=$1
    etape=$2
    echo "utilisteur = $user"
    echo "etape = $etape"
    if [ "$user" = "DGFiP" ]; then
      branchecourante='Controle' ;
    else
      branchecourante='PlanTopoNonControle' ;
    fi
    echo "On se place dans le bon depot"
    echo "cd $user"
    cd $user
    echo "On se place dans la bonne branche"
    echo "geogig checkout $branchecourante"
    geogig checkout $branchecourante
    echo "Difference"
    geogig diff $branchecourante origin/$branchecourante >> diff_01_AvantPull.txt
    echo "On recupere les infos du depot Soluris"
    for branche in $listbranche3 ;
        do
            echo ""
            geogig checkout $branche
            geogig pull origin $branche
        done
    geogig checkout $branchecourante
    geogig diff $branchecourante origin/$branchecourante >> diff_02_ApresPull.txt
    echo "Export des données vers sandbox"
    for objet in $listobjet ;
        do
            echo "Export de de la table" \""$objet"\"
            geogig pg export --host $DBHOST \
                            --database sandbox \
                            --user $user \
                            --password $user \
                            --schema \""$user"__"$branchecourante"\" \
                            --overwrite \
                            \""$objet"\" \""$objet"\"
        done
    #geogig ls
    cd ..

}

editAddCommitPullPushAndExport () {
    # les arguments
    echo "Edition des données par l'utilisateur $user"
    echo "Ajout et Enregistrement de ces données"
    echo "Recupération des dernières infos du dépot Soluris"
    echo "Envoi des données mergées vers le dépot Soluris"
    echo "et Export de l'état actuel du dépot de l'acteur $user"
    user=$1
    etape=$2
    echo "utilisteur = $user"
    if [ "$user" = "DGFiP" ]; then
      branchecourante='Controle' ;
    else
      branchecourante='PlanTopoNonControle' ;
    fi
    echo "On se place dans le bon depot"
    echo "cd $user"
    cd $user
    echo "On se place dans la bonne branche"
    echo "geogig checkout $branchecourante"
    geogig checkout $branchecourante
    echo "Import des données du schema" \""$user"__"$etape"\"
    for objet in $listobjet ;
        do
            echo "Import de de la table" \""$objet"\"
            geogig pg import --host $DBHOST \
                            --database origine \
                            --user $user \
                            --password $user \
                            --schema \""$user"__"$etape"\" \
                            --table \""$objet"\" \
                            --alter
        done
    geogig add
    echo "Ajout des données par l'utilisateur $user"
    geogig commit -m "Ajout des données par l'utilisateur $user"
    creationModificationDate=$(geogig log -n 1 | grep "Date:" | sed -E -e "s|.*\) ||")
    creationModificationAuteur=$(geogig log -n 1 | grep "Author:" | sed -E -e "s|^Author:  ||")
    echo "creationModificationDate = "$creationModificationDate
    echo "creationModificationAuteur = "$creationModificationAuteur
    echo "Difference"
    geogig diff $branchecourante origin/$branchecourante >> diff_01_AvantPull.txt
    echo "On recupere les infos du depot Soluris"
    for branche in $listbranche3 ;
        do
            echo ""
            geogig checkout $branche
            geogig pull origin $branche
        done
    geogig checkout $branchecourante
    geogig diff $branchecourante origin/$branchecourante >> diff_02_ApresPull.txt
    echo "Export des données vers sandbox"
    geogig diff $branchecourante origin/$branchecourante >> diff_03_ApresImport.txt
    echo "On push les infos vers le depot Soluris"
    geogig push origin $branchecourante
    geogig diff $branchecourante origin/$branchecourante >> diff_04_ApresPush.txt
    echo "Export des données vers sandbox"
    for objet in $listobjet ;
        do
            echo "Export de de la table" \""$objet"\"
            geogig pg export --host $DBHOST \
                            --database sandbox \
                            --user $user \
                            --password $user \
                            --schema \""$user"__"$branchecourante"\" \
                            --overwrite \
                            \""$objet"\" \""$objet"\"
        done
    #geogig ls
    cd ..

}

depotCentralExport () {
    echo "A la fin d'une étape, on exporte le depot soluris"
    echo "On se place dans le bon depot"
    user='Soluris'
    cd $user
    for branche in $listbranche1 ;
        do
            echo ""
            echo "On se place dans la bonne branche"
            echo "geogig checkout $branche"
            geogig checkout $branche
            for objet in $listobjet ;
                do
                    echo "Export de de la table" \""$objet"\"
                    geogig pg export --host $DBHOST \
                                    --database sandbox \
                                    --user $user \
                                    --password $user \
                                    --schema \""$user"__"$branche"\" \
                                    --overwrite \
                                    \""$objet"\" \""$objet"\"
                done
        done
    cd ..

}

echo "#"
echo "# Ajout de données dans les dépots des acteurs"
echo "#"
# for etape in $listetape ;
#     do
#         for user in ${listuser} ;
#             do
#                 pullAndExport $user $etape
#                 # if [ "$user" = "DGFiP" ]; then
#                 #   branchecourante='Controle' ;
#                 # elif [ "$user" = "Soluris" ]; then
#                 #   branchecourante='PlanTopoControle' ;
#                 # else
#                 #   branchecourante='PlanTopoNonControle' ;
#                 # fi
#                 # echo "On se place dans le bon depot"
#                 # echo "cd $user"
#                 # cd $user
#                 # echo "On se place dans la bonne branche"
#                 # echo "geogig checkout $branchecourante"
#                 # geogig checkout $branchecourante
#                 # echo "Difference"
#                 # geogig diff $branchecourante origin/$branchecourante >> diff_01_AvantPull.txt
#                 # echo "On recupere les infos du depot Soluris"
#                 # for branche in $listbranche3 ;
#                 #     do
#                 #         echo ""
#                 #         geogig checkout $branche
#                 #         geogig pull origin $branche
#                 #     done
#                 # geogig checkout $branchecourante
#                 # geogig diff $branchecourante origin/$branchecourante >> diff_02_ApresPull.txt
#                 editAddCommitPullPushAndExport $user $etape
#                 # echo "Import des données du schema" \""$user"__"$etape"\"
#                 # for objet in $listobjet ;
#                 #     do
#                 #         echo "Import de de la table" \""$objet"\"
#                 #         geogig pg import --host $DBHOST \
#                 #                         --database origine \
#                 #                         --user $user \
#                 #                         --password $user \
#                 #                         --schema \""$user"__"$etape"\" \
#                 #                         --table \""$objet"\" \
#                 #                         --alter
#                 #     done
#                 # geogig add
#                 # echo "Ajout des données par l'utilisateur $user"
#                 # geogig commit -m "Ajout des données par l'utilisateur $user"
#                 # geogig diff $branchecourante origin/$branchecourante >> diff_03_ApresImport.txt
#                 # echo "On push les infos vers le depot Soluris"
#                 # geogig push origin $branchecourante
#                 # geogig diff $branchecourante origin/$branchecourante >> diff_04_ApresPush.txt
#                 # echo "Export des données vers sandbox"
#                 # for objet in $listobjet ;
#                 #     do
#                 #         echo "Export de de la table" \""$objet"\"
#                 #         geogig pg export --host $DBHOST \
#                 #                         --database sandbox \
#                 #                         --user $user \
#                 #                         --password $user \
#                 #                         --schema \""$user"__"$branchecourante"\" \
#                 #                         --overwrite \
#                 #                         \""$objet"\" \""$objet"\"
#                 #     done
#                 # #geogig ls
#                 # cd ..
#             done
#         depotCentralExport
#         # echo "A la fin d'une étape, on exporte le depot soluris"
#         # echo "On se place dans le bon depot"
#         # user='Soluris'
#         # cd $user
#         # for branche in $listbranche1 ;
#         #     do
#         #         echo ""
#         #         echo "On se place dans la bonne branche"
#         #         echo "geogig checkout $branche"
#         #         geogig checkout $branche
#         #         for objet in $listobjet ;
#         #             do
#         #                 echo "Export de de la table" \""$objet"\"
#         #                 geogig pg export --host $DBHOST \
#         #                                 --database sandbox \
#         #                                 --user $user \
#         #                                 --password $user \
#         #                                 --schema \""$user"__"$branche"\" \
#         #                                 --overwrite \
#         #                                 \""$objet"\" \""$objet"\"
#         #             done
#         #     done
#         # cd ..
#     done





user='SDE' ; etape='Etape_01' ; pullAndExport $user $etape
user='DGFiP' ; etape='Etape_01' ; pullAndExport $user $etape
user='Departement' ; etape='Etape_01' ; pullAndExport $user $etape
user='SDEER' ; etape='Etape_01' ; pullAndExport $user $etape
user='CDA' ; etape='Etape_01' ; pullAndExport $user $etape
user='DGFiP' ; etape='Etape_01' ; editAddCommitPullPushAndExport $user $etape
user='ERDF' ; etape='Etape_01' ; pullAndExport $user $etape
user='DGFiP' ; etape='Etape_02' ; pullAndExport $user $etape
user='SDEER' ; etape='Etape_01' ; editAddCommitPullPushAndExport $user $etape
user='SDEER' ; etape='Etape_02' ; pullAndExport $user $etape
user='VLR' ; etape='Etape_01' ; pullAndExport $user $etape
user='Departement' ; etape='Etape_01' ; editAddCommitPullPushAndExport $user $etape
user='VLR' ; etape='Etape_01' ; editAddCommitPullPushAndExport $user $etape
user='CDA' ; etape='Etape_01' ; editAddCommitPullPushAndExport $user $etape
user='ERDF' ; etape='Etape_01' ; editAddCommitPullPushAndExport $user $etape
user='Departement' ; etape='Etape_02' ; pullAndExport $user $etape
user='ERDF' ; etape='Etape_02' ; pullAndExport $user $etape
user='SDE' ; etape='Etape_01' ; editAddCommitPullPushAndExport $user $etape
user='SDE' ; etape='Etape_02' ; pullAndExport $user $etape
user='CDA' ; etape='Etape_02' ; pullAndExport $user $etape
user='ERDF' ; etape='Etape_02' ; editAddCommitPullPushAndExport $user $etape
user='SDEER' ; etape='Etape_02' ; editAddCommitPullPushAndExport $user $etape
user='SDEER' ; etape='Etape_03' ; pullAndExport $user $etape
user='VLR' ; etape='Etape_02' ; pullAndExport $user $etape
user='DGFiP' ; etape='Etape_02' ; editAddCommitPullPushAndExport $user $etape
user='Departement' ; etape='Etape_02' ; editAddCommitPullPushAndExport $user $etape
user='VLR' ; etape='Etape_02' ; editAddCommitPullPushAndExport $user $etape
user='VLR' ; etape='Etape_03' ; pullAndExport $user $etape
user='CDA' ; etape='Etape_02' ; editAddCommitPullPushAndExport $user $etape
user='SDE' ; etape='Etape_02' ; editAddCommitPullPushAndExport $user $etape
user='SDE' ; etape='Etape_03' ; pullAndExport $user $etape
user='DGFiP' ; etape='Etape_03' ; pullAndExport $user $etape
user='Departement' ; etape='Etape_03' ; pullAndExport $user $etape
user='CDA' ; etape='Etape_03' ; pullAndExport $user $etape
user='ERDF' ; etape='Etape_03' ; pullAndExport $user $etape
user='Departement' ; etape='Etape_03' ; editAddCommitPullPushAndExport $user $etape
user='VLR' ; etape='Etape_03' ; editAddCommitPullPushAndExport $user $etape
user='DGFiP' ; etape='Etape_03' ; editAddCommitPullPushAndExport $user $etape
user='CDA' ; etape='Etape_03' ; editAddCommitPullPushAndExport $user $etape
user='DGFiP' ; etape='Etape_04' ; pullAndExport $user $etape
user='Departement' ; etape='Etape_04' ; pullAndExport $user $etape
user='ERDF' ; etape='Etape_03' ; editAddCommitPullPushAndExport $user $etape
user='SDE' ; etape='Etape_03' ; editAddCommitPullPushAndExport $user $etape
user='SDEER' ; etape='Etape_03' ; editAddCommitPullPushAndExport $user $etape
user='SDE' ; etape='Etape_04' ; pullAndExport $user $etape
user='SDEER' ; etape='Etape_04' ; pullAndExport $user $etape
user='CDA' ; etape='Etape_04' ; pullAndExport $user $etape
user='SDEER' ; etape='Etape_04' ; editAddCommitPullPushAndExport $user $etape
user='ERDF' ; etape='Etape_04' ; pullAndExport $user $etape
user='VLR' ; etape='Etape_04' ; pullAndExport $user $etape
user='Departement' ; etape='Etape_04' ; editAddCommitPullPushAndExport $user $etape
user='ERDF' ; etape='Etape_04' ; editAddCommitPullPushAndExport $user $etape
user='VLR' ; etape='Etape_04' ; editAddCommitPullPushAndExport $user $etape
user='DGFiP' ; etape='Etape_04' ; editAddCommitPullPushAndExport $user $etape
user='SDE' ; etape='Etape_04' ; editAddCommitPullPushAndExport $user $etape
user='SDE' ; etape='Etape_05' ; pullAndExport $user $etape
user='DGFiP' ; etape='Etape_05' ; pullAndExport $user $etape
user='Departement' ; etape='Etape_05' ; pullAndExport $user $etape
user='SDEER' ; etape='Etape_05' ; pullAndExport $user $etape
user='CDA' ; etape='Etape_04' ; editAddCommitPullPushAndExport $user $etape
user='CDA' ; etape='Etape_05' ; pullAndExport $user $etape
user='ERDF' ; etape='Etape_05' ; pullAndExport $user $etape
user='VLR' ; etape='Etape_05' ; pullAndExport $user $etape
user='CDA' ; etape='Etape_05' ; editAddCommitPullPushAndExport $user $etape
user='Departement' ; etape='Etape_05' ; editAddCommitPullPushAndExport $user $etape
user='VLR' ; etape='Etape_05' ; editAddCommitPullPushAndExport $user $etape
user='DGFiP' ; etape='Etape_05' ; editAddCommitPullPushAndExport $user $etape
user='SDEER' ; etape='Etape_05' ; editAddCommitPullPushAndExport $user $etape
user='ERDF' ; etape='Etape_05' ; editAddCommitPullPushAndExport $user $etape
user='SDE' ; etape='Etape_05' ; editAddCommitPullPushAndExport $user $etape

depotCentralExport
