#!/bin/sh

        ./01_baseCreate.py
        ./02_prepareCase.py
        ./03_baseSqlFilesCreate.py
        ./03_baseSqlFilesInsert.py
        ./04_majGeogig.sh
        ./05_flowParameters.sh
        . ./05_flowParameters.sh
        ./06_flowInitCentral.sh
        ./07_flowCloneLocal.sh
        ./08_flowCloneIndividuel.sh
        ./09_flowFeatureCommencerProjet.sh
        #./10_flowFeaturePublierProjet.sh
        #./11_flowFeatureRecupererProjet.sh
        ./12_exportGeogigToWorkspaceDB.sh
        #./13_importWorkspaceDBToGeogig.sh
        #./15_FlowFeatureIntegrerProjetRecolement.sh
        #./16_FlowReleasePreparerPourLivraison.sh
        #./17_FlowReleaseLivrer.sh
        #./18_FlowHotfixPreparerPourCorrectionRapide.sh
        #./19_FlowHotfixIntegrerCorrectionRapide.sh
