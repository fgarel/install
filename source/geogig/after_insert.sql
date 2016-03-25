-- After Insert
-- Mise à jour


-- EmprisePublicationPCRS
UPDATE "EmprisePublicationPCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "EmprisePublicationPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- AffleurantSymbolePCRS
UPDATE "AffleurantSymbolePCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

ALTER TABLE "AffleurantSymbolePCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "AffleurantSymbolePCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- ArbreAlignementPCRS
UPDATE "ArbreAlignementPCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

ALTER TABLE "ArbreAlignementPCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "ArbreAlignementPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- BordurePCRS
UPDATE "BordurePCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

ALTER TABLE "BordurePCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "BordurePCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- ObjetGeneriquePCRS
UPDATE "ObjetGeneriquePCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

ALTER TABLE "ObjetGeneriquePCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "ObjetGeneriquePCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- FacadePCRS
UPDATE "FacadePCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

ALTER TABLE "FacadePCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "FacadePCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- HaieEspaceVertPCRS
UPDATE "HaieEspaceVertPCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

ALTER TABLE "HaieEspaceVertPCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "HaieEspaceVertPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- MurPCRS
UPDATE "MurPCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

ALTER TABLE "MurPCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "MurPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- PointCanevasPCRS
UPDATE "PointCanevasPCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

ALTER TABLE "PointCanevasPCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "PointCanevasPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- Selection

--select * from "VLR__Etape_01"."EmprisePublicationPCRS";
--select st_asewkt(geometrie),* from "VLR__Etape_01"."EmprisePublicationPCRS";
