-- After Insert
-- Mise à jour


-- EmprisePublicationPCRS
UPDATE "EmprisePublicationPCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M12%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M13%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M14%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M21%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M22%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M25%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M33%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M41%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M42%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M45%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M52%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M54%';
UPDATE "EmprisePublicationPCRS" SET geometrie = st_reverse(geometrie) where "idEmprise" like 'M55%';

ALTER TABLE "EmprisePublicationPCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "EmprisePublicationPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- AffleurantSymbolePCRS
UPDATE "AffleurantSymbolePCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

update "AffleurantSymbolePCRS"
  SET nature = '04',
      "codeCouleur" = 'Bleu',
      reference = 'BoucheACleHexagonal',
      longueur = 0.1,
      largeur = 0.1
  where "idAffleurant" like '%AffleurantSymbole01';

update "AffleurantSymbolePCRS"
  SET nature = '03',
      "codeCouleur" = 'Marron',
      reference = 'TamponRegardRond',
      longueur = 0.6,
      largeur = 0.6
  where "idAffleurant" like '%AffleurantSymbole02';

update "AffleurantSymbolePCRS"
  SET nature = '01',
      "codeCouleur" = 'Marron',
      reference = 'Avaloir',
      longueur = 0.8,
      largeur = 0.5
  where "idAffleurant" like '%AffleurantSymbole03';

update "AffleurantSymbolePCRS"
  SET nature = '07',
      "codeCouleur" = 'Rouge',
      reference = 'Candelabre',
      longueur = 0.2,
      largeur = 0.2
  where "idAffleurant" like '%AffleurantSymbole04';

update "AffleurantSymbolePCRS"
  SET nature = '02',
      "codeCouleur" = 'Vert',
      reference = 'Plaque',
      longueur = 1.5,
      largeur = 0.6
  where "idAffleurant" like '%AffleurantSymbole05';

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

UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M12%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M13%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M21%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M22%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M25%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M32%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M33%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M41%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M42%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M45%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M52%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M54%';
UPDATE "BordurePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M55%';

ALTER TABLE "BordurePCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "BordurePCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- ObjetGeneriquePCRS
UPDATE "ObjetGeneriquePCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M12%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M13%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M21%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M22%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M25%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M32%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M33%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M41%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M42%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M45%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M52%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M54%';
UPDATE "ObjetGeneriquePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M55%';

ALTER TABLE "ObjetGeneriquePCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "ObjetGeneriquePCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- FacadePCRS
UPDATE "FacadePCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M12%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M13%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M21%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M22%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M25%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M32%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M33%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M41%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M42%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M45%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M52%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M54%';
UPDATE "FacadePCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M55%';

ALTER TABLE "FacadePCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "FacadePCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- HaieEspaceVertPCRS
UPDATE "HaieEspaceVertPCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M12%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M13%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M21%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M22%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M25%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M32%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M33%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M41%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M42%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M45%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M52%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M54%';
UPDATE "HaieEspaceVertPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M55%';


ALTER TABLE "HaieEspaceVertPCRS"
  ALTER COLUMN geometrie SET NOT NULL;

ALTER TABLE "HaieEspaceVertPCRS"
  DROP COLUMN IF EXISTS geometry_asewkt;


-- MurPCRS
UPDATE "MurPCRS" SET geometrie = GeomFromEWKT(geometry_asewkt);

UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M12%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M13%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M21%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M22%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M25%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M32%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M33%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M41%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M42%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M45%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M52%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M54%';
UPDATE "MurPCRS" SET geometrie = st_reverse(geometrie) where "idObjet" like 'M55%';

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
