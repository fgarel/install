-- Before Insert

DELETE FROM "GestionnaireReseaux"
WHERE gestionnaire = 'Departement de la Charente Maritime';

INSERT INTO
  "GestionnaireReseaux" (
    gestionnaire
  )
  VALUES (
    'Departement de la Charente Maritime');


-- EmprisePublicationPCRS
ALTER TABLE "EmprisePublicationPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;

ALTER TABLE "EmprisePublicationPCRS"
  ADD COLUMN geometry_asewkt character varying;

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN geometrie DROP NOT NULL;

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN gestionnaire SET DEFAULT 'Departement de la Charente Maritime';

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN calendrier SET DEFAULT '01';

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN "datePublication" SET DEFAULT CURRENT_DATE;

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN "typeEmprise" SET DEFAULT '03';


-- AffleurantSymbolePCRS
ALTER TABLE "AffleurantSymbolePCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;

ALTER TABLE "AffleurantSymbolePCRS"
  ADD COLUMN geometry_asewkt character varying;

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN geometrie DROP NOT NULL;

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN gestionnaire SET DEFAULT 'Departement de la Charente Maritime';

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN nature SET DEFAULT '00';

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN "codeCouleur" SET DEFAULT 'Blanc';

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN source SET DEFAULT 'Système Information Geographique Departement de la Charente Maritime';

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN "idSource" SET DEFAULT '';

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN "calque" SET DEFAULT 'PCRS_AFFLEURANT_DEP_AFFLEURANTSYMBOLE';

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN "qualiteCategorisation" SET DEFAULT '01';

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN "precisionPlanimetrique" SET DEFAULT '010';

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN "precisionAltimetrique" SET DEFAULT '010';

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN "utilisableCotation" SET DEFAULT '03';

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN "reference" SET DEFAULT 'Symbole_DEP_X';

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN "longueur" SET DEFAULT 1;

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN "largeur" SET DEFAULT 1;


-- ArbreAlignementPCRS
ALTER TABLE "ArbreAlignementPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;

ALTER TABLE "ArbreAlignementPCRS"
  ADD COLUMN geometry_asewkt character varying;

ALTER TABLE "ArbreAlignementPCRS"
  ALTER COLUMN geometrie DROP NOT NULL;

ALTER TABLE "ArbreAlignementPCRS"
  ALTER COLUMN "thematique" SET DEFAULT '06';

ALTER TABLE "ArbreAlignementPCRS"
  ALTER COLUMN "calque" SET DEFAULT 'PCRS_VEGETAL_DEP_ARBREALIGNEMENT';

ALTER TABLE "ArbreAlignementPCRS"
  ALTER COLUMN "qualiteCategorisation" SET DEFAULT '01';

ALTER TABLE "ArbreAlignementPCRS"
  ALTER COLUMN "precisionPlanimetrique" SET DEFAULT '040';

ALTER TABLE "ArbreAlignementPCRS"
  ALTER COLUMN "precisionAltimetrique" SET DEFAULT '999';

ALTER TABLE "ArbreAlignementPCRS"
  ALTER COLUMN "utilisableCotation" SET DEFAULT '01';


-- BordurePCRS
ALTER TABLE "BordurePCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;

ALTER TABLE "BordurePCRS"
  ADD COLUMN geometry_asewkt character varying;

ALTER TABLE "BordurePCRS"
  ALTER COLUMN geometrie DROP NOT NULL;

ALTER TABLE "BordurePCRS"
  ALTER COLUMN "thematique" SET DEFAULT '03';

ALTER TABLE "BordurePCRS"
  ALTER COLUMN "calque" SET DEFAULT 'PCRS_VOIRIE_DEP_BORDURE';

ALTER TABLE "BordurePCRS"
  ALTER COLUMN "qualiteCategorisation" SET DEFAULT '01';

ALTER TABLE "BordurePCRS"
  ALTER COLUMN "precisionPlanimetrique" SET DEFAULT '010';

ALTER TABLE "BordurePCRS"
  ALTER COLUMN "precisionAltimetrique" SET DEFAULT '010';

ALTER TABLE "BordurePCRS"
  ALTER COLUMN "utilisableCotation" SET DEFAULT '02';


-- ObjetGeneriquePCRS
ALTER TABLE "ObjetGeneriquePCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;

ALTER TABLE "ObjetGeneriquePCRS"
  ADD COLUMN geometry_asewkt character varying;

ALTER TABLE "ObjetGeneriquePCRS"
  ALTER COLUMN geometrie DROP NOT NULL;

ALTER TABLE "ObjetGeneriquePCRS"
  ALTER COLUMN "thematique" SET DEFAULT '01';

ALTER TABLE "ObjetGeneriquePCRS"
  ALTER COLUMN "calque" SET DEFAULT 'PCRS_TOPOGRAPHIE_DEP_OBJETGENERIQUE';

ALTER TABLE "ObjetGeneriquePCRS"
  ALTER COLUMN "qualiteCategorisation" SET DEFAULT '01';

