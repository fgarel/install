#!/bin/sh


        DBHOST_WORKSPACE_INI=localhost
        DBPORT_WORKSPACE_INI=5432
        DBNAME_WORKSPACE_INI=dbworkspace
        DBSCHE_WORKSPACE_INI=init
        DBUSER_WORKSPACE_INI=fred
        DBPASS_WORKSPACE_INI=fgpass

        DBHOST_WORKSPACE_FIN=localhost
        DBPORT_WORKSPACE_FIN=5432
        DBNAME_WORKSPACE_FIN=dbworkspace
        DBSCHE_WORKSPACE_FIN=pcrs
        DBUSER_WORKSPACE_FIN=fred
        DBPASS_WORKSPACE_FIN=fgpass

        DBHOST_CENTRAL=localhost
        DBPORT_CENTRAL=5432
        DBNAME_CENTRAL=geogig_central
        DBSCHE_CENTRAL=pcrs
        DBREPO_CENTRAL=CDA-46-00197-01045-16-D-16
        DBUSER_CENTRAL=fred
        DBPASS_CENTRAL=fgpass

        DBHOST_LOCAL=localhost
        DBPORT_LOCAL=5432
        DBNAME_LOCAL=geogig_local
        DBSCHE_LOCAL=pcrs
        DBREPO_LOCAL=CDA-46-00197-01045-16-D-16
        DBUSER_LOCAL=fred
        DBPASS_LOCAL=fgpass

        DBHOST_INDIVIDUEL=localhost
        DBPORT_INDIVIDUEL=5432
        DBNAME_INDIVIDUEL=geogig_individuel
        DBSCHE_INDIVIDUEL=pcrs
        DBREPO_INDIVIDUEL="case"
        DBUSER_INDIVIDUEL=fred
        DBPASS_INDIVIDUEL=fgpass

        GGUSER_NAME="Frédéric Garel"
        GGUSER_EMAIL="frederic.garel@ville-larochelle.fr"

        REPO_CENTRAL_ONE="postgresql://$DBHOST_CENTRAL:$DBPORT_CENTRAL/$DBNAME_CENTRAL/$DBSCHE_CENTRAL/$DBREPO_CENTRAL?user=$DBUSER_CENTRAL&password=$DBPASS_CENTRAL"
        REPO_LOCAL_ONE="postgresql://$DBHOST_LOCAL:$DBPORT_LOCAL/$DBNAME_LOCAL/$DBSCHE_LOCAL/$DBREPO_LOCAL?user=$DBUSER_LOCAL&password=$DBPASS_LOCAL"
        REPO_INDIVIDUEL_ONE="postgresql://$DBHOST_INDIVIDUEL:$DBPORT_INDIVIDUEL/$DBNAME_INDIVIDUEL/$DBSCHE_INDIVIDUEL/$DBREPO_INDIVIDUEL?user=$DBUSER_INDIVIDUEL&password=$DBPASS_INDIVIDUEL"

        REPO_CENTRAL_MULTI="postgresql://$DBHOST_CENTRAL:$DBPORT_CENTRAL/$DBNAME_CENTRAL/$DBSCHE_CENTRAL?user=$DBUSER_CENTRAL&password=$DBPASS_CENTRAL"
        REPO_LOCAL_MULTI="postgresql://$DBHOST_LOCAL:$DBPORT_LOCAL/$DBNAME_LOCAL/$DBSCHE_LOCAL?user=$DBUSER_LOCAL&password=$DBPASS_LOCAL"
        REPO_INDIVIDUEL_MULTI="postgresql://$DBHOST_INDIVIDUEL:$DBPORT_INDIVIDUEL/$DBNAME_INDIVIDUEL/$DBSCHE_INDIVIDUEL?user=$DBUSER_INDIVIDUEL&password=$DBPASS_INDIVIDUEL"

        REPO_PORT_CENTRAL_ONE=8181
        REPO_PORT_LOCAL_ONE=8182
        REPO_PORT_INDIVIDUEL_ONE=8183

        REPO_PORT_CENTRAL_MULTI=8184
        REPO_PORT_LOCAL_MULTI=8185
        REPO_PORT_INDIVIDUEL_MULTI=8186

        BRANCHE_MASTER='master_diffusionAuPublic'
        BRANCHE_DEVELOP='develop_miseAJourInterne'
        BRANCHE_RELEASE_1='release_preparationAvantDiffusion/1'
        BRANCHE_FEATURE_1='feature_misaAjourImportanteProjetExterne/1'
        BRANCHE_HOTFIX_1='hotfix_modifRapide/1'

        LISTBRANCHES='release_preparationAvantDiffusion/1 feature_misaAjourImportanteProjetExterne/1 hotfix_modifRapide/1'

        LISTTABLES_WITH_OVERWRITE='
        EmpriseDisponibilitePCRS
        InitiativePCRS
        EmpriseEchangePCRS
        TronconVoirie
        Commune
        HabillagePCRS
        HabillageSymbolePCRS
        HabillageTextePCRS
        HabillageLignesPCRS
        HabillagePointsPCRS
        HabillageEnveloppePCRS
        NomVoiriePCRS
        NumeroVoiriePCRS
        PointLevePCRS
        PointCanevasPCRS
        ObjetVecteurPCRS
        ObjetGeneriquePCRS
        RasterPCRS
        MasqueOpacitePCRS
        LimiteVoiriePCRS
        MarcheEscalierPCRS
        FacadePCRS
        ProeminenceBatiPCRS
        SeuilPCRS
        MurPCRS
        PilierPCRS
        PilierRegulierPCRS
        PilierParticulierPCRS
        QuaiRailPCRS
        RailPCRS
        ArbrePCRS
        PilePontPCRS
        QuaiFluvioMaritimePCRS
        AffleurantPCRS
        AffleurantGeometriquePCRS
        AffleurantSymbolePCRS
        AffleurantEnveloppePCRS
        AffleurantPointPCRS
        AffleurantLignesPCRS
        RoleActeurPCRS17Relation
        InitiativeActeurPCRS17Relation
        InitiativeCommunePCRS17Relation
        EmpriseDisponibiliteCommunePCRS17Relation
        EmpriseEchangeCommunePCRS17Relation
        EmpriseDisponibiliteTronconVoiriePCRS17Relation
        EmpriseEchangeTronconVoiriePCRS17Relation
        HabillageHabillagePCRS17Relation
        ObjetVecteurPointLevePCRS17Relation
        AffleurantGeometriqueAffleurantLignesPCRS17Relation
        AffleurantGeometriqueAffleurantPointPCRS17Relation
        AffleurantGeometriqueAffleurantEnveloppePCRS17Relation
        AffleurantEnveloppeHabillageLignesPCRS17Relation
        RasterMasqueOpacitePCRS17Relation
        '

        LISTTABLES_WITHOUT_CHANGE='
        CategorieThematiquePCRSType
        SectionPilierPCRSType
        CategoriePlacementPCRSType
        ProprieteEspaceType
        TexteJustificationPCRSType
        QualiteCategorisationPCRSType
        NatureAffleurantPCRSType
        NatureReseauPCRSType
        CategoriePrecisionPCRSType
        CategorieMurPCRSType
        NatureReseauPCRS17Type
        CodeCouleurNormePCRS17Type
        CategoriePrecisionPCRS17Type
        CalendrierPCRS17Type
        NatureEmprisePCRS17Type
        CotationPCRS17Type";
        RoleNiveau1PCRS17Type
        RoleNiveau2PCRS17Type
        ActeurPCRS17Type
        CategorieObjetPCRS17Type
        '

        LISTTABLES_WITHOUT_OVERWRITE='
        RoleActeurPCRS17Relation
        InitiativeActeurPCRS17Relation
        InitiativeCommunePCRS17Relation
        EmpriseDisponibiliteCommunePCRS17Relation
        EmpriseEchangeCommunePCRS17Relation
        EmpriseDisponibiliteTronconVoiriePCRS17Relation
        EmpriseEchangeTronconVoiriePCRS17Relation
        HabillageHabillagePCRS17Relation
        ObjetVecteurPointLevePCRS17Relation
        AffleurantGeometriqueAffleurantLignesPCRS17Relation
        AffleurantGeometriqueAffleurantPointPCRS17Relation
        AffleurantGeometriqueAffleurantEnveloppePCRS17Relation
        AffleurantEnveloppeHabillageLignesPCRS17Relation
        RasterMasqueOpacitePCRS17Relation
        '

        RELEASETAG='1.0'
        HOTFIXTAG='1.1'

        