-- After Insert
-- Mise à jour
UPDATE "EmprisePublicationPCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "EmprisePublicationPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;

-- Selection

--select * from "VLR__Etape_01"."EmprisePublicationPCRS";
--select st_asewkt(geometrie),* from "VLR__Etape_01"."EmprisePublicationPCRS";