ALTER TABLE "ObjetGeneriquePCRS"
  ALTER COLUMN "precisionPlanimetrique" SET DEFAULT '010';

ALTER TABLE "ObjetGeneriquePCRS"
  ALTER COLUMN "precisionAltimetrique" SET DEFAULT '010';

ALTER TABLE "ObjetGeneriquePCRS"
  ALTER COLUMN "utilisableCotation" SET DEFAULT '01';


-- FacadePCRS
ALTER TABLE "FacadePCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;

ALTER TABLE "FacadePCRS"
  ADD COLUMN geometry_asewkt character varying;

ALTER TABLE "FacadePCRS"
  ALTER COLUMN geometrie DROP NOT NULL;

ALTER TABLE "FacadePCRS"
  ALTER COLUMN "thematique" SET DEFAULT '02';

ALTER TABLE "FacadePCRS"
  ALTER COLUMN "calque" SET DEFAULT 'PCRS_BATI_DEP_FACADE';

ALTER TABLE "FacadePCRS"
  ALTER COLUMN "qualiteCategorisation" SET DEFAULT '01';

ALTER TABLE "FacadePCRS"
  ALTER COLUMN "precisionPlanimetrique" SET DEFAULT '010';

ALTER TABLE "FacadePCRS"
  ALTER COLUMN "precisionAltimetrique" SET DEFAULT '010';

ALTER TABLE "FacadePCRS"
  ALTER COLUMN "utilisableCotation" SET DEFAULT '02';


-- HaieEspaceVertPCRS
ALTER TABLE "HaieEspaceVertPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;

ALTER TABLE "HaieEspaceVertPCRS"
  ADD COLUMN geometry_asewkt character varying;

ALTER TABLE "HaieEspaceVertPCRS"
  ALTER COLUMN geometrie DROP NOT NULL;

ALTER TABLE "HaieEspaceVertPCRS"
  ALTER COLUMN "thematique" SET DEFAULT '06';

ALTER TABLE "HaieEspaceVertPCRS"
  ALTER COLUMN "calque" SET DEFAULT 'PCRS_VEGETAL_DEP_HAIEESPACEVERT';

ALTER TABLE "HaieEspaceVertPCRS"
  ALTER COLUMN "qualiteCategorisation" SET DEFAULT '01';

ALTER TABLE "HaieEspaceVertPCRS"
  ALTER COLUMN "precisionPlanimetrique" SET DEFAULT '040';

ALTER TABLE "HaieEspaceVertPCRS"
  ALTER COLUMN "precisionAltimetrique" SET DEFAULT '999';

ALTER TABLE "HaieEspaceVertPCRS"
  ALTER COLUMN "utilisableCotation" SET DEFAULT '01';


-- MurPCRS
ALTER TABLE "MurPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;

ALTER TABLE "MurPCRS"
  ADD COLUMN geometry_asewkt character varying;

ALTER TABLE "MurPCRS"
  ALTER COLUMN geometrie DROP NOT NULL;

ALTER TABLE "MurPCRS"
  ALTER COLUMN "thematique" SET DEFAULT '05';

ALTER TABLE "MurPCRS"
  ALTER COLUMN "calque" SET DEFAULT 'PCRS_CLOTURE_DEP_MUR';

ALTER TABLE "MurPCRS"
  ALTER COLUMN "qualiteCategorisation" SET DEFAULT '01';

ALTER TABLE "MurPCRS"
  ALTER COLUMN "precisionPlanimetrique" SET DEFAULT '010';

ALTER TABLE "MurPCRS"
  ALTER COLUMN "precisionAltimetrique" SET DEFAULT '010';

ALTER TABLE "MurPCRS"
  ALTER COLUMN "utilisableCotation" SET DEFAULT '02';


-- PointCanevasPCRS
ALTER TABLE "PointCanevasPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;

ALTER TABLE "PointCanevasPCRS"
  ADD COLUMN geometry_asewkt character varying;

ALTER TABLE "PointCanevasPCRS"
  ALTER COLUMN geometrie DROP NOT NULL;

ALTER TABLE "PointCanevasPCRS"
  ALTER COLUMN "thematique" SET DEFAULT '01';

ALTER TABLE "PointCanevasPCRS"
  ALTER COLUMN "calque" SET DEFAULT 'PCRS_TOPOGRAPHIE_DEP_POINTCANEVAS';

ALTER TABLE "PointCanevasPCRS"
  ALTER COLUMN "qualiteCategorisation" SET DEFAULT '01';

ALTER TABLE "PointCanevasPCRS"
  ALTER COLUMN "precisionPlanimetrique" SET DEFAULT '005';

ALTER TABLE "PointCanevasPCRS"
  ALTER COLUMN "precisionAltimetrique" SET DEFAULT '005';

ALTER TABLE "PointCanevasPCRS"
  ALTER COLUMN "utilisableCotation" SET DEFAULT '03';
