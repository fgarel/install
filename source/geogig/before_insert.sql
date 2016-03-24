-- Before Insert
--DELETE FROM "VLR__Etape_01"."EmprisePublicationPCRS";

DELETE FROM "GestionnaireReseaux"
WHERE gestionnaire = 'Ville de La Rochelle';

INSERT INTO
  "GestionnaireReseaux" (
    gestionnaire
  )
  VALUES (
    'Ville de La Rochelle');

ALTER TABLE "EmprisePublicationPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;

ALTER TABLE "EmprisePublicationPCRS"
  ADD COLUMN geometry_asewkt character varying;

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN geometrie DROP NOT NULL;

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN gestionnaire SET DEFAULT 'Ville de La Rochelle';

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN calendrier SET DEFAULT '01';

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN "datePublication" SET DEFAULT CURRENT_DATE;

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN "typeEmprise" SET DEFAULT '03';
