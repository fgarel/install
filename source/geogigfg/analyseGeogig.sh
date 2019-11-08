#!/bin/sh

echo "#"
echo "# analyse du test avec geogig"
echo "#"
echo "#"

listuser1='CDA Departement DGFiP ERDF SDE SDEER Soluris VLR';
listbranche1='PlanProjet PlanExecution PlanTopoNonControle Controle PlanTopoControle'


for user in $listuser1 ;
    do
        touch analyseGeogigStatus$user.txt
        touch analyseGeogigLog$user.txt
        touch analyseGeogigDiff$user.txt
        cd $user
        for branche in $listbranche1 ;
            do
                geogig checkout $branche
                echo "user = $user ; branche = $branche" >> ../analyseGeogigStatus$user.txt
                geogig status >> ../analyseGeogigStatus$user.txt
                echo "user = $user ; branche = $branche" >> ../analyseGeogigLog$user.txt
                geogig log >> ../analyseGeogigLog$user.txt
                echo "user = $user ; branche = $branche" >> ../analyseGeogigDiff$user.txt
                geogig diff origin/$branche $branche >> ../analyseGeogigDiff$user.txt
            done

        cd ..
    done
