#!/bin/sh


        DBHOST_ORIGINE=pg.cdalr.fr
        DBPORT_ORIGINE=5432
        DBNAME_ORIGINE=sandbox
        DBSCHE_ORIGINE=a_pcrs
        DBUSER_ORIGINE=fred
        DBPASS_ORIGINE=fgpass

        DBHOST_CENTRAL=pg.cdalr.fr
        DBPORT_CENTRAL=5432
        DBNAME_CENTRAL=geogig
        DBSCHE_CENTRAL=pcrs
        DBSCHE_CENTRAL=repos
        DBREPO_CENTRAL=CDA-46-00197-01045-16-D-16
        DBUSER_CENTRAL=fred
        DBPASS_CENTRAL=fgpass

        DBHOST_LOCAL=pg.cdalr.fr
        DBPORT_LOCAL=5432
        DBNAME_LOCAL=pcrs
        DBSCHE_LOCAL=user_01
        DBREPO_LOCAL=case
        DBUSER_LOCAL=fred
        DBPASS_LOCAL=fgpass

        GGUSER_NAME="Frédéric Garel"
        GGUSER_EMAIL="frederic.garel@ville-larochelle.fr"

        REPO_CENTRAL_ONE="postgresql://$DBHOST_CENTRAL:$DBPORT_CENTRAL/$DBNAME_CENTRAL/$DBSCHE_CENTRAL/$DBREPO_CENTRAL?user=$DBUSER_CENTRAL&password=$DBPASS_CENTRAL"
        REPO_CENTRAL_MULTI="postgresql://$DBHOST_CENTRAL:$DBPORT_CENTRAL/$DBNAME_CENTRAL/$DBSCHE_CENTRAL?user=$DBUSER_CENTRAL&password=$DBPASS_CENTRAL"
        REPO_LOCAL_ONE="postgresql://$DBHOST_LOCAL:$DBPORT_LOCAL/$DBNAME_LOCAL/$DBSCHE_LOCAL/$DBREPO_LOCAL?user=$DBUSER_LOCAL&password=$DBPASS_LOCAL"
        REPO_LOCAL_MULTI="postgresql://$DBHOST_LOCAL:$DBPORT_LOCAL/$DBNAME_LOCAL/$DBSCHE_LOCAL?user=$DBUSER_LOCAL&password=$DBPASS_LOCAL"

        REPO_PORT_CENTRAL_ONE=8181
        REPO_PORT_CENTRAL_MULTI=8182
        REPO_PORT_LOCAL_ONE=8183
        REPO_PORT_LOCAL_MULTI=8184

        BRANCHE_MASTER='master_diffusionAuPublic'
        BRANCHE_DEVELOP='develop_miseAJourInterne'
        BRANCHE_RELEASE_1='release_preparationAvantDiffusion/1'
        BRANCHE_FEATURE_1='feature_misaAjourImportanteProjetExterne/1'
        BRANCHE_HOTFIX_1='hotfix_modifRapide/1'
