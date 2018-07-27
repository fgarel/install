-- ---------------------------------
-- Script pour la creation de tables
-- adaptées au modèle de données
-- PCRS - Plan du Corps de Rue Simplifié (à très grande échelle)
-- Version 2.0 2017-09-21
-- ---------------------------------

-- ---------------------------------
-- DROP
-- ---------------------------------

-- Information
DROP TABLE if exists "init"."EmpriseDisponibilitePCRS" cascade;
DROP TABLE if exists "init"."InitiativePCRS" cascade;
-- Publication
DROP TABLE if exists "init"."EmpriseEchangePCRS" cascade;
DROP TABLE if exists "init"."TronconVoirie" cascade;
DROP TABLE if exists "init"."Commune" cascade;
-- Habillage
DROP TABLE if exists "init"."HabillagePCRS" cascade;
DROP TABLE if exists "init"."HabillageSymbolePCRS" cascade;
DROP TABLE if exists "init"."HabillageTextePCRS" cascade;
DROP TABLE if exists "init"."HabillageLignesPCRS" cascade;
DROP TABLE if exists "init"."HabillagePointsPCRS" cascade;
DROP TABLE if exists "init"."HabillageEnveloppePCRS" cascade;
-- Topographie
DROP TABLE if exists "init"."NomVoiriePCRS" cascade;
DROP TABLE if exists "init"."NumeroVoiriePCRS" cascade;
DROP TABLE if exists "init"."PointLevePCRS" cascade;
DROP TABLE if exists "init"."PointCanevasPCRS" cascade;
-- Multi
DROP TABLE if exists "init"."ObjetVecteurPCRS" cascade;
DROP TABLE if exists "init"."ObjetGeneriquePCRS" cascade;
-- Raster
DROP TABLE if exists "init"."RasterPCRS" cascade;
DROP TABLE if exists "init"."MasqueOpacitePCRS" cascade;
-- Voirie
DROP TABLE if exists "init"."LimiteVoiriePCRS" cascade;
-- Voirie ou Bati
DROP TABLE if exists "init"."MarcheEscalierPCRS" cascade;
-- Bati
DROP TABLE if exists "init"."FacadePCRS" cascade;
DROP TABLE if exists "init"."ProeminenceBatiPCRS" cascade;
DROP TABLE if exists "init"."SeuilPCRS" cascade;
-- Clotures
DROP TABLE if exists "init"."MurPCRS" cascade;
DROP TABLE if exists "init"."PilierPCRS" cascade;
DROP TABLE if exists "init"."PilierRegulierPCRS" cascade;
DROP TABLE if exists "init"."PilierParticulierPCRS" cascade;
-- Ferroviaire
DROP TABLE if exists "init"."QuaiRailPCRS" cascade;
DROP TABLE if exists "init"."RailPCRS" cascade;
-- Végétal
DROP TABLE if exists "init"."ArbrePCRS" cascade;
-- Ouvrage d'Art
DROP TABLE if exists "init"."PilePontPCRS" cascade;
DROP TABLE if exists "init"."QuaiFluvioMaritimePCRS" cascade;
-- Affleurant
DROP TABLE if exists "init"."AffleurantPCRS" cascade;
DROP TABLE if exists "init"."AffleurantGeometriquePCRS" cascade;
DROP TABLE if exists "init"."AffleurantSymbolePCRS" cascade;
DROP TABLE if exists "init"."AffleurantEnveloppePCRS" cascade;
DROP TABLE if exists "init"."AffleurantPointPCRS" cascade;
DROP TABLE if exists "init"."AffleurantLignesPCRS" cascade;


-- --- Enumeration 1

DROP TABLE if exists "init"."CategorieThematiquePCRSType" cascade;
DROP TABLE if exists "init"."SectionPilierPCRSType" cascade;
DROP TABLE if exists "init"."CategoriePlacementPCRSType" cascade;
DROP TABLE if exists "init"."ProprieteEspaceType" cascade;
DROP TABLE if exists "init"."TexteJustificationPCRSType" cascade;
DROP TABLE if exists "init"."QualiteCategorisationPCRSType" cascade;
DROP TABLE if exists "init"."NatureAffleurantPCRSType" cascade;
DROP TABLE if exists "init"."NatureReseauPCRSType" cascade;
DROP TABLE if exists "init"."CategoriePrecisionPCRSType" cascade;
DROP TABLE if exists "init"."CategorieMurPCRSType" cascade;


-- --- Enumeration 2

DROP TABLE if exists "init"."NatureReseauPCRS17Type" cascade;
DROP TABLE if exists "init"."CodeCouleurNormePCRS17Type" cascade;
DROP TABLE if exists "init"."CategoriePrecisionPCRS17Type" cascade;
DROP TABLE if exists "init"."CalendrierPCRS17Type" cascade;
DROP TABLE if exists "init"."NatureEmprisePCRS17Type" cascade;
-- DROP TABLE if exists "init"."CotationPCRS17Type";
DROP TABLE if exists "init"."RoleNiveau1PCRS17Type" CASCADE;
DROP TABLE if exists "init"."RoleNiveau2PCRS17Type" CASCADE;
DROP TABLE if exists "init"."ActeurPCRS17Type" CASCADE;
DROP TABLE if exists "init"."CategorieObjetPCRS17Type" cascade;

-- --- Relation

--DROP TABLE if exists "init"."RoleActeurPCRS17Relation" CASCADE;
DROP TABLE if exists "init"."InitiativeActeurPCRS17Relation" CASCADE;
DROP TABLE if exists "init"."InitiativeCommunePCRS17Relation" CASCADE;
DROP TABLE if exists "init"."EmpriseDisponibiliteCommunePCRS17Relation" CASCADE;
DROP TABLE if exists "init"."EmpriseEchangeCommunePCRS17Relation" CASCADE;
DROP TABLE if exists "init"."EmpriseDisponibiliteTronconVoiriePCRS17Relation" CASCADE;
DROP TABLE if exists "init"."EmpriseEchangeTronconVoiriePCRS17Relation" CASCADE;
DROP TABLE if exists "init"."HabillageHabillagePCRS17Relation" CASCADE;
DROP TABLE if exists "init"."ObjetVecteurPointLevePCRS17Relation" CASCADE;
DROP TABLE if exists "init"."AffleurantGeometriqueAffleurantLignesPCRS17Relation" CASCADE;
DROP TABLE if exists "init"."AffleurantGeometriqueAffleurantPointPCRS17Relation" CASCADE;
DROP TABLE if exists "init"."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation" CASCADE;
DROP TABLE if exists "init"."AffleurantEnveloppeHabillageLignesPCRS17Relation" CASCADE;
DROP TABLE if exists "init"."RasterMasqueOpacitePCRS17Relation" CASCADE;

-- ---------------------------------
-- Creation des tables "liste de valeurs / énumérations"
-- ---------------------------------


-- ---------------------------------
-- Classe : CategorieThematiquePCRSType
-- ---------------------------------

-- Table: CategorieThematiquePCRSType
--DROP TABLE if exists "init"."CategorieThematiquePCRSType" cascade;
CREATE TABLE "init"."CategorieThematiquePCRSType"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "CategorieThematiquePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('00', 'A déterminer', 'Concerne essentiellement les objets génériques dont la thématique, liée en général à la classe d''objet, ne peut être déterminée à partir de la nomenclature lors de l''initialisation du PCRS.');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('01', 'Topographie', 'Concerne les objets spécifiques à la topographie, et notamment les points de canevas et les points de levés topographiques');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('02', 'Bâti', 'Concerne les objets liés au bâti sur le domaine public ou en limite de celui-ci, et en particulier les seuils de bâtiments, les façades, les amorces de bâti, les proéminences de bâti, et les escaliers.');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('03', 'Voirie', 'Concerne les objets de types voies de circulation terrestre non ferroviaire du domaine public, et comprenant les limites apparentes de voirie et escaliers');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('04', 'Ferroviaire', 'Concerne aussi bien les rails de SNCF Réseau que ceux liés à un transport public de type tramway ou tram-train et situés sur le domaine public');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('05', 'Clôture', 'Concerne les objets destinés à la clôture d''un espace et ayant une limite apparente avec le domaine public, dont les murs de tous types et parapets, surmontés ou non d''une clôture, les socles de clôtures, et les piliers.');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('06', 'Végétal', 'Concerne les objets végétaux de type haies et espaces verts, ainsi que les arbres');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('07', 'Ouvrage d Art', 'Concerne les ouvrages d''art du domaine public (ex : piles de ponts)');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('08', 'Hydrographie', 'Concerne l''hydrographie');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('09', 'Orographie', 'Concerne l''orographie');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('10', 'Affleurant', 'Concerne un élément de réseau affleurant');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('11', 'Raster', 'Concerne une orthoimage (par exemple masque d''opacité)');
INSERT INTO "init"."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('99', 'Non définie', 'La thématique n''est pas définie dans les données sources du gestionnaire du PCRS');

COMMENT ON TABLE "init"."CategorieThematiquePCRSType" IS
'Code permettant de décrire la thématique rattachée à un objet donné du PCRS';


-- ---------------------------------
-- Classe : SectionPilierPCRSType
-- ---------------------------------

-- Table: SectionPilierPCRSType
--DROP TABLE if exists "init"."SectionPilierPCRSType" cascade;
CREATE TABLE "init"."SectionPilierPCRSType"
(
  code character varying(2) unique,
  valeur character varying(20),
  definition character varying(255),
  CONSTRAINT "SectionPilierPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."SectionPilierPCRSType" (code, valeur, definition) VALUES ('00', 'Pilier autre', 'Autre type de pilier');
INSERT INTO "init"."SectionPilierPCRSType" (code, valeur, definition) VALUES ('01', 'Pilier carré', 'Pilier à section carrée');
INSERT INTO "init"."SectionPilierPCRSType" (code, valeur, definition) VALUES ('02', 'Pilier rectangulaire', 'Pilier à section rectangulaire');
INSERT INTO "init"."SectionPilierPCRSType" (code, valeur, definition) VALUES ('03', 'Pilier circulaire', 'Pilier à section circulaire');

COMMENT ON TABLE "init"."SectionPilierPCRSType" IS
'Code permettant de décrire le type de pilier.';


-- ---------------------------------
-- Classe : CategoriePlacementPCRSType
-- ---------------------------------

-- Table: CategoriePlacementPCRSType
--DROP TABLE if exists "init"."CategoriePlacementPCRSType" cascade;
CREATE TABLE "init"."CategoriePlacementPCRSType"
(
  code character varying(2) unique,
  valeur character varying(21),
  definition character varying(255),
  CONSTRAINT "CategoriePlacementPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('01', 'Sans Repositionnement', 'L''élément d''habillage n''a pas été repositionné par rapport à la source de données dont il est issu.');
INSERT INTO "init"."CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('02', 'Axe Voirie', 'L''élément d''habillage est positionné sur ou très proche d''un axe de voirie ');
INSERT INTO "init"."CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('03', 'Limite Voirie', 'L''élément d''habillage est positionné en limite de voirie');
INSERT INTO "init"."CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('04', 'Hors Voirie', 'L''élément d''habillage est positionné en dehors des limites de voirie');
INSERT INTO "init"."CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('05', 'Parcelle', 'L''élément d''habillage est positionné à l''intérieur d''une parcelle et proche des limites de voirie');

COMMENT ON TABLE "init"."CategoriePlacementPCRSType" IS
'Code permettant de décrire le type de positionnement des éléments d''habillage.';


-- ---------------------------------
-- Classe : ProprieteEspaceType
-- ---------------------------------

-- Table: ProprieteEspaceType
--DROP TABLE if exists "init"."ProprieteEspaceType" cascade;
CREATE TABLE "init"."ProprieteEspaceType"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "ProprieteEspaceType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."ProprieteEspaceType" (code, valeur, definition) VALUES ('01', 'Espace Public', 'L''espace considéré fait partie du domaine public');
INSERT INTO "init"."ProprieteEspaceType" (code, valeur, definition) VALUES ('02', 'Espace Privé', 'L''espace considéré fait partie du domaine privé');

COMMENT ON TABLE "init"."ProprieteEspaceType" IS
'Code permettant de décrire la nature de l''espace au sens distinction de l''espce public / espace privé.';


-- ---------------------------------
-- Classe : TexteJustificationPCRSType
-- ---------------------------------

-- Table: TexteJustificationPCRSType
--DROP TABLE if exists "init"."TexteJustificationPCRSType" cascade;
CREATE TABLE "init"."TexteJustificationPCRSType"
(
  code character varying(1) unique,
  valeur character varying(6),
  definition character varying(255),
  CONSTRAINT "TexteJustificationPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."TexteJustificationPCRSType" (code, valeur, definition) VALUES ('G', 'Gauche', 'Le texte est justifé à gauche');
INSERT INTO "init"."TexteJustificationPCRSType" (code, valeur, definition) VALUES ('C', 'Centré', 'Le texte est centré');
INSERT INTO "init"."TexteJustificationPCRSType" (code, valeur, definition) VALUES ('D', 'Droite', 'Le texte est justifé à droite');

COMMENT ON TABLE "init"."TexteJustificationPCRSType" IS
'Code permettant de justifier un texte d''habillage.';


-- ---------------------------------
-- Classe : QualiteCategorisationPCRSType
-- ---------------------------------

-- Table: QualiteCategorisationPCRSType
--DROP TABLE if exists "init"."QualiteCategorisationPCRSType" cascade;
CREATE TABLE "init"."QualiteCategorisationPCRSType"
(
  code character varying(2) unique,
  valeur character varying(27),
  definition character varying(255),
  CONSTRAINT "QualiteCategorisationPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('01', 'Très fiable / Conforme PCRS', 'La catégorisation de l''objet du PCRS est conforme aux spécifications');
INSERT INTO "init"."QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('02', 'Moyennement Fiable ', 'La catégorisation de l''objet du PCRS est moyennement fiable');
INSERT INTO "init"."QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('03', 'Peu fiable', 'La catégorisation de l''objet du PCRS est peu fiable');

COMMENT ON TABLE "init"."QualiteCategorisationPCRSType" IS
'Code permettant de décrire de façon extensible la qualité de catégorisation des objets du PCRS.';


-- ---------------------------------
-- Classe : NatureAffleurantPCRSType
-- ---------------------------------

-- Table: NatureAffleurantPCRSType
--DROP TABLE if exists "init"."NatureAffleurantPCRSType" cascade;
CREATE TABLE "init"."NatureAffleurantPCRSType"
(
  code character varying(2) unique,
  valeur character varying(32),
  definition character varying(255),
  CONSTRAINT "NatureAffleurant_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

--INSERT INTO "init"."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('00', 'Non défini', 'Les informations collectées ne permettent pas d identifier sans ambiguité la nature de l affleurant');
INSERT INTO "init"."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('01', 'Avaloir', 'Dispositif à garde d''eau destiné principalement à recueillir les eaux de ruisselement ou de nettoyage des sols');
INSERT INTO "init"."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('02', 'Boîte, Coffret, Armoire', 'Boîte, coffret ou armoire technique qui centralise des éléments de réseaux');
INSERT INTO "init"."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('03', 'Tampon, Plaque, Chambre', 'Couvercle d''un regard d''assainissement ou d''une chambre souterraine de génie civil pour le passage des réseaux et présent notamment sur les chaussées');
INSERT INTO "init"."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('04', 'Branchement, Vanne, Bouche à clé', 'Accessoire de robinetterie permettant de manoeuvrer depuis la chaussée, une vanne ou un robinet de branchement enterré');
INSERT INTO "init"."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('05', 'Bouche incendie, Poteau incendie', 'Permet aux services de lutte contre l''incendie (pompiers) de puiser l''eau du réseau');
INSERT INTO "init"."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('06', 'Poteau', 'Poteau supportant le passage aérien d''un ou plusieurs réseaux ou une signalisation tricolore');
INSERT INTO "init"."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('07', 'Poteau d éclairage', 'Borne lumineuse pour la mise en valeur / l''éclairage de l''espace public');

COMMENT ON TABLE "init"."NatureAffleurantPCRSType" IS
'Code permettant de décrire de façon extensible la nature d''un affleurant de réseaux.';


-- ---------------------------------
-- Classe : NatureReseauPCRSType
-- ---------------------------------

-- Table: NatureReseauPCRSType
--DROP TABLE if exists "init"."NatureReseauPCRSType" cascade;
CREATE TABLE "init"."NatureReseauPCRSType"
(
  code character varying(8) unique,
  valeur character varying(33),
  CONSTRAINT "NatureReseauPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('00', 'Non défini');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('ELEC', 'Electricité');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('ELECECL', 'Eclairage public');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('ELECSLT', 'Signalisation lumineuse tricolore');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('ELECBT', 'Electricité basse tension');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('ELECHT', 'Electricité haute tension');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('GAZ', 'Gaz');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('MULT', 'Multi réseaux');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('CHIM', 'Produits chimiques');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('COM', 'Télécom');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('AEP', 'Eau Potable');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('ASSA', 'Assainissement et pluvial');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('ASSAEP', 'Eaux pluviales');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('ASSAEU', 'Eaux usées');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('ASSARU', 'Réseau unitaire');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('DECH', 'Déchets');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('CHAU', 'Chauffage et climatisation');
INSERT INTO "init"."NatureReseauPCRSType" (code, valeur) VALUES ('INCE', 'Incendie');

COMMENT ON TABLE "init"."NatureReseauPCRSType" IS
'Code permettant de décrire de façon extensible la nature d''un réseau.';


-- ---------------------------------
-- Classe : CategoriePrecisionPCRSType
-- ---------------------------------

-- Table: CategoriePrecisionPCRSType
--DROP TABLE if exists "init"."CategoriePrecisionPCRSType" cascade;
CREATE TABLE "init"."CategoriePrecisionPCRSType"
(
  code character varying(3) unique,
  valeur character varying(17),
  CONSTRAINT "CategoriePrecisionPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."CategoriePrecisionPCRSType" (code, valeur) VALUES ('002', 'moins de 2 cm');
INSERT INTO "init"."CategoriePrecisionPCRSType" (code, valeur) VALUES ('005', 'de 2 à 5 cm');
INSERT INTO "init"."CategoriePrecisionPCRSType" (code, valeur) VALUES ('010', 'de 5 à 10 cm');
INSERT INTO "init"."CategoriePrecisionPCRSType" (code, valeur) VALUES ('040', 'de 10 à 40 cm');
INSERT INTO "init"."CategoriePrecisionPCRSType" (code, valeur) VALUES ('150', 'de 40 à 150 cm');
INSERT INTO "init"."CategoriePrecisionPCRSType" (code, valeur) VALUES ('999', 'au delà de 150 cm');

COMMENT ON TABLE "init"."CategoriePrecisionPCRSType" IS
'Code permettant de décrire un intervalle de précision exprimée en cm associée au levé d''un objet ou d''un affleurant du PCRS';


-- ---------------------------------
-- Classe : CategorieMurPCRSType
-- ---------------------------------

-- Table: CategorieMurPCRSType
--DROP TABLE if exists  "init"."CategorieMurPCRSType" cascade;
CREATE TABLE "init"."CategorieMurPCRSType"
(
  code character varying(2) unique,
  valeur character varying(22),
  CONSTRAINT "CategorieMurPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

--INSERT INTO "init"."CategorieMurPCRSType" (code, valeur) VALUES ('00', 'Non défini');
INSERT INTO "init"."CategorieMurPCRSType" (code, valeur) VALUES ('01', 'Mur');
INSERT INTO "init"."CategorieMurPCRSType" (code, valeur) VALUES ('02', 'Mur de soutènement');
INSERT INTO "init"."CategorieMurPCRSType" (code, valeur) VALUES ('03', 'Mur bahut');
INSERT INTO "init"."CategorieMurPCRSType" (code, valeur) VALUES ('04', 'Mur bahut avec clôture');
INSERT INTO "init"."CategorieMurPCRSType" (code, valeur) VALUES ('05', 'Parapet');
--INSERT INTO "init"."CategorieMurPCRSType" (code, valeur) VALUES ('06', 'Clôture sur socle');
INSERT INTO "init"."CategorieMurPCRSType" (code, valeur) VALUES ('06', 'Enrochement');

COMMENT ON TABLE "init"."CategorieMurPCRSType" IS
'Code permettant de décrire les différents types de mur.';





-- ---------------------------------
-- Classe : CodeCouleurNormePCRS17Type
-- ---------------------------------

-- Table: CodeCouleurNormePCRS17Type
-- DROP TABLE if exists "init"."CodeCouleurNormePCRS17Type" cascade;
CREATE TABLE "init"."CodeCouleurNormePCRS17Type"
(
  code character varying(6) unique,
  valeur character varying(11),
  definition character varying(255),
  CONSTRAINT "CodeCouleurNormePCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Rouge', '255,0,0', 'Electricité BT, HTA ou HTB, éclairage, signalisation routière et feux tricolores');
INSERT INTO "init"."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Jaune', '255,255,0', 'Gaz combustible (transport ou distribution) et Hydrocarbures');
INSERT INTO "init"."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Orange', '255,100,0', 'Produits chimiques');
INSERT INTO "init"."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Bleu', '0,0,255', 'Eau potable');
INSERT INTO "init"."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Marron', '125,73,0', 'Assainissement et Pluvial');
INSERT INTO "init"."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Violet', '100,0,100', 'Chauffage et Climatisation');
INSERT INTO "init"."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Vert', '0,255,0', 'Communications électroniques et électricité TBT');
INSERT INTO "init"."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Rose', '255,0,139', 'Emprise multi-réseaux');
INSERT INTO "init"."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Blanc', '255,255,255', 'Non-défini');
INSERT INTO "init"."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('None', '130,130,130', 'Non-défini');

COMMENT ON TABLE "init"."CodeCouleurNormePCRS17Type" IS
'Code permettant de décrire la couleur associée à une nature de réseau. cf norme NF P 98-332';


-- ---------------------------------
-- Classe : NatureReseauPCRS17Type
-- ---------------------------------

-- Table: NatureReseauPCRS17Type
--DROP TABLE if exists "init"."NatureReseauPCRS17Type" cascade;
CREATE TABLE "init"."NatureReseauPCRS17Type"
(
  code character varying(8) unique,
  valeur character varying(33),
  "valeurCouleurRepresentation" character varying(11),
  "codeCouleurNorme" character varying(6) REFERENCES "init"."CodeCouleurNormePCRS17Type" (code),
  CONSTRAINT "NatureReseauPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('00', 'Non défini', '130,130,130', 'None');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELEC', 'Electricité', '255,0,0', 'Rouge');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECECL', 'Eclairage public', '255,0,0', 'Rouge');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECSLT', 'Signalisation lumineuse tricolore', '255,0,0', 'Blanc');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECBT', 'Electricité basse tension', '255,0,0', 'Rouge');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECHT', 'Electricité haute tension', '255,0,0', 'Rouge');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('GAZ', 'Gaz', '255,255,0', 'Jaune');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('MULT', 'Multi réseaux', '255,0,139', 'Rose');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('CHIM', 'Produits chimiques', '255,100,0', 'Orange');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('COM', 'Télécom', '0,255,0', 'Vert');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('AEP', 'Eau Potable', '0,0,255', 'Bleu');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSA', 'Assainissement et pluvial', '125,73,0', 'Marron');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSAEP', 'Eaux pluviales', '125,73,0', 'Marron');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSAEU', 'Eaux usées', '125,73,0', 'Marron');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSARU', 'Réseau unitaire', '125,73,0', 'Marron');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('DECH', 'Déchets', '130,130,130', 'None');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('CHAU', 'Chauffage et climatisation', '100,0,100', 'Violet');
INSERT INTO "init"."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('INCE', 'Incendie', '0,0,255', 'Bleu');

COMMENT ON TABLE "init"."NatureReseauPCRS17Type" IS
'Code permettant de décrire de façon extensible la nature d''un réseau.';


-- ---------------------------------
-- Classe : CategoriePrecisionPCRS17Type
-- ---------------------------------

-- Table: CategoriePrecisionPCRS17Type
--DROP TABLE if exists "init"."CategoriePrecisionPCRS17Type" cascade;
CREATE TABLE "init"."CategoriePrecisionPCRS17Type"
(
  code character varying(3) unique,
  valeur character varying(17),
  CONSTRAINT "CategoriePrecisionPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('002', 'moins de 2 cm');
INSERT INTO "init"."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('005', 'de 2 à 5 cm');
INSERT INTO "init"."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('010', 'de 5 à 10 cm');
INSERT INTO "init"."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('040', 'de 10 à 40 cm');
INSERT INTO "init"."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('100', 'de 40 à 100 cm');
INSERT INTO "init"."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('150', 'de 100 à 150 cm');
INSERT INTO "init"."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('999', 'au delà de 150 cm');

COMMENT ON TABLE "init"."CategoriePrecisionPCRS17Type" IS
'Code permettant de décrire un intervalle de précision exprimée en cm associée au levé d''un objet ou d''un affleurant du PCRS';


-- ---------------------------------
-- Classe : CalendrierPCRS17Type
-- ---------------------------------

-- Table: CalendrierPCRS17Type
-- DROP TABLE if exists "init"."CalendrierPCRS17Type" cascade;
CREATE TABLE "init"."CalendrierPCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(24),
  CONSTRAINT "CalendrierPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."CalendrierPCRS17Type" (code, valeur) VALUES ('01', 'Livré, Mis A Disposition');
INSERT INTO "init"."CalendrierPCRS17Type" (code, valeur) VALUES ('02', 'Actualisation En Cours');
INSERT INTO "init"."CalendrierPCRS17Type" (code, valeur) VALUES ('03', 'En Projet, Planifié');
INSERT INTO "init"."CalendrierPCRS17Type" (code, valeur) VALUES ('04', 'Non Planifié');
--
COMMENT ON TABLE "init"."CalendrierPCRS17Type" IS
'Code permettant de décrire la date de disponibilité du PCRS.';


-- ---------------------------------
-- Classe : NatureEmprisePCRS17Type
-- ---------------------------------

-- Table: NatureEmprisePCRS17Type
--DROP TABLE if exists "init"."NatureEmprisePCRS17Type" cascade;
CREATE TABLE "init"."NatureEmprisePCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(21),
  CONSTRAINT "NatureEmprisePCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."NatureEmprisePCRS17Type" (code, valeur) VALUES ('01', 'Couloir');
INSERT INTO "init"."NatureEmprisePCRS17Type" (code, valeur) VALUES ('02', 'Opération');
INSERT INTO "init"."NatureEmprisePCRS17Type" (code, valeur) VALUES ('03', 'Carreau');
INSERT INTO "init"."NatureEmprisePCRS17Type" (code, valeur) VALUES ('04', 'Limite Administrative');
INSERT INTO "init"."NatureEmprisePCRS17Type" (code, valeur) VALUES ('05', 'Raster');
INSERT INTO "init"."NatureEmprisePCRS17Type" (code, valeur) VALUES ('06', 'Masque');

COMMENT ON TABLE "init"."NatureEmprisePCRS17Type" IS
'Code permettant de décrire la nature de l''emprise d''echange du PCRS.';


-- ---------------------------------
-- Classe : CotationPCRS17Type
-- ---------------------------------

-- Table: CotationPCRS17Type
-- DROP TABLE if exists "init"."CotationPCRS17Type" cascade;
-- CREATE TABLE "init"."CotationPCRS17Type"
-- (
--   code character varying(2) unique,
--   valeur character varying(38),
--   CONSTRAINT "CotationPCRS17Type_pkey" PRIMARY KEY (code)
-- )
-- WITH (
--   OIDS=FALSE
-- );
--
-- INSERT INTO "init"."CotationPCRS17Type" (code, valeur) VALUES ('01', 'Non Utilisable Pour Coter');
-- INSERT INTO "init"."CotationPCRS17Type" (code, valeur) VALUES ('02', 'Cotation Planimetrique Uniquement');
-- INSERT INTO "init"."CotationPCRS17Type" (code, valeur) VALUES ('03', 'Cotation Planimetrique Et Altimetrique');
--
-- COMMENT ON TABLE "init"."CotationPCRS17Type" IS
-- 'Code permettant de décrire si l''objet peut etre utilisable pour coter.';


-- ---------------------------------
-- Classe : RoleNiveau1PCRS17Type
-- ---------------------------------

-- Table: RoleNiveau1PCRS17Type
--DROP TABLE if exists "init"."RoleNiveau1PCRS17Type" cascade;
CREATE TABLE "init"."RoleNiveau1PCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(38),
  caracteristique character varying(750),
  CONSTRAINT "RoleNiveau1PCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('01', 'Echelon national du PCRS',
'Le CNIG met en place un observatoire en charge du suivi du
déploiement des accords locaux ainsi que de la dissémination du PCRS.
Le CNIG maintient les spécifications du PCRS,
et étudie leur adaptation hors zones urbaines denses.
Une instance à définir crée les conditions d''une agrégation
des PCRS locaux par une infrastructure nationale ad hoc,
dans le respect des droits de la propriété intellectuelle
détenus par les parties prenantes aux accords locaux,
en cohérence avec les infrastructures locales,
et selon des conditions financières définies dans les conventions
partenariales locales mises en place,
à défaut selon des conditions financières à définir.');
INSERT INTO "init"."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('02', 'Gestionnaire du PCRS',
'Le gestionnaire du PCRS est une autorité publique locale compétente.
Il met en place les conditions pour constituer un PCRS,
organise la mutualisation (initialisation et mise à jour du PCRS)
et applique le standard et les exigences de qualité.
Il précise le périmètre.
Il coordonne la production des composantes (gestion des manques et doublons),
les agrège (y compris les siennes éventuellement)
et il assure la  cohérence  globale  des productions et les documente.
Il met à disposition le PCRS (à minima par échange de données,
et/ou si possible par service web conformes aux standards
de l''Open Geospatial Consortium).
Il élargit progressivement la mutualisation à de nouveaux partenaires,
il en spécifie toutefois les conditions.');
INSERT INTO "init"."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('03', 'Producteur du PCRS',
'Produit un ou plusieurs composant(s) du PCRS
comme le bâti, la voirie, les affleurants etc...
Il contrôle ses données pour s''assurer qu''elles correspondent
à minima à la qualité requise dans la règlementation, et le cas échéant,
aux spécifications techniques du gestionnaire du PCRS.');
INSERT INTO "init"."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('04', 'Utilisateur du PCRS',
'L''utilisateur reçoit les données du PCRS,
elles lui permettent de construire une réponse à une DT/DICT
en y faisant figurer les données métiers superposées aux données PCRS.
Il peut,
soit intégrer les données PCRS dans sa base de données,
soit les consommer via un web service.
Le PCRS sert à fournir un fond de plan sur lequel le gestionnaire
peut faire figurer ses réseaux/ouvrages.
L''utilisateur peut avoir différentes fonctions, en voici quelques exemples :
maître d''ouvrage, entreprise de travaux, exploitant de réseaux, bureau d''études.');

COMMENT ON TABLE "init"."RoleNiveau1PCRS17Type" IS
'Code permettant de décrire le role de l''acteur.
Les cas d utilisation s''appuient sur des rôles liés à l''échange de données au format PCRS.
Par leurs missions, les différents intervenants liés au PCRS peuvent être
amenés à se reconnaître dans plusieurs rôles très distincts,
chaque rôle étant lié à un cas d''utilisation bien identifié du PCRS.
Ainsi une collectivité peut être amenée à intervenir aussi bien en tant que
gestionnaire du PCRS,
utilisateur du PCRS (maître d''ouvrage, opérateur de réseaux, etc.)
et/ou producteur d''un composant du PCRS.';


-- ---------------------------------
-- Classe : RoleNiveau2PCRS17Type
-- ---------------------------------

-- Table: RoleNiveau2PCRS17Type
--DROP TABLE if exists "init"."RoleNiveau2PCRS17Type" cascade;
CREATE TABLE "init"."RoleNiveau2PCRS17Type"
(
  "roleNiveau1" character varying(2) NOT NULL REFERENCES "init"."RoleNiveau1PCRS17Type" ("code"),
  code character varying(2) unique,
  valeur character varying(40),
  CONSTRAINT "RoleNiveau2PCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('01', '01', 'Echelon national du PCRS');
INSERT INTO "init"."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('02', '02', 'Gestionnaire du PCRS');
INSERT INTO "init"."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '03', 'Gestionnaire Référentiel Voirie');
INSERT INTO "init"."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '04', 'Gestionnaire Foncier');
INSERT INTO "init"."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '05', 'Gestionnaire Voirie');
INSERT INTO "init"."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '06', 'Exploitant de réseaux');
INSERT INTO "init"."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '07', 'Autre Gestionnaire');
INSERT INTO "init"."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '08', 'Producteur d orthophotos');
INSERT INTO "init"."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('04', '09', 'Maitre d''ouvrage ou executant de travaux');

COMMENT ON TABLE "init"."RoleNiveau2PCRS17Type" IS
'Code permettant de décrire le role de l''acteur.';


-- ---------------------------------
-- Classe : ActeurPCRS17Type
-- ---------------------------------

-- Table: ActeurPCRS17Type
--DROP TABLE if exists "init"."ActeurPCRS17Type" cascade;
CREATE TABLE "init"."ActeurPCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(255),
  CONSTRAINT "ActeurPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."ActeurPCRS17Type" (code, valeur) VALUES ('01', 'Soluris 17');
INSERT INTO "init"."ActeurPCRS17Type" (code, valeur) VALUES ('02', 'Enedis');
INSERT INTO "init"."ActeurPCRS17Type" (code, valeur) VALUES ('03', 'SDE');
INSERT INTO "init"."ActeurPCRS17Type" (code, valeur) VALUES ('04', 'SDEER');
INSERT INTO "init"."ActeurPCRS17Type" (code, valeur) VALUES ('05', 'CDA');
INSERT INTO "init"."ActeurPCRS17Type" (code, valeur) VALUES ('06', 'VLR');
INSERT INTO "init"."ActeurPCRS17Type" (code, valeur) VALUES ('07', 'DGFiP');


COMMENT ON TABLE "init"."ActeurPCRS17Type" IS
'Code permettant de décrire l''acteur.';


-- ---------------------------------
-- Classe : CategorieObjetPCRS17Type
-- ---------------------------------

-- Table: CategorieObjetPCRS17Type
--DROP TABLE if exists "init"."CategorieObjetPCRS17Type" cascade;
CREATE TABLE "init"."CategorieObjetPCRS17Type"
(
  "idCategorieObjet" character varying(2) not null,
  "boolClasseAbstraite" character varying(1) not null,
  "nomClasse" character varying(38) unique,
  "nomClasseMere" character varying(38),
  "thematique" character varying(2) NOT NULL REFERENCES "init"."CategorieThematiquePCRSType" ("code"),
  CONSTRAINT "CategorieObjetPCRS17Type_pkey" PRIMARY KEY ("nomClasse")
)
WITH (
  OIDS=FALSE
);

INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('01', 0, 'InitiativePCRS', '', '99');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('02', 0, 'EmpriseDisponibilitePCRS', '', '99');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('03', 0, 'EmpriseEchangePCRS', '', '99');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('04', 0, 'Commune', '', '99');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('05', 0, 'TronconVoirie', '', '99');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('06', 0, 'HabillagePCRS', '', '00');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('07', 0, 'HabillagePointsPCRS', 'HabillagePCRS', '00');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('08', 0, 'HabillageSymbolePCRS', 'HabillagePCRS', '00');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('09', 0, 'HabillageTextePCRS', 'HabillagePCRS', '00');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('10', 0, 'NomVoiriePCRS', 'HabillageTextePCRS', '01');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('11', 0, 'NumeroVoiriePCRS', 'HabillageTextePCRS', '01');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('12', 0, 'HabillageLignesPCRS', 'HabillagePCRS', '00');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('13', 0, 'HabillageEnveloppePCRS', 'HabillagePCRS', '00');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('14', 0, 'PointLevePCRS', '', '01');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('15', 1, 'ObjetVecteurPCRS', '', '00');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('16', 0, 'PointCanevasPCRS', 'ObjetVecteurPCRS', '01');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('17', 0, 'ObjetGeneriquePCRS', 'ObjetVecteurPCRS', '00');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('18', 0, 'QuaiFluvioMaritimePCRS', 'ObjetVecteurPCRS', '07');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('19', 0, 'QuaiRailPCRS', 'ObjetVecteurPCRS', '04');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('20', 0, 'LimiteVoiriePCRS', 'ObjetVecteurPCRS', '03');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('21', 0, 'MarcheEscalierPCRS', 'ObjetVecteurPCRS', '00');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('22', 0, 'FacadePCRS', 'ObjetVecteurPCRS', '02');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('23', 0, 'ProeminenceBatiPCRS', 'ObjetVecteurPCRS', '02');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('24', 0, 'SeuilPCRS', 'ObjetVecteurPCRS', '02');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('25', 0, 'MurPCRS', 'ObjetVecteurPCRS', '05');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('26', 1, 'PilierPCRS', 'ObjetVecteurPCRS', '05');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('27', 0, 'PilierRegulierPCRS', 'PilierPCRS', '05');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('28', 0, 'PilierParticulierPCRS', 'PilierPCRS', '05');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('29', 0, 'RailPCRS', 'ObjetVecteurPCRS', '04');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('30', 0, 'ArbrePCRS', 'ObjetVecteurPCRS', '06');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('31', 0, 'PilePontPCRS', 'ObjetVecteurPCRS', '07');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('32', 1, 'AffleurantPCRS', 'ObjetVecteurPCRS', '10');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('33', 0, 'AffleurantGeometriquePCRS', '', '10');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('34', 0, 'AffleurantEnveloppePCRS', '', '10');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('35', 0, 'AffleurantLignesPCRS', '', '10');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('36', 0, 'AffleurantPointPCRS', '', '10');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('37', 0, 'AffleurantSymbolePCRS', 'AffleurantPCRS', '10');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('38', 0, 'RasterPCRS', '', '11');
INSERT INTO "init"."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('39', 0, 'MasqueOpacitePCRS', 'Habillage', '11');


COMMENT ON TABLE "init"."CategorieObjetPCRS17Type" IS
'Contenu du PCRS : les différentes classe d''objets';




-- ---------------------------------
-- Creation des tables "objets géographiques du PCRS"
-- ---------------------------------


-- ---------------------------------
-- Thématique : Information
-- ---------------------------------


-- ---------------------------------
-- Classe : InitiativePCRS
-- ---------------------------------


--DROP INDEX if exists "init"."InitiativePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists "init"."InitiativePCRS_idInitiative_seq" cascade;
--DROP TABLE if exists "init"."InitiativePCRS" cascade;

CREATE SEQUENCE "init"."InitiativePCRS_idInitiative_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: InitiativePCRS
--DROP TABLE if exists "init"."InitiativePCRS" cascade;
CREATE TABLE "init"."InitiativePCRS"
(
  "idInitiative" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."InitiativePCRS_idInitiative_seq"'::regclass),
  "description" character varying,
  "gestionnaire" character varying NOT NULL,
  --"partenaires" character varying,
  --"geometrie" geometry(MULTIPOLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "InitiativePCRS_pkey" PRIMARY KEY ("idInitiative"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTIPOLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);

-- Index: InitiativePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."InitiativePCRS_geometrie_geomidx" cascade;
CREATE INDEX "InitiativePCRS_geometrie_geomidx"
  ON "init"."InitiativePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE "init"."InitiativePCRS" IS
'Nom de la classe :
InitiativePCRS

Sous-classe de :


Titre :
Initiative du PCRS

Définition :
Une initiative du PCRS constitue une zone dans laquelle différents acteurs se sont
coordonnés pour initier un PCRS. Cette classse pourra permettre d''alimenter
l''observatoire du PCRS (http://cnig.gouv.fr/pcrs/obs_pcrs/?q=carto).

Modélisation :
Surface.

La classe contient :
La zone décrite ne présume pas que les données soient disponibles.

Contraintes :
Classe métadonnée du PCRS';

COMMENT ON COLUMN "init"."InitiativePCRS"."idInitiative" IS
'Identifiant unique des initiatives du PCRS.
L''unicité doit être assurée par le gestionnaire et viser une unicité nationale.
Elle peut être atteinte en préfixant l''identifiant par le code SIREN du producteur.';
COMMENT ON COLUMN "init"."InitiativePCRS"."description" IS
'Information complémentaire liée à l''initiative';
COMMENT ON COLUMN "init"."InitiativePCRS"."gestionnaire" IS
'Nom de l''autorité publique compétente gestionnaire du PCRS';
--COMMENT ON COLUMN "init"."InitiativePCRS"."partenaires" IS
--'Nom des partenaires dans l''intiative';
COMMENT ON COLUMN "init"."InitiativePCRS"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';


-- ---------------------------------
-- Classe : EmpriseDisponibilitePCRS
-- ---------------------------------


--DROP INDEX if exists "init"."EmpriseDisponibilitePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists "init"."EmpriseDisponibilitePCRS_idEmpriseDisponibilite_seq" cascade;
--DROP TABLE if exists "init"."EmpriseDisponibilitePCRS" cascade;

CREATE SEQUENCE "init"."EmpriseDisponibilitePCRS_idEmpriseDisponibilite_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: EmpriseDisponibilitePCRS
--DROP TABLE if exists "init"."EmpriseDisponibilitePCRS" cascade;
CREATE TABLE "init"."EmpriseDisponibilitePCRS"
(
  "idEmpriseDisponibilite" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."EmpriseDisponibilitePCRS_idEmpriseDisponibilite_seq"'::regclass),
  "dateActualite" date NOT NULL,
  "initiative" character varying REFERENCES "init"."InitiativePCRS" ("idInitiative"),
  "calendrier" character varying REFERENCES "init"."CalendrierPCRS17Type" ("code"),
  --"geometrie" geometry(MULTIPOLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  --CONSTRAINT "EmpriseDisponibilitePCRS_pkey" PRIMARY KEY ("idEmpriseDisponibilite"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTIPOLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);

-- Index: EmpriseDisponibilitePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."EmpriseDisponibilitePCRS_geometrie_geomidx" cascade;
CREATE INDEX "EmpriseDisponibilitePCRS_geometrie_geomidx"
  ON "init"."EmpriseDisponibilitePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE "init"."EmpriseDisponibilitePCRS" IS
'Nom de la classe :
EmpriseDisponibilitePCRS

Sous-classe de :


Titre :
Emprise de disponibilité du PCRS

Définition :
Une emprise de disponibilité du PCRS constitue un élément surfacique d''indication des
zones disponibles à une date donnée. Cette information permet de savoir si un plan
PCRS est disponible sur une zone donnée. Elle vient compléter la classe InitiativePCRS
qui indique sur quelle zone un PCRS est prévu mais pas nécessairement disponible.

Modélisation :
Surface.

La classe contient :
Les emprises de disponibilité du PCRS peuvent correspondre à un ensemble de tronçons
de voirie, à un ensemble de commune ou un ensemble de casés liés à un carroyage du territoire.

Contraintes :
Classe métadonnée du PCRS';

COMMENT ON COLUMN "init"."EmpriseDisponibilitePCRS"."idEmpriseDisponibilite" IS
'Identifiant unique des emprises de disponibilité du PCRS.
L''unicité doit être assurée par le gestionnaire et viser une unicité nationale.
Elle peut être atteinte en préfixant l''identifiant par le code SIREN du producteur.';
COMMENT ON COLUMN "init"."EmpriseDisponibilitePCRS"."dateActualite" IS
'Date à laquelle la disponibilité est valide';
COMMENT ON COLUMN "init"."EmpriseDisponibilitePCRS"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';


-- ---------------------------------
-- Thématique : Publication
-- ---------------------------------


-- ---------------------------------
-- Classe : EmpriseEchangePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."EmpriseEchangePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists "init"."EmpriseEchangePCRS_idEmpriseEchange_seq" cascade;
--DROP TABLE if exists "init"."EmpriseEchangePCRS" cascade;

CREATE SEQUENCE "init"."EmpriseEchangePCRS_idEmpriseEchange_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: EmpriseEchangePCRS
--DROP TABLE if exists "init"."EmpriseEchangePCRS" cascade;
CREATE TABLE "init"."EmpriseEchangePCRS"
(
  "idEmpriseEchange" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."EmpriseEchangePCRS_idEmpriseEchange_seq"'::regclass),
  "complement" character varying,
  "datePublication" date NOT NULL,
  "gestionnaire" character varying NOT NULL,
  "type" character varying REFERENCES "init"."NatureEmprisePCRS17Type" ("code"),
  --"geometrie" geometry(MULTIPOLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  --CONSTRAINT "EmpriseEchangePCRS_pkey" PRIMARY KEY ("idEmpriseEchange"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTIPOLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);

-- Index: EmpriseEchangePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."EmpriseEchangePCRS_geometrie_geomidx" cascade;
CREATE INDEX "EmpriseEchangePCRS_geometrie_geomidx"
  ON "init"."EmpriseEchangePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE "init"."EmpriseEchangePCRS" IS
'Nom de la classe :
EmpriseEchangePCRS

Titre :
Emprise d''échange du PCRS

Définition :
Une emprise d''échange du PCRS constitue un élément surfacique de délimitation de l''espace public,
et lorsque disponible, de l''espace privé.
Elle est localisée sur une commune, et peut-être qualifiée par les tronçons de voirie concernés.
Une emprise d''échange du PCRS permet d''accéder à l''ensemble des éléments constituant le
PCRS, et sert en particulier à repérer les objets du PCRS, en général associés à une
thématique et porteurs de précision, ainsi que les affleurants de réseaux de tous types.
Parmi les éléments d''habillage d''une emprise d''échange du PCRS,
on distinguera en particulier les noms ainsi que les numéros de voirie
devant obligatoirement figurer dans un PCRS.
Une  emprise  d''échange  du  PCRS  contient  également des éléments de calendrier
précisant la date de publication des données concernées.
Le modèle de données prévoit la gestion de la composante image :
ainsi, l''emprise  d''échange du PCRS peut également être décrite par une ou plusieurs
images haute ou très haute résolution éventuellement complétées d''objets vecteurs.

Modélisation :
Surface
La collectivité gestionnaire du PCRS a toute latitude quant à la définition géométrique
des emprises du PCRS.
Il est toutefois conseillé de publier le PCRS à au moins deux niveaux complémentaires
d''emprises, à savoir
- un niveau continu (ou régulier, fixe)
  et associé à un découpage régulier du territoire (comme un carroyage)
- et un niveau discontinu (ou irrégulier, variable)
  correspondant à des découpages à base d''entités (tronçons, voire communes...).

La classe contient :
Les emprises d''échanges du PCRS peuvent suivre des logiques différentes :
- les emprises de type couloir, c''est à dire associées à un axe de voirie et définies
  d''une part par les limites apparentes des propriétés privées étendues
  perpendiculairement à l''axe de voirie d''environ 15 mètres (à adapter localement),
  et d''autre part en incluant les surfaces tampon associées aux
  amorces de voies aux intersections et sur une longueur d''environ 10 mètres (à adapter localement).
- par extension des emprises de type couloir, il est également possible d''inclure dans
  cette définition géométrique toute surface de l''espace public ou privé bornée par des
  limites apparentes de propriétés privées et n''incluant pas d''axe de voirie.
- les emprises de type opération, c''est à dire associées à une opération particulière
  impactant le PCRS, par exemple la pose de rails de tramway. Ce type d''emprise ne
  contient aucune information de gestion quant à l''opération concernée,
  mais permet par exemple de regrouper des emprises élémentaires de type couloir
  disposant de caractéristiques communes
- les emprises de type casé, liées à un carroyage particulier
- les emprises de type limite administrative, permettant d''accéder à l''intégralité
  d''un PCRS sur une limite administrative donnée, et en particulier par commune
- les emprises de type raster, éventuellement liées à un carroyage particulier,
  et permettant de référencer une image à haute ou très haute résolution

Contraintes :
Classe essentielle du PCRS, accompagnant les métadonnées de publication du PCRS';

COMMENT ON COLUMN "init"."EmpriseEchangePCRS"."idEmpriseEchange" IS
'Identifiant unique dans le jeu de données des emprises d''échange du PCRS.
L''unicité doit être assurée par le gestionnaire et viser une unicité nationale.
Elle peut être atteinte en préfixant l identifiant par le code SIREN du producteur.';
COMMENT ON COLUMN "init"."EmpriseEchangePCRS"."complement" IS
'Information complémentaire liée au type d''emprise de publication du PCRS,
gérée par le gestionnaire du PCRS et potentiellement utile à tout utilisateur du PCRS
Valeurs possibles :
Selon le type d''emprise de publication, par exemple :
- un toponyme pour une emprise de type couloir
- le nom de l''opération pour une emprise concernant une opération donnée
- la référence du carreau
  (si elle n''est pas redondante avec l''identifiant de l''emprise),
  ou le nom du carroyage pour une emprise de type régulière
- le nom ou le type de la limite administrative pour une emprise de type administrative';
COMMENT ON COLUMN "init"."EmpriseEchangePCRS"."datePublication" IS
'Date de mise à disposition de l''emprise du PCRS';
COMMENT ON COLUMN "init"."EmpriseEchangePCRS"."gestionnaire" IS
'Nom de la collectivité gestionnaire du PCRS';
COMMENT ON COLUMN "init"."EmpriseEchangePCRS"."type" IS
'Type d''emprise du PCRS
Valeurs possibles :
Par exemple :
Couloir, Operation, Carreau, LimiteAdministrative';
COMMENT ON COLUMN "init"."EmpriseEchangePCRS"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';


-- ---------------------------------
-- Classe : Commune
-- ---------------------------------

--DROP INDEX if exists "init"."Commune_geometrie_geomidx" cascade;
--DROP TABLE if exists "init"."Commune" cascade;

-- Table: Commune
--DROP TABLE if exists "init"."Commune" cascade;
CREATE TABLE "init"."Commune"
(
  "codeINSEE" character varying UNIQUE NOT NULL,
  --"geometrie" geometry(MULTIPOLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "nom" character varying,
  "reference" character varying NOT NULL,
  CONSTRAINT "Commune_pkey" PRIMARY KEY ("codeINSEE"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTIPOLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);

-- Index: Commune_geometrie_geomidx
--DROP INDEX if exists "init"."Commune_geometrie_geomidx" cascade;
CREATE INDEX "Commune_geometrie_geomidx"
  ON "init"."Commune"
  USING gist
  (geometrie);


COMMENT ON TABLE "init"."Commune" IS
'Nom de la classe :
Commune

Titre :
Lien vers un objet ''commune''

Définition :
Cette classe permet de référencer une commune présente dans un référentiel externe.

Modélisation :
Multi Polygone (GM_MultiPolygon)
Les communes sont modélisées par un ensemble de polygones. La géométrie est
indicative et la précision géométrique accordée importe peu.

Critères de sélection :
Seuls sont considérés les objets ''commune'' d''un jeu de données de référence, défini par
le gestionnaire du PCRS.';

COMMENT ON COLUMN "init"."Commune"."codeINSEE" IS
'Code INSEE de la commune.';
COMMENT ON COLUMN "init"."Commune"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';
COMMENT ON COLUMN "init"."Commune"."nom" IS
'Nom de la commune.';
COMMENT ON COLUMN "init"."Commune"."reference" IS
'Référence vers une base de données des communes.';


-- ---------------------------------
-- Classe : TronconVoirie
-- ---------------------------------

-- Sequence: TronconVoirie_reference_seq
--DROP INDEX if exists "init"."TronconVoirie_geometrie_geomidx" cascade;
DROP SEQUENCE if exists "init"."TronconVoirie_reference_seq" cascade;
--DROP TABLE if exists "init"."TronconVoirie" cascade;

CREATE SEQUENCE "init"."TronconVoirie_reference_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: TronconVoirie
--DROP TABLE if exists "init"."TronconVoirie" cascade;
CREATE TABLE "init"."TronconVoirie"
(
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "propriete" character varying(2) REFERENCES "init"."ProprieteEspaceType" (code),
  "reference" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."TronconVoirie_reference_seq"'::regclass),
  "source" character varying NOT NULL,
  CONSTRAINT "TronconVoirie_pkey" PRIMARY KEY ("reference"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);

-- Index: TronconVoirie_geometrie_geomidx
--DROP INDEX if exists "init"."TronconVoirie_geometrie_geomidx" cascade;
CREATE INDEX "TronconVoirie_geometrie_geomidx"
  ON "init"."TronconVoirie"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."TronconVoirie" IS
'Nom de la classe :
TronconVoirie

Titre :
Tronçon de Voie

Définition :
Le tronçon de voirie du PCRS est un segment d''axe de voie entre deux intersections (qui
ne sont pas modélisées dans le PCRS par ailleurs).
Il sert essentiellement à identifier en premier lieu les emprises de publication du PCRS
qui le concernent.
Les noms de voirie, qui nécessitent un positionnement spécifique en dehors de l''espace
où figurent les réseaux, et en particulier en zone urbaine dense, sont modélisés par
ailleurs en tant que NomVoiriePCRS et ne sont donc pas gérés comme des données
attributaires des tronçons de voirie du PCRS.
De même, les numéros d''adresse, modélisés par ailleurs en tant que NumeroVoiriePCRS
ne sont pas non plus liés aux tronçons de voirie du PCRS

Modélisation :
Polyligne
Le tronçon de voirie s''appuie sur les tronçons du filaire des voies entretenu par la
collectivité gestionnaire du PCRS, et pouvant s''appuyer sur des référentiels comme la
BDUni ou la BD TOPO

Contraintes :
Classe accompagnant les métadonnées de publication du PCRS';

COMMENT ON COLUMN "init"."TronconVoirie"."geometrie" IS
'Géométrie de type courbe.';
COMMENT ON COLUMN "init"."TronconVoirie"."propriete" IS
'Distinction d''appartenance d''un troncon de voirie à l''espace public ou à l''espace privé.';
COMMENT ON COLUMN "init"."TronconVoirie"."reference" IS
'Identifiant unique du tronçon dans le référentiel source utilisé.';
COMMENT ON COLUMN "init"."TronconVoirie"."source" IS
'Acronyme du référentiel utilisé.';


-- ---------------------------------
-- Classe : HabillagePCRS
-- ---------------------------------

-- Sequence: HabillagePCRS_idHabillage_seq
--DROP INDEX if exists "init"."HabillagePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists "init"."HabillagePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists "init"."HabillagePCRS" cascade;

CREATE SEQUENCE "init"."HabillagePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: HabillagePCRS
--DROP TABLE if exists "init"."HabillagePCRS" cascade;
CREATE TABLE "init"."HabillagePCRS"
(
  --geometrie geometry(Geometry,3946) NOT NULL,
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "init"."CategorieThematiquePCRSType" ("code"),
  CONSTRAINT "HabillagePCRS_pkey" PRIMARY KEY ("idHabillage")
)
WITH (
  OIDS=FALSE
);

-- Index: HabillagePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."HabillagePCRS_geometrie_geomidx" cascade;
--CREATE INDEX "HabillagePCRS_geometrie_geomidx"
--  ON "init"."HabillagePCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE "init"."HabillagePCRS" IS
'Nom de la classe :
HabillagePCRS

Titre :
Eléments d''habillage du PCRS

Définition :
Classe abstraite permettant de décrire tous les éléments d''habillage utiles à la
compréhension du PCRS via les classes spécialisées
 - HabillagePointsPCRS,
 - HabillageLignesPCRS,
 - HabillageSymbolePCRS,
 - HabillageTextePCRS

Modélisation :
Point, Polyligne, Surface
Élément d''habillage (de type point, ligne ou surface ou support de texte) sans précision
de géoréférencement associée

La classe contient :
- les symboles
- les toponymes,
- les coordonnées planimétriques,
- les altimétries,
- les fossés, talus,
- les surfaces hydrographiques,
...

Contraintes :
Contraintes de positionnement en dehors de la voirie, en particulier en zone dense ou
très dense';

COMMENT ON COLUMN "init"."HabillagePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.
Valeurs possibles :
Selon la collectivité gestionnaire du PCRS,
et le cas échéant lié à celui du référentiel dont peut-être issue la donnée.';
COMMENT ON COLUMN "init"."HabillagePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';


-- ---------------------------------
-- Classe : HabillagePointsPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."HabillagePointsPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."HabillagePointsPCRS_idHabillage_seq" cascade;
--DROP TABLE if exists "init"."HabillagePointsPCRS" cascade;


--CREATE SEQUENCE "init"."HabillagePointsPCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillagePointsPCRS
--DROP TABLE if exists "init"."HabillagePointsPCRS" cascade;
CREATE TABLE "init"."HabillagePointsPCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "init"."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(MULTIPOINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "HabillagePointsPCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTIPOINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillagePointsPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."HabillagePointsPCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillagePointsPCRS_geometrie_geomidx"
  ON "init"."HabillagePointsPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."HabillagePointsPCRS" IS
'Nom de la classe :
HabillagePointsPCRS

Sous-classe de :
HabillagePCRS

Titre :
Points d''habillage du PCRS

Définition :
Classe spécialisée de la classe abstraite <HabillagePCRS> permettant de décrire tous
les éléments d''habillage de type points (éventuellement multiples) utiles à la
compréhension du PCRS.
Pour les points accompagnés d''un symbole, une classe HabillageSymbolePCRS est prévue.

La Classe contient :
- les éléments de mobilier urbain
- les bollards.

Modélisation :
Multipoints';

COMMENT ON COLUMN "init"."HabillagePointsPCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "init"."HabillagePointsPCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "init"."HabillagePointsPCRS"."geometrie" IS
'Géométrie de type multipoint';


-- ---------------------------------
-- Classe : HabillageSymbolePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."HabillageSymbolePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."HabillageSymbolePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists "init"."HabillageSymbolePCRS" cascade;

--CREATE SEQUENCE "init"."HabillageSymbolePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageSymbolePCRS
--DROP TABLE if exists "init"."HabillageSymbolePCRS" cascade;
CREATE TABLE "init"."HabillageSymbolePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "init"."CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "largeur_mm" decimal NOT NULL,
  "longueur_mm" decimal NOT NULL,
  "reference" character varying NOT NULL,
  CONSTRAINT "HabillageSymbolePCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: SymboleHabillagePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."SymboleHabillagePCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageSymbolePCRS_geometrie_geomidx"
  ON "init"."HabillageSymbolePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."HabillageSymbolePCRS" IS
'Nom de la classe :
HabillageSymbolePCRS

Sous-classe de :
HabillagePCRS

Titre :
Symbole d''habillage du PCRS

Définition :
Classe spécialisée de la classe abstraite HabillagePCRS permettant de décrire tous les
éléments d''habillage de type symbole utiles à la compréhension du PCRS

Modélisation :
Point (propriété de la classe généralisée HabillagePCRS)
Point de référence au centre du symbole, dont on précisera la référence, les dimensions
inscrites dans un rectangle (longueur, largeur), et l''orientation spécifique.

Contraintes :
Contraintes de positionnement en dehors de la voirie, en particulier en zone dense ou
très dense';

COMMENT ON COLUMN "init"."HabillageSymbolePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "init"."HabillageSymbolePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "init"."HabillageSymbolePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN "init"."HabillageSymbolePCRS"."geometrie" IS
'Géométrie de type ponctuel';
COMMENT ON COLUMN "init"."HabillageSymbolePCRS"."largeur_mm" IS
'Utilisé uniquement pour la mise à l''échelle Y du symbole en habillage';
COMMENT ON COLUMN "init"."HabillageSymbolePCRS"."longueur_mm" IS
'Utilisé uniquement pour la mise à l''échelle X du symbole en habillage';
COMMENT ON COLUMN "init"."HabillageSymbolePCRS"."reference" IS
'Désignation du symbole à utiliser pour la représentation de l''habillage sous forme de symbole.';


-- ---------------------------------
-- Classe : HabillageTextePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."HabillageTextePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."HabillageTextePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists "init"."HabillageTextePCRS" cascade;

--CREATE SEQUENCE "init"."HabillageTextePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageTextePCRS
--DROP TABLE if exists "init"."HabillageTextePCRS" cascade;
CREATE TABLE "init"."HabillageTextePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "init"."CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES "init"."TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  CONSTRAINT "HabillageTextePCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillageTextePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."HabillageTextePCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageTextePCRS_geometrie_geomidx"
  ON "init"."HabillageTextePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."HabillageTextePCRS" IS
'Nom de la classe :
HabillageTextePCRS

Sous-classe de :
HabillagePCRS

Titre :
Texte d''habillage du PCRS

Définition :
Classe spécialisée de la classe abstraite HabillagePCRS permettant de décrire tous les
éléments d''habillage de type texte utiles à la compréhension du PCRS

Modélisation :
Point (propriété de la classe généralisée HabillagePCRS)
Libellé de type texte positionné de façon ponctuelle, avec possibilité de spécifier une
orientation spécifique.

La classe contient :
- les toponymes,
- les coordonnées planimétriques,
- les altimétries,
...

Contraintes :
Contraintes de positionnement en dehors de la voirie, en particulier en zone dense ou
très dense';

COMMENT ON COLUMN "init"."HabillageTextePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "init"."HabillageTextePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "init"."HabillageTextePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN "init"."HabillageTextePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "init"."HabillageTextePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN "init"."HabillageTextePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS
Valeur textuelle. Exemple : 123 m';
COMMENT ON COLUMN "init"."HabillageTextePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';


-- ---------------------------------
-- Classe : NomVoiriePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."NomVoiriePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists "init"."NomVoiriePCRS_idNomVoirie_seq" cascade;
--DROP TABLE if exists "init"."NomVoiriePCRS" cascade;

CREATE SEQUENCE "init"."NomVoiriePCRS_idNomVoirie_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: NomVoiriePCRS
--DROP TABLE if exists "init"."NomVoiriePCRS" cascade;
CREATE TABLE "init"."NomVoiriePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "init"."CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES "init"."TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  "idNomVoirie" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."NomVoiriePCRS_idNomVoirie_seq"'::regclass),
  "positionnement" character varying(2) REFERENCES "init"."CategoriePlacementPCRSType" (code),
  CONSTRAINT "NomVoiriePCRS_pkey" PRIMARY KEY ("idHabillage"),
  --CONSTRAINT "NomVoiriePCRS_pkey" PRIMARY KEY ("idNomVoirie")
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."HabillageTextePCRS")
WITH (
  OIDS=FALSE
);

-- Index: NomVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."NomVoiriePCRS_geometrie_geomidx" cascade;
CREATE INDEX "NomVoiriePCRS_geometrie_geomidx"
  ON "init"."NomVoiriePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."NomVoiriePCRS" IS
'Nom de la classe :
NomVoiriePCRS

Sous-classe de :
HabillageTextePCRS

Titre :
Nom de voirie, Nom de voie

Définition :
Noms de voirie associés aux voies modélisées par tronçons. Ils sont liés à un référentiel
donné, et servent de données d''habillage du PCRS.
Les noms de voirie du PCRS doivent si possible être placés hors espace public (sur les
parcelles privées) de façon à ne pas empiéter en zone dense ou très dense sur les
espaces liés à la représentation des réseaux (non modélisés dans le PCRS) de façon à
permettre un affichage ne se superposant pas (pour des plans au 1/200ème) aux
numéros de voirie du PCRS.

Modélisation :
Point (propriété de la classe généralisée HabillageTextePCRS)
Libellé de type texte positionnant de façon ponctuelle le nom de voirie avec une
orientation liée au tronçon de voirie le plus proche de la voie associée à l''adresse.

Contraintes :
Contraintes de positionnement en dehors de l''espace public de la voirie, en particulier en
zone dense ou très dense, à préciser localement';

COMMENT ON COLUMN "init"."NomVoiriePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "init"."NomVoiriePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "init"."NomVoiriePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN "init"."NomVoiriePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "init"."NomVoiriePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN "init"."NomVoiriePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS';
COMMENT ON COLUMN "init"."NomVoiriePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';
COMMENT ON COLUMN "init"."NomVoiriePCRS"."idNomVoirie" IS
'Identifiant unique dans le jeu de données des noms de voirie.
Valeurs possibles :
Selon la collectivité gestionnaire du PCRS,
et si possible identique à celui du référentiel dont est issu la donnée.';
COMMENT ON COLUMN "init"."NomVoiriePCRS"."positionnement" IS
'Indication quant au positionnement de l''élément d''habillage par rapport à la voirie.';


-- ---------------------------------
-- Classe : NumeroVoiriePCRS
-- ---------------------------------


--DROP INDEX if exists "init"."NumeroVoiriePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists "init"."NumeroVoiriePCRS_idNumeroVoirie_seq" cascade;
--DROP TABLE if exists "init"."NumeroVoiriePCRS" cascade;

CREATE SEQUENCE "init"."NumeroVoiriePCRS_idNumeroVoirie_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: NumeroVoiriePCRS
--DROP TABLE if exists "init"."NumeroVoiriePCRS" cascade;
CREATE TABLE "init"."NumeroVoiriePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "init"."CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES "init"."TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  "idNumeroVoirie" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."NumeroVoiriePCRS_idNumeroVoirie_seq"'::regclass),
  "positionnement" character varying(2) REFERENCES "init"."CategoriePlacementPCRSType" (code),
  CONSTRAINT "NumeroVoiriePCRS_pkey" PRIMARY KEY ("idHabillage"),
  --CONSTRAINT "NumeroVoiriePCRS_pkey" PRIMARY KEY ("idHabillage")
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."HabillageTextePCRS")
WITH (
  OIDS=FALSE
);

-- Index: NumeroVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."NumeroVoiriePCRS_geometrie_geomidx" cascade;
CREATE INDEX "NumeroVoiriePCRS_geometrie_geomidx"
  ON "init"."NumeroVoiriePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE "init"."NumeroVoiriePCRS" IS
'Nom de la classe :
NumeroVoiriePCRS

Sous-classe de :
HabillageTextePCRS

Titre :
Numéro d''adresse

Définition :
Numéros de voirie de type adresse, liés à un référentiel donné, servant de données
d''habillage du PCRS.
Les numéros de voirie du PCRS doivent être positionnés de façon à permettre un
affichage à l''intérieur des parcelles (non modélisées dans le PCRS), et ne se
superposant pas (pour des plans au 1/200ème) aux noms de voirie du PCRS, de façon à
ne pas empiéter en zone dense ou très dense sur les espaces liés à la représentation
des réseaux (non modélisés dans le PCRS).

Modélisation :
Point (propriété de la classe généralisée HabillageTextePCRS)
Libellé de type texte positionnant de façon ponctuelle le numéro d''adresse.

Contraintes :
Contraintes de positionnement en dehors de l''espace public de la voirie, en particulier en
zone dense ou très dense';

COMMENT ON COLUMN "init"."NumeroVoiriePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "init"."NumeroVoiriePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "init"."NumeroVoiriePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN "init"."NumeroVoiriePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "init"."NumeroVoiriePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN "init"."NumeroVoiriePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS';
COMMENT ON COLUMN "init"."NumeroVoiriePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';
COMMENT ON COLUMN "init"."NumeroVoiriePCRS"."idNumeroVoirie" IS
'Identifiant unique dans le jeu de données des numéros de voirie.
Selon la collectivité gestionnaire du PCRS,
et si possible identique à celui du référentiel dont est issu la donnée.';
COMMENT ON COLUMN "init"."NumeroVoiriePCRS"."positionnement" IS
'Indication quant au positionnement de l''élément d''habillage par rapport à la voirie.';


-- ---------------------------------
-- Classe : HabillageLignesPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."HabillageLignesPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."HabillageLignesPCRS_idHabillage_seq" cascade;
--DROP TABLE if exists "init"."HabillageLignesPCRS" cascade;


--CREATE SEQUENCE "init"."HabillageLignesPCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageLignesPCRS
--DROP TABLE if exists "init"."HabillageLignesPCRS" cascade;
CREATE TABLE "init"."HabillageLignesPCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "init"."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(MULTILINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "HabillageLignesPCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTILINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillageLignesPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."HabillageLignesPCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageLignesPCRS_geometrie_geomidx"
  ON "init"."HabillageLignesPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."HabillageLignesPCRS" IS
'Nom de la classe :
HabillageLignesPCRS

Sous-classe de :
HabillagePCRS

Titre :
Lignes d''habillage

Définition :
Classe spécialisée de la classe abstraite <HabillagePCRS> permettant de décrire tous
les éléments d''habillage de type lignes utiles à la compréhension du PCRS

Modélisation :
Multilignes

La classe contient :
- les orographies,
- les dessins d''affleurants,
- les changements de revêtement non représentés comme des objets du PCRS
- les fondations
- les limites de haies, d''espace vert, etc.
- largeur des ouvertures
...';

COMMENT ON COLUMN "init"."HabillageLignesPCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "init"."HabillageLignesPCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "init"."HabillageLignesPCRS"."geometrie" IS
'Géométrie de type multiligne';


-- ---------------------------------
-- Classe : HabillageEnveloppePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."HabillageEnveloppePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."HabillageEnveloppePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists "init"."HabillageEnveloppePCRS" cascade;


--CREATE SEQUENCE "init"."HabillageEnveloppePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageEnveloppePCRS
--DROP TABLE if exists "init"."HabillageEnveloppePCRS" cascade;
CREATE TABLE "init"."HabillageEnveloppePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "init"."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "HabillageEnveloppePCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillageEnveloppePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."HabillageEnveloppePCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageEnveloppePCRS_geometrie_geomidx"
  ON "init"."HabillageEnveloppePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."HabillageEnveloppePCRS" IS
'Nom de la classe :
HabillageEnveloppePCRS

Sous-classe de :
HabillagePCRS

Titre :
Enveloppe d''habillage

Définition :
Classe spécialisée de la classe abstraite <HabillagePCRS> permettant de décrire tous
les éléments d''habillage de type surfacique utiles à la compréhension du PCRS

Modélisation :
Polygones

La classe contient :
- les mobiliers urbains,
...';

COMMENT ON COLUMN "init"."HabillageEnveloppePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "init"."HabillageEnveloppePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "init"."HabillageEnveloppePCRS"."geometrie" IS
'Géométrie de type surfacique';


-- ---------------------------------
-- Classe : PointLevePCRS
-- ---------------------------------


--DROP INDEX if exists "init"."PointLevePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists "init"."PointLevePCRS_numeroPoint_seq" cascade;
--DROP TABLE if exists "init"."PointLevePCRS" cascade;

CREATE SEQUENCE "init"."PointLevePCRS_numeroPoint_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: PointLevePCRS
--DROP TABLE if exists "init"."PointLevePCRS" cascade;
CREATE TABLE "init"."PointLevePCRS"
(
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "horodatage" date,
  "numeroPoint"  character varying UNIQUE NOT NULL DEFAULT nextval('"init"."PointLevePCRS_numeroPoint_seq"'::regclass),
  "precisionXY" integer NOT NULL,
  "precisionZ" integer,
  "producteur" character varying,
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);

-- Index: PointLevePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."PointLevePCRS_geometrie_geomidx" cascade;
CREATE INDEX "PointLevePCRS_geometrie_geomidx"
  ON "init"."PointLevePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."PointLevePCRS" IS
'Nom de la classe :
PointLevePCRS

Titre :
Point levé du PCRS

Définition :
Point géoréférencé en planimétrie, ou planimétrie et altimétrie du PCRS

Modélisation :
Point
La modélisation géométrique par point(s) est propre à chacun des objets du PCRS, elle
sera donc décrite dans la partie du catalogue propre à chacun des objets dérivés de la
classe ObjetVecteurPCRS (paragraphes B.3.17 à B.3.31)

La classe contient :
De façon non limitative, tout point situé le long ou sur le pourtour d''un objet du PCRS
peut être décrit par cette classe d''objet, par exemple :
- Point le long d''un fil d''eau
- Point d''une limite apparente
- Point d''amorce de bâti
- Point de seuil
- Point de rupture de pente
- Point le long d''un rail
- Point associé à un dénivelé d''escalier ou de marche d''escalier
- Par extension, tout point utile issu d''un lever Mobile Mapping (nuages de points LIDAR, vues
immersives...).

Contraintes :
Un point levé doit être topologiquement inclus dans l''emprise du levé topographique.
Les points peu précis n''ont pas à figurer dans les données échangées du PCRS.

Critères de sélection :
Tout point servant à qualifier un objet du PCRS en tant que support pour une cotation des
réseaux en classe A (planimétrie et altimétrie) ou en classe AP (planimétrie seulement)
au sens DT-DICT.';

COMMENT ON COLUMN "init"."PointLevePCRS"."geometrie" IS
'Géométrie de type ponctuel';
COMMENT ON COLUMN "init"."PointLevePCRS"."horodatage" IS
'Horodatage du point au moment du levé topographique';
COMMENT ON COLUMN "init"."PointLevePCRS"."numeroPoint" IS
'Numéro attribué au point levé lors du levé topographique ou de l''integration
au référentiel selon une ou plusieurs
méthodologies à préciser si possible dans les métadonnées.
Valeurs possibles :
Un ou plusiseurs caractères alpha non accentués préfixant un nombre
à valeurs dans une série numérique croissante avec possibilités de
sauts / valeurs manquantes dans la suite.';
COMMENT ON COLUMN "init"."PointLevePCRS"."precisionXY" IS
'Précision planimétrique exprimée en cm';
COMMENT ON COLUMN "init"."PointLevePCRS"."precisionZ" IS
'Précision altimétrique exprimée en cm';
COMMENT ON COLUMN "init"."PointLevePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';


-- ---------------------------------
-- Classe : ObjetVecteurPCRS
-- ---------------------------------

-- Sequence: ObjetVecteurPCRS_idObjet_seq
--DROP INDEX if exists "init"."ObjetVecteurPCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists "init"."ObjetVecteurPCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."ObjetVecteurPCRS" cascade;

CREATE SEQUENCE "init"."ObjetVecteurPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: ObjetVecteurPCRS
--DROP TABLE if exists "init"."ObjetVecteurPCRS" cascade;
CREATE TABLE "init"."ObjetVecteurPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  CONSTRAINT "ObjetVecteurPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: ObjetVecteurPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."ObjetVecteurPCRS_geometrie_geomidx" cascade;
--CREATE INDEX "ObjetVecteurPCRS_geometrie_geomidx"
--  ON "init"."ObjetVecteurPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE "init"."ObjetVecteurPCRS" IS
'Nom de la classe :
ObjetVecteurPCRS

Titre :
Objet vecteur du PCRS

Définition :
Classe abstraite permettant de décrire tous les objets levés du PCRS autres que les
primitives de type point levé. Elle sert principalement à définir les caractéristiques,
attributs et relations communs à tous.
Seul le géoréférencement précis (centimétrique) des objets du PCRS est à prendre en
compte dans cette modélisation conceptuelle : tout autre usage, et en particulier métier
ne fait pas partie du périmètre des objets du PCRS

Modélisation :
Point(s) ou Ligne polygonale, s''appuyant sur des points levés
La modélisation géométrique est propre à chacun des objets du PCRS, elle sera donc
décrite dans la partie suivante du catalogue propre à chacun des objets dérivés de la
classe ObjetVecteurPCRS (paragraphes B.3.5 à B.3.18)
Les objets linéaires en courbe peuvent résulter de primitives complexes (comme par
exemple les arcs ou les splines). Attention cependant à bien gérer les échanges de
données avec le DAO dont les objets sont en général issus. Attention également à bien
assurer en relation avec les objets du PCRS une densité de points levés suffisante pour
garantir les objectifs de précisions planimétrique et altimétrique d''ordre centimétrique du
PCRS : en particulier, on s''attachera à toute situation de rupture de pente de faire
correspondre un point levé topographique, sur lequel s''appuiera obligatoirement la
définition géométrique de l''objet du PCRS.
On s''attachera également sur l''emprise du levé topographique à garantir une continuité
optimale des objets linéaires (en privilégiant ainsi la longueur totale de l''objet), sans pour
autant se soucier d''une modélisation topologique des objets : chacun des segments peut
s''appuyer sur un point levé topographique, mais les relations topologiques entre nœuds
et segments n''ont pas à être décrites

La classe contient :
Les objets vecteur du PCRS sont regroupés par thématiques :
le Bâti
la Voirie
le Ferroviaire
les Clôtures
le Végétal
les ouvrages d''art
les affleurants

Critères de sélection :
Selon la nomenclature des objets vecteur du PCRS';

COMMENT ON COLUMN "init"."ObjetVecteurPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."ObjetVecteurPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."ObjetVecteurPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."ObjetVecteurPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."ObjetVecteurPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."ObjetVecteurPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."ObjetVecteurPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';


-- ---------------------------------
-- Classe : PointCanevasPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."PointCanevasPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."PointCanevasPCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."PointCanevasPCRS" cascade;

--CREATE SEQUENCE "init"."PointCanevasPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PointCanevasPCRS
--DROP TABLE if exists "init"."PointCanevasPCRS" cascade;
CREATE TABLE "init"."PointCanevasPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "canevas" character varying,
  "dateCreation" date,
  "fiche" character varying,
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "immatriculation" character varying,
  "precisionXY" integer,
  "precisionZ" integer,
  CONSTRAINT "PointCanevasPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);

-- Index: PointCanevasPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."PointCanevasPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PointCanevasPCRS_geometrie_geomidx"
  ON "init"."PointCanevasPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."PointCanevasPCRS" IS
'Nom de la classe :
PointCanevasPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Points de canevas topographique

Définition :
Un canevas topographique est constitué d''un ensemble de points matérialisés sur le
terrain, repérés en coordonnées XY et Z dans les référentiels géographiques
planimétriques et altimétriques en vigueur, facilitant ainsi la production de séries de
données géographiques cohérentes et homogènes lors des levés topographiques
réalisés par les géomètres. Ils disposent d''une immatriculation spécifique au canevas
utilisé et sont en général documentés par une fiche signalétique accessible au public

Modélisation :
Point
Lorsque l''altimétrie du point de canevas est disponible, il est obligatoire de la fournir sous
forme de coordonnée Z

La classe contient :
Tout point précédemment déterminé et matérialisé sur le terrain et répondant à la
précision attendue.

Contraintes :
La modélisation conceptuelle des points de canevas est uniquement topographique, et
ne se substitue pas à la logique de gestion de ceux ci et pour laquelle un des principaux
cas d''utilisation correspond à l''information du public, avec adresse de localisation,
photographie, URL, etc... Les gestionnaires des différents canevas entretiennent pour
cela d''autres séries de données pour lesquelles l''immatriculation d''un point de canevas
associée au type de canevas concerné permettent le cas échéant de mettre en relation
les données du PCRS avec les données sources d''immatriculation et de gestion des
points de canevas.

Critères de sélection :
Les points de canevas dont la précision ne serait pas au moins égale à celle attendue
lors du levé topographique des objets du PCRS sont exclus de cette classe d''objets';

COMMENT ON COLUMN "init"."PointCanevasPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."canevas" IS
'Type de canevas auquel appartient le point considéré';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."dateCreation" IS
'Date de création ou de mise à jour des données du point de canevas';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."fiche" IS
'Addresse de type URL susceptible de fournir des informations supplémentaires,
comme des photographies de repérage, sur le point de canevas';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."geometrie" IS
'Géométrie du point';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."immatriculation" IS
'Référence externe selon la convention d''immatriculation du canevas considéré';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."precisionXY" IS
'Précision planimétrique exprimée en cm';
COMMENT ON COLUMN "init"."PointCanevasPCRS"."precisionZ" IS
'Précision altimétrique exprimée en cm';


-- ---------------------------------
-- Classe : ObjetGeneriquePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."ObjetGeneriquePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."ObjetGeneriquePCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."ObjetGeneriquePCRS" cascade;

--CREATE SEQUENCE "init"."ObjetGeneriquePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: ObjetGeneriquePCRS
--DROP TABLE if exists "init"."ObjetGeneriquePCRS" cascade;
CREATE TABLE "init"."ObjetGeneriquePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(GEOMETRY,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "identification" character varying REFERENCES "init"."CategorieObjetPCRS17Type" ("nomClasse"),
  CONSTRAINT "ObjetGeneriquePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  --CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'GEOMETRY'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'GEOMETRY'::text OR geometrytype("geometrie") = 'MULTIPOLYGON'::text OR geometrytype("geometrie") = 'POLYGON'::text  OR geometrytype("geometrie") = 'MULTILINESTRING'::text OR geometrytype("geometrie") = 'LINESTRING'::text  OR geometrytype("geometrie") = 'MULTIPOINT'::text OR geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ObjetGeneriquePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."ObjetGeneriquePCRS_geometrie_geomidx" cascade;
CREATE INDEX "ObjetGeneriquePCRS_geometrie_geomidx"
  ON "init"."ObjetGeneriquePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."ObjetGeneriquePCRS" IS
'Nom de la classe :
ObjetGeneriquePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Objet générique du PCRS

Définition :
Classe permettant de décrire un objet levé du PCRS dont la précision du
géoréférencement est connue, sans que le gestionnaire du PCRS puisse en déterminer
le type dans la nomenclature des objets du PCRS : cette classe d''objet sert
principalement à initialiser le PCRS avec tous les objets utilisables pour une cotation et
dont il faudra déterminer le type dans la nomenclature et la thématique associée.

Modélisation :
Point, Ligne polygonale, ou Polygone
Les aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite <ObjetVecteurPCRS>';

COMMENT ON COLUMN "init"."ObjetGeneriquePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."ObjetGeneriquePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."ObjetGeneriquePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."ObjetGeneriquePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."ObjetGeneriquePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."ObjetGeneriquePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."ObjetGeneriquePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."ObjetGeneriquePCRS"."geometrie" IS
'Géométrie de l''objet générique';
COMMENT ON COLUMN "init"."ObjetGeneriquePCRS"."identification" IS
'L''identification décrit le nom de la classe spécialisée selon
la nomenclature des objets du PCRS.
Inconnue à l''initialisation du PCRS par la collectivité gestionnaire, elle peut-être
précisée lors de tout échange inverse entre utilisateur et collectivité gestionnaire';


-- ---------------------------------
-- Classe : QuaiFluvioMaritimePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."QuaiFluvioMaritimePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."QuaiFluvioMaritimePCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."QuaiFluvioMaritimePCRS" cascade;

--CREATE SEQUENCE "init"."QuaiFluvioMaritimePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: QuaiPCRS
--DROP TABLE if exists "init"."QuaiFluvioMaritimePCRS" cascade;
CREATE TABLE "init"."QuaiFluvioMaritimePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "QuaiFluvioMaritimePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: QuaiFluvioMaritimePCRS_geometrie_geomidx
--DROP INDEX if exists "QuaiFluvioMaritimePCRS_geometrie_geomidx" cascade;
CREATE INDEX "QuaiFluvioMaritimePCRS_geometrie_geomidx"
  ON "init"."QuaiFluvioMaritimePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."QuaiFluvioMaritimePCRS" IS
'Nom de la classe :
QuaiFluvioMaritimePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Quais fluvio-maritimes

Définition :
Ouvrage le long de berge, de rive ou de rivage d''un port ou d''une voie navigable,
aménagée en vue de permettre l''accostage des bâtiments de navigation, l''embarquement
ou le débarquement des passagers, le chargement ou le déchargement des marchandises.

Modélisation :
Polyligne
Les quais sont levés au nez du quai.
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans
la modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS.

La classe contient :
* Quais

Contraintes :
Classe essentielle du PCRS

Critères de sélection :
';

COMMENT ON COLUMN "init"."QuaiFluvioMaritimePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."QuaiFluvioMaritimePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."QuaiFluvioMaritimePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."QuaiFluvioMaritimePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."QuaiFluvioMaritimePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."QuaiFluvioMaritimePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."QuaiFluvioMaritimePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."QuaiFluvioMaritimePCRS"."geometrie" IS
'Géométrie du quai';


-- ---------------------------------
-- Classe : QuaiRailPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."QuaiRailPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."QuaiRailPCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."QuaiRailPCRS" cascade;

--CREATE SEQUENCE "init"."QuaiRailPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: QuaiRailPCRS
--DROP TABLE if exists "init"."QuaiRailPCRS" cascade;
CREATE TABLE "init"."QuaiRailPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "QuaiRailPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: QuaiRailPCRS_geometrie_geomidx
--DROP INDEX if exists "QuaiRailPCRS_geometrie_geomidx" cascade;
CREATE INDEX "QuaiRailPCRS_geometrie_geomidx"
  ON "init"."QuaiRailPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."QuaiRailPCRS" IS
'Nom de la classe :
QuaiRailPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Quais de rail

Définition :
Plate-forme le long des voies pour le chargement ou le déchargement à niveau des wagons.

Modélisation :
Polyligne
Les quais, bordures, bordurettes... sont levés point à point, le long du fil d''eau
uniquement, et jamais sur le nez de bordure ou du quai.
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS.

La classe contient :
* Quais de rail

Contraintes :
Classe essentielle du PCRS

Critères de sélection :
';

COMMENT ON COLUMN "init"."QuaiRailPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."QuaiRailPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."QuaiRailPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."QuaiRailPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."QuaiRailPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."QuaiRailPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."QuaiRailPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."QuaiRailPCRS"."geometrie" IS
'Géométrie du quai';


-- ---------------------------------
-- Classe : LimiteVoiriePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."LimiteVoiriePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."LimiteVoiriePCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."LimiteVoiriePCRS" cascade;


--CREATE SEQUENCE "init"."LimiteVoiriePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: LimiteVoiriePCRS
--DROP TABLE if exists "init"."LimiteVoiriePCRS" cascade;
CREATE TABLE "init"."LimiteVoiriePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "LimiteVoiriePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: LimiteVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."LimiteVoiriePCRS_geometrie_geomidx" cascade;
CREATE INDEX "LimiteVoiriePCRS_geometrie_geomidx"
  ON "init"."LimiteVoiriePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."LimiteVoiriePCRS" IS
'Nom de la classe :
LimiteVoiriePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Limite de voirie

Définition :
Toute limite apparente de la chaussée, caractérisée par une bordure ou un changement
de revêtement est décrite par un objet de cette classe.

Modélisation :
Polyligne
Les changements de revêtement sont levés point à point au niveau du sol.
Les quais, bordures, bordurettes... qui marquent la limite de la chaussée sont levés
point à point, le long du fil d''eau uniquement.
Pour les nouveaux levés, il est conseillé de laisser l''objet à gauche.
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS.

La classe contient :
Limites de chaussée revêtue, marquant le limite de la voirie
(exemple un bord goudronné)
Bordure de chaussées
';

COMMENT ON COLUMN "init"."LimiteVoiriePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."LimiteVoiriePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."LimiteVoiriePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."LimiteVoiriePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."LimiteVoiriePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."LimiteVoiriePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."LimiteVoiriePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."LimiteVoiriePCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : MarcheEscalierPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."MarcheEscalierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."MarcheEscalierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."MarcheEscalierPCRS" cascade;


--CREATE SEQUENCE "init"."MarcheEscalierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: MarcheEscalierPCRS
--DROP TABLE if exists "init"."MarcheEscalierPCRS" cascade;
CREATE TABLE "init"."MarcheEscalierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "symbole" character varying REFERENCES "init"."HabillageSymbolePCRS" ("idHabillage"),
  CONSTRAINT "MarcheEscalierPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: MarcheEscalierPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."MarcheEscalierPCRS_geometrie_geomidx" cascade;
CREATE INDEX "MarcheEscalierPCRS_geometrie_geomidx"
  ON "init"."MarcheEscalierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."MarcheEscalierPCRS" IS
'Nom de la classe :
MarcheEscalierPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Marche d''escalier

Définition :
Classe permettant de décrire une « marche permettant de franchir une dénivellation, à
dissocier des proéminences de bâtiments. A généraliser aux marches dans la voirie. »
(d''après AIVF_20_1)

Modélisation :
Polyligne
Un escalier est composé d''une ou plusieurs portions, séparées par des paliers
intermédiaires. Une portion est composée d''une ou plusieurs marches, et un symbole
peut être attaché à chaque portion d''escalier.
Les paliers intermédiaires peuvent si besoin être décrits au moyen des dernières
marches de chaque portion d''escalier.
Les rampes d’accès sont levées aux ruptures de pentes.

La classe contient :
Les escaliers du PCRS peuvent se retrouver dans deux thématiques, le bâti et la voirie
Dans tous les cas, il s''agit d''escaliers extérieurs, et ayant au moins une limite apparente
sur le domaine public.
Les proéminences bâties (non utiles pour franchir un obstacle) ne sont pas
inclues dans cette classe.

Contraintes :
Une marche milieu (ou les deux marches milieu lorsque les marches sont en nombre
pair) d''une portion d''escalier située entre deux paliers peut être porteuse d''un symbole
indiquant le sens de la montée. Le point porteur du symbole est alors déterminé au
centre du centroïde de la marche milieu (ou des deux marches milieu lorsque les
marches sont en nombre pair)

Critères de sélection :
L''escalier du PCRS doit obligatoirement être situé à l''extérieur, et proposer au moins une
limite apparente avec le domaine public.';

COMMENT ON COLUMN "init"."MarcheEscalierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."MarcheEscalierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."MarcheEscalierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."MarcheEscalierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."MarcheEscalierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."MarcheEscalierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."MarcheEscalierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."MarcheEscalierPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN "init"."MarcheEscalierPCRS"."symbole" IS
'Lien vers un symbole utilisé pour la définition du sens de l''escalier';


-- ---------------------------------
-- Classe : FacadePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."FacadePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."FacadePCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."FacadePCRS" cascade;

--CREATE SEQUENCE "init"."FacadePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: FacadePCRS
--DROP TABLE if exists "init"."FacadePCRS" cascade;
CREATE TABLE "init"."FacadePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "FacadePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: FacadePCRS_geometrie_geomidx
--DROP INDEX if exists "FacadePCRS_geometrie_geomidx" cascade;
CREATE INDEX "FacadePCRS_geometrie_geomidx"
  ON "init"."FacadePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."FacadePCRS" IS
'Nom de la classe :
FacadePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Façade de bâtiment, murs de façade

Définition :
Classe permettant de décrire les éléments de gros-oeuvre, parfois de second-oeuvre,
participant aux faces extérieures d''un bâtiment public ou privé et présentant une
importance étendue

Modélisation :
Polyligne
La façade est levée au niveau du « nu » du mur principal à la hauteur du soubassement
(ou du trottoir en absence de soubassement), en privilégiant autant que possible un levé
en entier du bâtiment, formant ainsi une polyligne fermée. Lorsque le bâtiment ne peut
être levé en entier en tant que façade, la polyligne résultante est alors une polyligne
ouverte

La classe contient :


Contraintes :
Afin de faciliter les représentations de type DAO, il est recommandé par convention que
l’intérieur de la façade se situe à gauche de la polyligne prise dans l’ordre de ses
sommets et par conséquent que la région vers l''extérieur associée au sol ou au
soubassement se situe à droite.
Toute autre convention ou absence de convention dans l''ordre des sommets devra
explicitement être mentionnée dans les métadonnées de publication du PCRS
Classe essentielle du PCRS

Critères de sélection :
Concerne aussi bien les bâtiments durs que les bâtiments légers.
Ne comprends ni les avant-corps (volumes en avancée) et ni les arrière-corps (volumes
en retrait) donnant le relief de façade à compter du « nu » du mur principal
Ne comprend donc pas le soubassement (partie inférieure, massive, d''une construction,
qui surélève celle-ci au niveau du sol ©Larousse) décrit par l''objet
<ProeminenceBatiPCRS>
Ne tient pas compte des éventuels décrochements de seuil (seuils de maison, de cave
ou de garage), décrits par ailleurs par l''objet SeuilPCRS.
';

COMMENT ON COLUMN "init"."FacadePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."FacadePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."FacadePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."FacadePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."FacadePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."FacadePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."FacadePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."FacadePCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : ProeminenceBatiPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."ProeminenceBatiPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."ProeminenceBatiPCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."ProeminenceBatiPCRS" cascade;

--CREATE SEQUENCE "init"."ProeminenceBatiPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: ProeminenceBatiPCRS
--DROP TABLE if exists "init"."ProeminenceBatiPCRS" cascade;
CREATE TABLE "init"."ProeminenceBatiPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "ProeminenceBatiPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ProeminenceBatiPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."ProeminenceBatiPCRS_geometrie_geomidx" cascade;
CREATE INDEX "ProeminenceBatiPCRS_geometrie_geomidx"
  ON "init"."ProeminenceBatiPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."ProeminenceBatiPCRS" IS
'Nom de la classe :
ProeminenceBatiPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Proéminence du Bâti, Soubassement

Définition :
Classe permettant de décrire l''ensemble des constructions liées au bâtiment, dont
l''emprise est différente de celle levée par les façades (AIVF_19_8), et levée au niveau du
trottoir

Modélisation :
Polyligne
La proéminence du bâti est levée point par point au niveau du trottoir et au sens de
l''emprise maximum du bâtiment sur le domaine public.
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS

La classe contient :
Perron, marche de maison
Terrasse - Devanture
Véranda

Critères de sélection :
Ne comprend pas les caves';

COMMENT ON COLUMN "init"."ProeminenceBatiPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."ProeminenceBatiPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."ProeminenceBatiPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."ProeminenceBatiPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."ProeminenceBatiPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."ProeminenceBatiPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."ProeminenceBatiPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."ProeminenceBatiPCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : SeuilPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."SeuilPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."SeuilPCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."SeuilPCRS" cascade;

--CREATE SEQUENCE "init"."SeuilPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: SeuilPCRS
--DROP TABLE if exists "init"."SeuilPCRS" cascade;
CREATE TABLE "init"."SeuilPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "symbole" character varying REFERENCES "init"."HabillageSymbolePCRS" ("idHabillage"),
  CONSTRAINT "SeuilPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: SeuilPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."SeuilPCRS_geometrie_geomidx" cascade;
CREATE INDEX "SeuilPCRS_geometrie_geomidx"
  ON "init"."SeuilPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."SeuilPCRS" IS
'Nom de la classe :
SeuilPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Seuil, Ouverture d''un bâtiment ou d''un mur

Définition :
Classe permettant de décrire l''ensemble des portes, portes cochères, portails, seuils
permettant l''entrée ou la sortie dans un bâtiment ou dans une enceinte (AIVF_19_3)

Modélisation :
Ligne
La ligne est définie comme le segment reliant deux points levés (dans le même sens que
le levé de façade du bâtiment ou du mur), et de part et d''autre de l''ouverture du bâtiment
ou du mur
Le point de seuil, déterminé par calcul, est situé à l''axe du seuil, et sert éventuellement à
positionner un symbole décrit par un objet SymboleHabillagePCRS

La classe contient :
Seuil piéton (ou seuil de maison)
Seuil véhicule (ou seuil de garage)
Seuil d''ouverture

Critères de sélection :
À l''exclusion de tout seuil de cave';

COMMENT ON COLUMN "init"."SeuilPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."SeuilPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."SeuilPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."SeuilPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."SeuilPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."SeuilPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."SeuilPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."SeuilPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN "init"."SeuilPCRS"."symbole" IS
'';


-- ---------------------------------
-- Classe : MurPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."MurPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."MurPCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."MurPCRS" cascade;

--CREATE SEQUENCE "init"."MurPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: MurPCRS
--DROP TABLE if exists "init"."MurPCRS" cascade;
CREATE TABLE "init"."MurPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "typeMur" character varying(2) REFERENCES "init"."CategorieMurPCRSType" ("code"),
  CONSTRAINT "MurPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: MurPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."MurPCRS_geometrie_geomidx" cascade;
CREATE INDEX "MurPCRS_geometrie_geomidx"
  ON "init"."MurPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."MurPCRS" IS
'Nom de la classe :
MurPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Murs, Murs de soutènement, Murs bahuts avec ou sans clôture, Clôtures sur socle,
Parapets

Définition :
Classe permettant de décrire les ouvrages de maçonnerie (très souvent en briques ou
parpaings) s''élevant en hauteur et servant à enclore, séparer ou délimiter des espaces.
Certains objets de type socle ou bahut peuvent également être surmontés d''une clôture
plus légère comme une grille ou un grillage.

Modélisation :
Polyligne
cf. modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS
Les murs sont levés point par point, au sol, sur chaque côté du domaine public, et
complété le cas échéant par un levé point par point, au sol, du côté du domaine privé
accessible. Les murs peuvent être indifféremment décrits par leurs côtés sous la forme
de polylignes ouvertes, ou par une description plus composite assemblant les polylignes
ouvertes et refermant les extrémités pour constituer une unique polyligne fermée.
Le PCRS ne s''attache pas à décrire ni la hauteur du mur ni son épaisseur, ni même le
matériau le constituant.
On ne cherchera à modéliser les piliers distribués le long ou aux extrémités de murs
seulement lorsque leurs dimensions au sol sont différenciables de la largeur du mur,
auquel cas de tels piliers seront décrits par des objets de type <PilierPCRS>

La classe contient :
Mur (AIVF_20_5), Mur bahut (AIVF_20_6), Gabion
Mur de soutènement (AIVF_20_4)
Parapet (AIVF_2_5), Garde-corps
Clôture sur socle ou Bahut avec clôture
Enrochements

Contraintes :
Afin de faciliter les représentations de type DAO, il est recommandé par convention que
l’intérieur du mur porteur de la matière (briques, parpaings, béton, pierre...) se situe à
gauche de la polyligne prise dans l’ordre de ses sommets et par conséquent que la
région vers l''extérieur associée au sol se situe à droite.
Toute autre convention ou absence de convention dans l''ordre des sommets devra
explicitement être mentionnée dans les métadonnées de publication du PCRS.
Classe essentielle du PCRS

Critères de sélection :
Les murs de pierre taillée ou non, ou constitués d''assemblages de bloc sont susceptibles
de présenter des irrégularités incompatibles avec les exigences de précision du PCRS :
ils ne constituent donc pas à proprement parler des murs du PCRS.
Ils doivent toutefois être décrits en renseignant spécifiquement les précisions
planimétriques et/ou altimétriques par des valeurs très supérieures à celles exigées pour
le PCRS';

COMMENT ON COLUMN "init"."MurPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."MurPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."MurPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."MurPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."MurPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."MurPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."MurPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."MurPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN "init"."MurPCRS"."typeMur" IS
'';


-- ---------------------------------
-- Classe : PilierPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."PilierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."PilierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."PilierPCRS" cascade;

--CREATE SEQUENCE "init"."PilierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilierPCRS
--DROP TABLE if exists "init"."PilierPCRS" cascade;
CREATE TABLE "init"."PilierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  CONSTRAINT "PilierPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."PilierPCRS_geometrie_geomidx" cascade;
--CREATE INDEX "PilierPCRS_geometrie_geomidx"
--  ON "init"."PilierPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE "init"."PilierPCRS" IS
'Nom de la classe :
PilierPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Pilier

Définition :
Classe abstraite permettant de décrire une construction en maçonnerie ou en métal, de
section circulaire, carrée, rectangulaire ou polygonale érigée dans le but de reprendre ou
supporter des charges (AIVF_20_2)

Modélisation :
Selon les classes de pilier spécialisées et représentées par un symbole
<PilierRegulierPCRS> ou un polygone <PilierParticulierPCRS>
Propre à chacune des classes de pilier spécialisées <PilierRegulierPCRS> et
<PilierParticulierPCRS> du PCRS
N.B. La hauteur du pilier ne fait pas partie des informations levées dans le cadre du
PCRS

La classe contient :
Tout type de pilier quelles que soient la forme et la taille de sa section ou la matière le
constituant

Critères de sélection :
Lorsque le pilier est associé à un socle ou à un mur, ses dimensions au sol doivent le rendre
différenciable (aux limites de précision planimétrique) du socle ou du mur attenant';

COMMENT ON COLUMN "init"."PilierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."PilierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."PilierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."PilierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."PilierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."PilierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."PilierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';


-- ---------------------------------
-- Classe : PilierRegulierPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."PilierRegulierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."PilierRegulierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."PilierRegulierPCRS" cascade;

--CREATE SEQUENCE "init"."PilierRegulierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilierRegulierPCRS
--DROP TABLE if exists "init"."PilierRegulierPCRS" cascade;
CREATE TABLE "init"."PilierRegulierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "largeur_mm" decimal NOT NULL,
  "longueur_mm" decimal NOT NULL,
  "section" character varying(2) NOT NULL REFERENCES "init"."SectionPilierPCRSType" (code),
  CONSTRAINT "PilierRegulierPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."PilierPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierRegulierPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."PilierRegulierPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PilierRegulierPCRS_geometrie_geomidx"
  ON "init"."PilierRegulierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."PilierRegulierPCRS" IS
'Nom de la classe :
PilierRegulierPCRS

Sous-classe de :
PilierPCRS

Titre :
Pilier circulaire, pilier carré, pilier rectangulaire

Définition :
Classe permettant de décrire les constructions en maçonnerie ou en métal, de section
circulaire, carrée, rectangulaire érigées dans le but de reprendre ou supporter des
charges

Modélisation :
Point

La classe contient :
Pilier circulaire
Pilier carré
Pilier rectangulaire
Tout type de pilier de forme régulière à section circulaire, carrée ou rectangulaire et
quelque soit la taille de sa section ou la matière le constituant

Critères de sélection :
Lorsque le pilier est associé à un socle ou à un mur, ses dimensions au sol doivent le
rendre différenciable (aux limites de précision planimétrique) du socle ou du mur attenant';

COMMENT ON COLUMN "init"."PilierRegulierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."PilierRegulierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."PilierRegulierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."PilierRegulierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."PilierRegulierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."PilierRegulierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."PilierRegulierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."PilierRegulierPCRS"."angleRotation" IS
'Utlisé uniquement pour l''orientation du symbole de poteau après rotation.
Peut être étendu pour un poteau ovale pour orienter le symbole';
COMMENT ON COLUMN "init"."PilierRegulierPCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "init"."PilierRegulierPCRS"."largeur_mm" IS
'Utlisé uniquement pour la mise à l''échelle Y du symbole de poteau après rotation';
COMMENT ON COLUMN "init"."PilierRegulierPCRS"."longueur_mm" IS
'Utlisé uniquement pour la mise à l''échelle X du symbole de poteau après rotation';
COMMENT ON COLUMN "init"."PilierRegulierPCRS"."section" IS
'Forme de la section à la base du pilier';


-- ---------------------------------
-- Classe : PilierParticulierPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."PilierParticulierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."PilierParticulierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."PilierParticulierPCRS" cascade;


--CREATE SEQUENCE "init"."PilierParticulierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilierParticulierPCRS
--DROP TABLE if exists "init"."PilierParticulierPCRS" cascade;
CREATE TABLE "init"."PilierParticulierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "PilierParticulierPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."PilierPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierParticulierPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."PilierParticulierPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PilierParticulierPCRS_geometrie_geomidx"
  ON "init"."PilierParticulierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."PilierParticulierPCRS" IS
'Nom de la classe :
PilierParticulierPCRS

Sous-classe de :
PilierPCRS

Titre :
Pilier polygonal

Définition :
Classe permettant de décrire les constructions en maçonnerie ou en métal, de section
polygonale érigées dans le but de reprendre ou supporter des charges

Modélisation :
Polyligne fermée
Le pilier est levé point par point au niveau du sol et au sens de l''emprise maximum.
N.B. La hauteur du pilier ne fait pas partie des informations levées dans le cadre du
PCRS

La classe contient :
Tout type de pilier à section de forme polygonale

Contraintes :
Il est décidé par convention que l’intérieur du pilier mur porteur de la matière se situe à
gauche de la polyligne prise dans l’ordre de ses sommets et par conséquent que la
région vers l''extérieur associée au sol se situe à droite.
Les singularités liées au cheminement polygonal, et en particulier la singularité dite « en
papillon » doivent être évitées

Critères de sélection :
Lorsque le pilier est attenant à un socle ou à un mur, ses dimensions au sol doivent le
rendre différenciable (aux limites de précision planimétrique) du socle ou du mur attenant';

COMMENT ON COLUMN "init"."PilierParticulierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."PilierParticulierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."PilierParticulierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."PilierParticulierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."PilierParticulierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."PilierParticulierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."PilierParticulierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."PilierParticulierPCRS"."geometrie" IS
'Géométrie de type polygone';


-- ---------------------------------
-- Classe : RailPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."RailPCRS_geometrie_geomidx" cascade;
--DROP TABLE if exists "init"."RailPCRS" cascade;
--DROP SEQUENCE if exists "init"."RailPCRS_idObjet_seq" cascade;

--CREATE SEQUENCE "init"."RailPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: RailPCRS
--DROP TABLE if exists "init"."RailPCRS" cascade;
CREATE TABLE "init"."RailPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "RailPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: RailPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."RailPCRS_geometrie_geomidx" cascade;
CREATE INDEX "RailPCRS_geometrie_geomidx"
  ON "init"."RailPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."RailPCRS" IS
'Nom de la classe :
RailPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Rail d''un tronçon de voie ferrée

Définition :
Classe permettant de décrire de façon unitaire et continue l''assemblage de rails d''un
tronçon de voie ferrée. Un rail est un guide linéaire constitué de profilés d''acier laminés
soudés bout à bout, et constituant le chemin de roulement et de guidage des roues des
véhicules ferroviaires. Une voie ferroviaire simple est constituée de deux rails parallèles
et à écartement fixe et standardisé qui peut être différent par pays (1,435m en France).

Modélisation :
Polylignes
cf. modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS
Le levé topographique d''une voie ferrée simple est effectué rail par rail et toujours à
l''intérieur vers l''axe de la voie, de façon à maintenir un écart uniforme entre les deux
polylignes, et égal à l''écartement du rail. Le nivellement de chaque point de levé doit
correspondre à un point situé sur la partie supérieure du rail en contact au niveau de la
bande de roulement. Le nivellement des deux rails d''une même section transversale
d''une voie simple est normalement identique pour un alignement droit et peut être
différent pour une courbe ou une clothoïde (raccordement entre courbe et alignement
droit) selon le tracé en plan de la voie ferrée.
Le gestionnaire du PCRS a toute latitude pour préciser lorsque les circonstances le
justifient d''autres modes de levé (typiquement dans l''axe du rail au milieu de la bande de
roulement sur un rail Vignole) : le cahier des charges ainsi que les Métadonnées de
livraison devront alors explicitement préciser le mode de levé associé
(d''après http://fr.wikipedia.org/wiki/Voie_normale)
Un rail est souvent décrit dans le secteur ferroviaire par emprises et par tronçons. Cette
description « métier » peut être conservée dans le PCRS, mais les attributs servant à la
décrire ne font pas à proprement parler partie du PCRS.

La classe contient :
Tout type de rail (anciennement champignon/double champignon, Vignole, à gorge...)
utilisé sur une voie ferrée de tout type (normale, industrielle, à crémaillère, pour le
transport urbain, de type tramway)

Contraintes :
Deux rails connexes doivent lorsqu''il s''agit de la même voie simple partager aux
tolérances de précisions planimétrique et altimétriques près une même extrémité. Un
aiguillage qui assure la jonction rail par rail entre deux voies simples devra partager (au
sens du géoréférencement et aux tolérances de précisions près) chacune de ses
extrémités avec un des points levés des rails connectés. La description n''est cependant
pas explicitement topologique : on ne cherchera pas à décrire les relations entre nœuds
et segments du réseau ainsi formé
Classe essentielle du PCRS

Critères de sélection :
Ne concerne que les voies situées sur le domaine public ou en assurant sa desserte';

COMMENT ON COLUMN "init"."RailPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."RailPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."RailPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."RailPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."RailPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."RailPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."RailPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."RailPCRS"."geometrie" IS
'Géométrie de type curve';


-- ---------------------------------
-- Classe : ArbrePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."ArbrePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."ArbrePCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."ArbrePCRS" cascade;

--CREATE SEQUENCE "init"."ArbrePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: ArbrePCRS
--DROP TABLE if exists "init"."ArbrePCRS" cascade;
CREATE TABLE "init"."ArbrePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "reference" character varying NOT NULL,
  --"type" character varying(2) NOT NULL REFERENCES "CategorieArbrePCRSType" (code),
  CONSTRAINT "ArbrePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ArbrePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."ArbrePCRS_geometrie_geomidx" cascade;
CREATE INDEX "ArbrePCRS_geometrie_geomidx"
  ON "init"."ArbrePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."ArbrePCRS" IS
'Nom de la classe :
ArbrePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Arbre

Définition :
Classe permettant de décrire les arbres régulièrement entretenus de la voirie du domaine
public.

Modélisation :
Point (GM_Point)
L''arbre est modélisé par un point levé en axe du tronc, à hauteur du terrain naturel hors
éventuel monticule au pied
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS

La classe contient :
Selon toutes essences et espèces d''arbres';

COMMENT ON COLUMN "init"."ArbrePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."ArbrePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."ArbrePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."ArbrePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."ArbrePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."ArbrePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."ArbrePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."ArbrePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "init"."ArbrePCRS"."reference" IS
'';


-- ---------------------------------
-- Classe : PilePontPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."PilePontPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."PilePontPCRS_idObjet_seq" cascade;
--DROP TABLE if exists "init"."PilePontPCRS" cascade;

--CREATE SEQUENCE "init"."PilePontPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilePontPCRS
--DROP TABLE if exists "init"."PilePontPCRS" cascade;
CREATE TABLE "init"."PilePontPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(Polygon,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "PilePontPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilePontPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."PilePontPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PilePontPCRS_geometrie_geomidx"
  ON "init"."PilePontPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."PilePontPCRS" IS
'Nom de la classe :
PilePontPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Pile ou culée de pont du PCRS

Définition :
Classe permettant de décrire les appuis massifs et permanents supportant les tabliers
des ponts

Modélisation :
Polyligne ouverte ou fermée (GM_Curve)
Les piles de pont sont levées le long de la limite apparente avec le revêtement voisin,
point à point et au niveau du sol (fil d''eau).
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS

Regroupement :
Pile (appuis intermédiaires) ou culées (appuis d''extrémité)

Critères de sélection :
Appuis massifs et permanents supportant le tablier d''un pont
';

COMMENT ON COLUMN "init"."PilePontPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."PilePontPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."PilePontPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."PilePontPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."PilePontPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."PilePontPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."PilePontPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."PilePontPCRS"."geometrie" IS
'Géométrie de type polygone';



-- ---------------------------------
-- Classe : AffleurantSymbolePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."AffleurantSymbolePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."AffleurantSymbolePCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists "init"."AffleurantSymbolePCRS" cascade;


--CREATE SEQUENCE "init"."AffleurantSymbolePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantSymbolePCRS
--DROP TABLE if exists "init"."AffleurantSymbolePCRS" cascade;
CREATE TABLE "init"."AffleurantSymbolePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES "init"."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES "init"."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES "init"."AffleurantSymbolePCRS" (code),
  --"representations" character varying(8) NOT NULL REFERENCES "init"."AffleurantGeometriquePCRS" (code),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "largeur_mm" decimal NOT NULL,
  "longueur_mm" decimal NOT NULL,
  "reference" character varying NOT NULL,
  CONSTRAINT "AffleurantSymbolePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
--INHERITS ("init"."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantSymbolePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."AffleurantSymbolePCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantSymbolePCRS_geometrie_geomidx"
  ON "init"."AffleurantSymbolePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."AffleurantSymbolePCRS" IS
'Nom de la classe :
AffleurantSymbolePCRS

Sous-classe de :
*NON* AffleurantPCRS *NON*

Titre :
Affleurant du PCRS représenté par un symbole,
associé à un point de placement du symbole.

Définition :
Classe permettant de décrire de façon symbolique un affleurant.

Modélisation :
Point défini en planimétrie (XY) et altimétrie (Z), et permettant le positionnement du
centre d''un symbole correctement orienté et mis à l''échelle et lié au réseau et type
d''affleurant concerné
Le ou les points levés nécessaires au levé précis de l''affleurant doivent permettre :
- d''une part de localiser avec une précision planimétrique et centimétrique maîtrisée le
positionnement du point d''origine locale du symbole,
- d''autre part de déterminer avec la même précision planimétrique les dimensions de
longueur (plus grande dimension) et de largeur (dimension inférieure ou égale à la plus
grande dimension) permettant la mise à l''échelle du symbole,
- enfin de déterminer l''angle de rotation utilisé pour orienter correctement le symbole
La représentation par symbole doit en outre être augmentée de la localisation des points
levés de façon à se prémunir des risques liés à une représentation incorrecte du symbole
de l''affleurant.

Contraintes :
Notamment pour les affleurants de taille importante et de forme irrégulière,
la version v2.0 recommande plutôt l''utilisation de la classe <AffleurantEnveloppePCRS>,
éventuellement complétée par un habillage <HabillageLignesPCRS> pour le dessin de
l''affleurant à l''intérieur de son enveloppe';

COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."precisionAltimetrique" IS
--'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
--associée au levé topographique de l''objet';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."precisionPlanimetrique" IS
--'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
--associée au levé topographique de l''objet';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."dateLeve" IS
--'Date de levé de l''objet';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."producteur" IS
--'Producteur de la donnée.
--La valeur sera saisie et déterminée par le producteur de façon stable.
--Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."qualiteCategorisation" IS
--'Indication du producteur quant à la qualité de la catégorisation.
--Permet des représentations plus riches pour les migrations / reprises de données';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."thematique" IS
--'La thématique à laquelle est associé chaque objet du PCRS';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."gestionnaire" IS
--'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."idSource" IS
--'Identifiant unique de l''affleurant';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."nature" IS
--'Nature de l''affleurant';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."reseau" IS
--'Nature du réseau';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."source" IS
--'Source des données d''affleurant dans le SI du gestionnaire de réseaux
--Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."symbolisation" IS
--'Lien vers une représentation symbolique'
--COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."representations" IS
--'Lien vers  une représentation de type géométrique.
--Il est nécessaire de fournir au moins un type de representation géométrique'
COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."angleRotation" IS
'Angle utilisé uniquement pour l''orientation du symbole d''affleurant,
dans le sens horaire par rapport au Nord.
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."largeur_mm" IS
'Utilisé uniquement pour la mise à l''échelle Y du symbole de l''affleurant';
COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."longueur_mm" IS
'Utilisé uniquement pour la mise à l''échelle X du symbole de l''affleurant';
COMMENT ON COLUMN "init"."AffleurantSymbolePCRS"."reference" IS
'Désignation du symbole à utiliser pour la représentation de l''affleurant.';


-- ---------------------------------
-- Classe : AffleurantGeometriquePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."AffleurantGeometriquePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."AffleurantGeometriquePCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists "init"."AffleurantGeometriquePCRS" cascade;

--CREATE SEQUENCE "init"."AffleurantGeometriquePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantGeometriquePCRS
--DROP TABLE if exists "init"."AffleurantGeometriquePCRS" cascade;
CREATE TABLE "init"."AffleurantGeometriquePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  -- "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  -- "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  -- "dateLeve" date,
  -- "producteur" character varying NOT NULL,
  -- "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  -- "thematique" character varying(2) NOT NULL,
  -- "gestionnaire" character varying,
  -- "idSource" character varying,
  -- "nature" character varying(2) NOT NULL REFERENCES "init"."NatureAffleurantPCRSType" (code),
  -- "reseau" character varying(8) NOT NULL REFERENCES "init"."NatureReseauPCRSType" (code),
  -- "source" character varying,
  -- "symbolisation" character varying(8) REFERENCES "init"."AffleurantSymbolePCRS" (code),
  -- "representations" character varying(8) NOT NULL REFERENCES "init"."AffleurantGeometriquePCRS" (code),
  CONSTRAINT "AffleurantGeometriquePCRS_pkey" PRIMARY KEY ("idObjet")
)
--INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantGeometriquePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."AffleurantGeometriquePCRS_geometrie_geomidx" cascade;
--CREATE INDEX "AffleurantGeometriquePCRS_geometrie_geomidx"
--  ON "init"."AffleurantGeometriquePCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE "init"."AffleurantGeometriquePCRS" IS
'Nom de la classe :
AffleurantGeometriquePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Representation géométrique de l''affleurant du PCRS

Définition :
Classe permettant de fournir diverses représentations géométriques.

Modélisation :
Selon les représentations liées
';

COMMENT ON COLUMN "init"."AffleurantGeometriquePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';




-- ---------------------------------
-- Classe : AffleurantPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."AffleurantPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."AffleurantPCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists "init"."AffleurantPCRS" cascade;

--CREATE SEQUENCE "init"."AffleurantPCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantPCRS
--DROP TABLE if exists "init"."AffleurantPCRS" cascade;
CREATE TABLE "init"."AffleurantPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "gestionnaire" character varying,
  "idSource" character varying,
  "nature" character varying(2) NOT NULL REFERENCES "init"."NatureAffleurantPCRSType" (code),
  "reseau" character varying(8) NOT NULL REFERENCES "init"."NatureReseauPCRSType" (code),
  "source" character varying,
  "symbolisation" character varying(8) REFERENCES "init"."AffleurantSymbolePCRS" ("idObjet"),
  "representations" character varying(8) NOT NULL REFERENCES "init"."AffleurantGeometriquePCRS" ("idObjet"),
  CONSTRAINT "AffleurantPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("init"."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."AffleurantPCRS_geometrie_geomidx" cascade;
--CREATE INDEX "AffleurantPCRS_geometrie_geomidx"
--  ON "init"."AffleurantPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE "init"."AffleurantPCRS" IS
'Nom de la classe :
AffleurantPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Affleurant du PCRS

Définition :
Classe permettant de décrire une partie d’un réseau existant visible depuis la
surface
IMPORTANT : un affleurant de réseau correspond à un objet métier géré non pas par la
collectivité gestionnaire du PCRS mais par l''opérateur gestionnaire du réseau. Il figure
toutefois dans la liste des objets échangés dans un PCRS de façon à
partager la localisation précise de tous les objets d''un réseau visibles depuis la surface.
Chaque gestionnaire reste responsable de ses affleurants.

Modélisation :
Selon les classes d''affleurant liées, et représentées (de préférence) par une
représentation exhaustive et interopérable comme le polygone
AffleurantEnveloppePCRS, éventuellement complété par un habillage de type
HabillageLignesPCRS, néanmoins d''autres modélisation géométriques sont offertes afin
de ne pas perdre d''informations.
La modélisation géométrique est propre à chacune des classes d''affleurant
AffleurantXXXPCRS du PCRS

La classe contient :
Bouches, avaloirs, regards, plaques, poteaux, coffrets...

Contraintes :
Classe essentielle du PCRS';

COMMENT ON COLUMN "init"."AffleurantPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."AffleurantPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."AffleurantPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "init"."AffleurantPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN "init"."AffleurantPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."AffleurantPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "init"."AffleurantPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "init"."AffleurantPCRS"."gestionnaire" IS
'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
COMMENT ON COLUMN "init"."AffleurantPCRS"."idSource" IS
'Identifiant unique de l''affleurant';
COMMENT ON COLUMN "init"."AffleurantPCRS"."nature" IS
'Nature de l''affleurant';
COMMENT ON COLUMN "init"."AffleurantPCRS"."reseau" IS
'Nature du réseau';
COMMENT ON COLUMN "init"."AffleurantPCRS"."source" IS
'Source des données d''affleurant dans le SI du gestionnaire de réseaux
Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
COMMENT ON COLUMN "init"."AffleurantPCRS"."symbolisation" IS
'Lien vers une représentation symbolique';
COMMENT ON COLUMN "init"."AffleurantPCRS"."representations" IS
'Lien vers  une représentation de type géométrique.
Il est nécessaire de fournir au moins un type de representation géométrique';


-- ---------------------------------
-- Classe : AffleurantEnveloppePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."AffleurantEnveloppePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."AffleurantEnveloppePCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists "init"."AffleurantEnveloppePCRS" cascade;

--CREATE SEQUENCE "init"."AffleurantEnveloppePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantEnveloppePCRS
--DROP TABLE if exists "init"."AffleurantEnveloppePCRS" cascade;
CREATE TABLE "init"."AffleurantEnveloppePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES "init"."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES "init"."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES "init"."AffleurantSymbolePCRS" (code),
  --"representations" character varying(8) NOT NULL REFERENCES "init"."AffleurantGeometriquePCRS" (code),
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "AffleurantEnveloppePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
--INHERITS ("init"."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantEnveloppePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."AffleurantEnveloppePCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantEnveloppePCRS_geometrie_geomidx"
  ON "init"."AffleurantEnveloppePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."AffleurantEnveloppePCRS" IS
'Nom de la classe :
AffleurantEnveloppePCRS

Sous-classe de :
AffleurantPCRS

Titre :
Affleurant du PCRS représenté par son enveloppe (périmètre)

Définition :
Classe spécialisée permettant de décrire une partie d’un réseau existant visible depuis la
surface.

Modélisation :
Polygone (GM_Polygon)
L''enveloppe, autrement dit le périmètre de l''affleurant, est modélisée par un unique
polygone non auto-intersectant et ne présentant aucun trou dans sa définition d''intérieur.

Regroupement :
Bouches, avaloirs, regards, plaques, poteaux, coffrets...

Contraintes :
La version actuelle du PCRS recommande l''utilisation de cette classe
<AffleurantEnveloppePCRS>, éventuellement complétée par un habillage
<HabillageLignesPCRS> pour le dessin de l''affleurant à l''intérieur de son enveloppe';

COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."precisionAltimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."precisionPlanimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."dateLeve" IS
-- 'Date de levé de l''objet';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."producteur" IS
-- 'Producteur de la donnée.
-- La valeur sera saisie et déterminée par le producteur de façon stable.
-- Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."qualiteCategorisation" IS
-- 'Indication du producteur quant à la qualité de la catégorisation.
-- Permet des représentations plus riches pour les migrations / reprises de données';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."thematique" IS
-- 'La thématique à laquelle est associé chaque objet du PCRS';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."gestionnaire" IS
-- 'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."idSource" IS
-- 'Identifiant unique de l''affleurant';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."nature" IS
-- 'Nature de l''affleurant';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."reseau" IS
-- 'Nature du réseau';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."source" IS
-- 'Source des données d''affleurant dans le SI du gestionnaire de réseaux
-- Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."symbolisation" IS
-- 'Lien vers une représentation symbolique'
-- COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."representations" IS
-- 'Lien vers  une représentation de type géométrique.
-- Il est nécessaire de fournir au moins un type de representation géométrique'
COMMENT ON COLUMN "init"."AffleurantEnveloppePCRS"."geometrie" IS
'Géométrie de type polygone';


-- ---------------------------------
-- Classe : AffleurantLignesPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."AffleurantLignesPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."AffleurantLignesPCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists "init"."AffleurantLignesPCRS" cascade;


--CREATE SEQUENCE "AffleurantLignePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantLignesPCRS
--DROP TABLE if exists "init"."AffleurantLignesPCRS" cascade;
CREATE TABLE "init"."AffleurantLignesPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES "init"."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES "init"."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES "init"."AffleurantSymbolePCRS" ("idObjet"),
  --"representations" character varying(8) NOT NULL REFERENCES "init"."AffleurantGeometriquePCRS" ("idObjet"),
  --"geometrie" geometry(MULTILINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "AffleurantLignesPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTILINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantLignesPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."AffleurantLignesPCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantLignesPCRS_geometrie_geomidx"
  ON "init"."AffleurantLignesPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."AffleurantLignesPCRS" IS
'Nom de la classe :
AffleurantLignesPCRS

Sous-classe de :
AffleurantPCRS

Titre :
Affleurant du PCRS représenté par une ligne.

Définition :
Classe spécialisée permettant de décrire la représentation de l''affleurant
sous forme de lignes.

Modélisation :
Ensemble de courbes (GM_MultiCurve)
La géométrie de l''affleurant, est modélisée par un ensemble de courbes.


Contraintes :
La version actuelle du PCRS recommande plutôt l''utilisation de la classe
<AffleurantEnveloppePCRS>, éventuellement complétée par un habillage
<HabillageLignesPCRS> pour le dessin de l''affleurant à l''intérieur de son enveloppe';

COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."precisionAltimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."precisionPlanimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."dateLeve" IS
-- 'Date de levé de l''objet';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."producteur" IS
-- 'Producteur de la donnée.
-- La valeur sera saisie et déterminée par le producteur de façon stable.
-- Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."qualiteCategorisation" IS
-- 'Indication du producteur quant à la qualité de la catégorisation.
-- Permet des représentations plus riches pour les migrations / reprises de données';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."thematique" IS
-- 'La thématique à laquelle est associé chaque objet du PCRS';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."gestionnaire" IS
-- 'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."idSource" IS
-- 'Identifiant unique de l''affleurant';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."nature" IS
-- 'Nature de l''affleurant';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."reseau" IS
-- 'Nature du réseau';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."source" IS
-- 'Source des données d''affleurant dans le SI du gestionnaire de réseaux
-- Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."symbolisation" IS
-- 'Lien vers une représentation symbolique';
-- COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."representations" IS
-- 'Lien vers  une représentation de type géométrique.
-- Il est nécessaire de fournir au moins un type de representation géométrique';
COMMENT ON COLUMN "init"."AffleurantLignesPCRS"."geometrie" IS
'Géométrie composée d''un ensemble de lignes';


-- ---------------------------------
-- Classe : AffleurantPointPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."AffleurantPointPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."AffleurantPointPCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists "init"."AffleurantPointPCRS" cascade;


--CREATE SEQUENCE "init"."AffleurantPointPCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantPointPCRS
--DROP TABLE if exists "init"."AffleurantPointPCRS" cascade;
CREATE TABLE "init"."AffleurantPointPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES "init"."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES "init"."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES "init"."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES "init"."AffleurantSymbolePCRS" ("idObjet"),
  --"representations" character varying(8) NOT NULL REFERENCES "init"."AffleurantGeometriquePCRS" ("idObjet"),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "AffleurantPointPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantPointPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."AffleurantPointPCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantPointPCRS_geometrie_geomidx"
  ON "init"."AffleurantPointPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."AffleurantPointPCRS" IS
'Nom de la classe :
AffleurantPointPCRS

Sous-classe de :
AffleurantPCRS

Titre :
Affleurant du PCRS représenté par un point.

Définition :
Classe spécialisée permettant de décrire la représentation de l''affleurant
sous forme de point.

Modélisation :
Ponctuel (GM_Point)
La géométrie de l''affleurant, est modélisée par un point représentant le centroide de
l''affleurant.

Contraintes :
La version actuelle du PCRS recommande plutôt l''utilisation de la classe
<AffleurantEnveloppePCRS>, éventuellement complétée par un habillage
<HabillageLignesPCRS> pour le dessin de l''affleurant à l''intérieur de son enveloppe. La
représentation par un unique point sera donc utilisée faute d''informations suffisantes.';

COMMENT ON COLUMN "init"."AffleurantPointPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."precisionAltimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."precisionPlanimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."dateLeve" IS
-- 'Date de levé de l''objet';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."producteur" IS
-- 'Producteur de la donnée.
-- La valeur sera saisie et déterminée par le producteur de façon stable.
-- Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."qualiteCategorisation" IS
-- 'Indication du producteur quant à la qualité de la catégorisation.
-- Permet des représentations plus riches pour les migrations / reprises de données';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."thematique" IS
-- 'La thématique à laquelle est associé chaque objet du PCRS';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."gestionnaire" IS
-- 'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."idSource" IS
-- 'Identifiant unique de l''affleurant';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."nature" IS
-- 'Nature de l''affleurant';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."reseau" IS
-- 'Nature du réseau';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."source" IS
-- 'Source des données d''affleurant dans le SI du gestionnaire de réseaux
-- Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."symbolisation" IS
-- 'Lien vers une représentation symbolique';
-- COMMENT ON COLUMN "init"."AffleurantPointPCRS"."representations" IS
-- 'Lien vers  une représentation de type géométrique.
-- Il est nécessaire de fournir au moins un type de representation géométrique';
COMMENT ON COLUMN "init"."AffleurantPointPCRS"."geometrie" IS
'Géométrie de type point';


-- ---------------------------------
-- Classe : RasterPCRS
-- ---------------------------------

--DROP INDEX if exists "init"."RasterPCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists "init"."RasterPCRS_idPCRS_seq" cascade;
--DROP TABLE if exists "init"."RasterPCRS" cascade;

CREATE SEQUENCE "init"."RasterPCRS_idPCRS_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: RasterPCRS
--DROP TABLE if exists "init"."RasterPCRS" cascade;
CREATE TABLE "init"."RasterPCRS"
(
  "dateAcquisition" date NOT NULL,
  "dateRecette" date NOT NULL,
  "descriptionElementsQualite" character varying NOT NULL,
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "idPCRS" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."RasterPCRS_idPCRS_seq"'::regclass),
  "nomImage" character varying NOT NULL,
  "precisionPlanimetriqueCorpsdeRue" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRSType" (code),
  "precisionPlanimetriqueZonesNaturelles" character varying(3) NOT NULL REFERENCES "init"."CategoriePrecisionPCRSType" (code),
  "resolution" integer NOT NULL,
  "typeImage" character varying NOT NULL,
  "producteur" character varying NOT NULL,
  CONSTRAINT "RasterPCRS_pkey" PRIMARY KEY ("idPCRS"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);


-- Index: RasterPCRS_geometrie_geomidx
--DROP INDEX if exists "init"."RasterPCRS_geometrie_geomidx" cascade;
CREATE INDEX "RasterPCRS_geometrie_geomidx"
  ON "init"."RasterPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."RasterPCRS" IS
'Nom de la classe :
RasterPCRS

Titre :
Orthophotoplan du PCRS

Définition :
Classe abstraite permettant de décrire toutes les ortho-images utilisées dans le cadre du
PCRS qu’elles appartiennent ou non au PCRS. Elle sert principalement à définir les
caractéristiques, attributs et relations communs à tous.

La classe contient :
Les orthophotoplans du PCRS sont regroupés par classes de précision :
Les orthophotoplans de classe [10 cm] pour la totalité de la surface couverte
Les orthophotoplans de classe [10 cm] pour les seules régions couvertes par les
corps de rue et pouvant posséder une précision géométrique dégradée pour les autres
régions
Les orthophotoplans n’entrant pas dans la classe [10 cm] et servant de fond de plan
informationnel pour les objets du PCRS rentrant dans cette classe.

Critères de sélection :
Ne sont de précision garantie sur une ortho-image que les objets effectivement modélisés
dans le modèle numérique d’élévation qui a servi à l’ortho-rectification de la collection de
clichés aériens. Les paramètres descriptifs du MNE utiles à la compréhension de la
qualité de l’ortho-image se trouvent dans le champ « description des éléments de qualité »
';

COMMENT ON COLUMN "init"."RasterPCRS"."dateAcquisition" IS
'La date et l''heure à laquelle la photo aérienne a été prise /
la date à laquelle la mission aérienne a eu lieu (au détail du jour ou celui du mois voire l''année)';
COMMENT ON COLUMN "init"."RasterPCRS"."dateRecette" IS
'La date à laquelle le maître d''ouvrage a intégré l''ortho-image dans le PCRS';
COMMENT ON COLUMN "init"."RasterPCRS"."descriptionElementsQualite" IS
'Description des paramètres externes donnant les clés de compréhension de la qualité de l''otho-imagerie
Comprend la liste des éléments qui sont effectivement redressés dans le MNE qui a servi à l''ortho-rectification
Peut inclure toute exigence de qualité supplémentaire exigée lors du vol
(masque de nuage, recouvrement, etc ...)';
COMMENT ON COLUMN "init"."RasterPCRS"."geometrie" IS
'Géométrie de type surfacique représentant l''emprise de la dalle';
COMMENT ON COLUMN "init"."RasterPCRS"."idPCRS" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "init"."RasterPCRS"."nomImage" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "init"."RasterPCRS"."precisionPlanimetriqueCorpsdeRue" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée aux informations photométriques sur l''orthophotoplan pour ce qui concerne
les surfaces couvertes pas les corps de rue';
COMMENT ON COLUMN "init"."RasterPCRS"."precisionPlanimetriqueZonesNaturelles" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée aux informations photométriques sur l''orthophotoplan pour ce qui concerne
les surfaces non couvertes pas les corps de rue';
COMMENT ON COLUMN "init"."RasterPCRS"."resolution" IS
'La taille au sol d''un pixel de l''ortho-image en cm';
COMMENT ON COLUMN "init"."RasterPCRS"."typeImage" IS
'Format de l''image
Les mime-types s''ils existent doivent être privilégiés.
Exemple : image/jp2';
COMMENT ON COLUMN "init"."RasterPCRS"."producteur" IS
'Producteur de la donnée
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des dalles d''un producteur donné.';


-- ---------------------------------
-- Classe : MasqueOpacitePCRS
-- ---------------------------------

--DROP INDEX if exists "init"."MasqueOpacitePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists "init"."MasqueOpacitePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists "init"."MasqueOpacitePCRS" cascade;

--CREATE SEQUENCE "init"."MasqueOpacitePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: MasqueOpacitePCRS
--DROP TABLE if exists "init"."MasqueOpacitePCRS" cascade;
CREATE TABLE "init"."MasqueOpacitePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"init"."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "init"."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "transparence" integer NOT NULL CHECK ("transparence" >= 0 AND "transparence" <= 100),
  CONSTRAINT "MasqueOpacitePCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS ("init"."HabillagePCRS")
WITH (
  OIDS=FALSE
);


-- Index: MasqueOpacitePCRS_geometrie_geomidx
--DROP INDEX if exists "init"."MasqueOpacitePCRS_geometrie_geomidx" cascade;
CREATE INDEX "MasqueOpacitePCRS_geometrie_geomidx"
  ON "init"."MasqueOpacitePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "init"."MasqueOpacitePCRS" IS
'Nom de la classe :
MasqueOpacitePCRS

Sous-classe de :
HabillagePCRS

Titre :
Masque d''opacité du PCRS

Définition :
Lorsqu''une Image est disponible, un masque d''opacité correspond à la définition
d''une zone surfacique pouvant s''étendre partiellement sur une ou plusieurs
orthophotographies et pour laquelle localement les objets vecteur viennent compléter l''image.
Afin de pouvoir visualiser le vecteur en superposition à l''image
sur cette zone, un masque blanc, partiellement transparent est superposé à l''image.

Modélisation :
Surface

Contraintes :
Classe essentielle pour l''utilisation d''orthophotoplans';

COMMENT ON COLUMN "init"."MasqueOpacitePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "init"."MasqueOpacitePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "init"."MasqueOpacitePCRS"."geometrie" IS
'Géométrie de type surfacique représentant la zone masquée';
COMMENT ON COLUMN "init"."MasqueOpacitePCRS"."transparence" IS
'Pourcentage de transparence inversement proportionnelle à l''opacité de la zone';


-- ---------------------------------
-- Creation des tables "partenaires"
-- ---------------------------------


-- ---------------------------------
-- Creation des tables "relations n-m"
-- ---------------------------------


-- ---------------------------------
-- Classe : RoleActeurPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists "init"."RoleActeurPCRS17Relation" cascade;
--CREATE TABLE "init"."RoleActeurPCRS17Relation"
--(
--  "acteur" character varying NOT NULL REFERENCES "init"."ActeurPCRS17Type" ("code"),
--  "role" character varying NOT NULL REFERENCES "init"."RoleNiveau2PCRS17Type" ("code")
--)
--WITH (
--  OIDS=FALSE
--);

--INSERT INTO "init"."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('01', '02');
--INSERT INTO "init"."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('02', '06');
--INSERT INTO "init"."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('03', '06');
--INSERT INTO "init"."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('04', '06');
--INSERT INTO "init"."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('05', '02');
--INSERT INTO "init"."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('05', '03');
--INSERT INTO "init"."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('05', '06');
--INSERT INTO "init"."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('06', '05');
--INSERT INTO "init"."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('06', '06');
--INSERT INTO "init"."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('07', '04');


-- ---------------------------------
-- Classe : InitiativeActeurPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists "init"."InitiativeActeurPCRS17Relation" cascade;
CREATE TABLE "init"."InitiativeActeurPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "initiative" character varying NOT NULL REFERENCES "init"."InitiativePCRS" ("idInitiative"),
  "acteur" character varying NOT NULL REFERENCES "init"."ActeurPCRS17Type" ("code"),
  "roleNiveau1" character varying NOT NULL REFERENCES "init"."RoleNiveau1PCRS17Type" ("code"),
  "roleNiveau2" character varying NOT NULL REFERENCES "init"."RoleNiveau2PCRS17Type" ("code")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."InitiativeActeurPCRS17Relation" IS
'Une initiative du PCRS constitue une zone dans laquelle différents acteurs se sont
coordonnés pour initier un PCRS.
Par leurs missions, les différents intervenants liés au PCRS peuvent être amenés
à se reconnaitre dans plusieurs rôles très distincts, chaque rôle étant lié à un
cas d''utilisation bien identifié au PCRS.';

-- ---------------------------------
-- Classe : InitiativeCommunePCRS17Relation
-- ---------------------------------

-- Table: InitiativeCommunePCRS17Relation
--DROP TABLE if exists "init"."InitiativeCommunePCRS17Relation" cascade;
CREATE TABLE "init"."InitiativeCommunePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "commune" character varying NOT NULL REFERENCES "init"."Commune" ("codeINSEE"),
  "initiative" character varying NOT NULL REFERENCES "init"."InitiativePCRS" ("idInitiative")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."InitiativeCommunePCRS17Relation" IS
'Une initiative PCRS concerne une ou plusieurs communes';

COMMENT ON COLUMN "init"."InitiativeCommunePCRS17Relation"."commune" IS
'';
COMMENT ON COLUMN "init"."InitiativeCommunePCRS17Relation"."initiative" IS
'';


-- ---------------------------------
-- Classe : EmpriseDisponibiliteCommunePCRS17Relation
-- ---------------------------------

-- Table: EmpriseDisponibiliteCommunePCRS17Relation
--DROP TABLE if exists "init"."EmpriseDisponibiliteCommunePCRS17Relation" cascade;
CREATE TABLE "init"."EmpriseDisponibiliteCommunePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "commune" character varying NOT NULL REFERENCES "init"."Commune" ("codeINSEE"),
  "empriseDisponibilite" character varying NOT NULL REFERENCES "init"."EmpriseDisponibilitePCRS" ("idEmpriseDisponibilite")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."EmpriseDisponibiliteCommunePCRS17Relation" IS
'Une emprise de disponibilité concerne une ou plusieurs communes';

COMMENT ON COLUMN "init"."EmpriseDisponibiliteCommunePCRS17Relation"."commune" IS
'';
COMMENT ON COLUMN "init"."EmpriseDisponibiliteCommunePCRS17Relation"."empriseDisponibilite" IS
'';

-- ---------------------------------
-- Classe : EmpriseEchangeCommunePCRS17Relation
-- ---------------------------------

-- Table: EmpriseEchangeCommunePCRS17Relation
--DROP TABLE if exists "init"."EmpriseEchangeCommunePCRS17Relation" cascade;
CREATE TABLE "init"."EmpriseEchangeCommunePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "commune" character varying NOT NULL REFERENCES "init"."Commune" ("codeINSEE"),
  "empriseEchange" character varying NOT NULL REFERENCES "init"."EmpriseEchangePCRS" ("idEmpriseEchange")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."EmpriseEchangeCommunePCRS17Relation" IS
'Une emprise d''échange est réalisé sur une ou plusieurs communes';

COMMENT ON COLUMN "init"."EmpriseEchangeCommunePCRS17Relation"."commune" IS
'';
COMMENT ON COLUMN "init"."EmpriseEchangeCommunePCRS17Relation"."empriseEchange" IS
'';


-- ---------------------------------
-- Classe : EmpriseDisponibiliteTronconVoiriePCRS17Relation
-- ---------------------------------

-- Table: EmpriseDisponibiliteTronconVoiriePCRS17Relation
--DROP TABLE if exists "init"."EmpriseDisponibiliteTronconVoiriePCRS17Relation" cascade;
CREATE TABLE "init"."EmpriseDisponibiliteTronconVoiriePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "tronconVoirie" character varying NOT NULL REFERENCES "init"."TronconVoirie" ("reference"),
  "empriseDisponibilite" character varying NOT NULL REFERENCES "init"."EmpriseDisponibilitePCRS" ("idEmpriseDisponibilite")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."EmpriseDisponibiliteTronconVoiriePCRS17Relation" IS
'Une emprise de disponibilité concerne un ou plusieurs tronçons de voirie.';

COMMENT ON COLUMN "init"."EmpriseDisponibiliteTronconVoiriePCRS17Relation"."tronconVoirie" IS
'';
COMMENT ON COLUMN "init"."EmpriseDisponibiliteTronconVoiriePCRS17Relation"."empriseDisponibilite" IS
'';

-- ---------------------------------
-- Classe : EmpriseEchangeTronconVoiriePCRS17Relation
-- ---------------------------------

-- Table: EmpriseEchangeTronconVoiriePCRS17Relation
--DROP TABLE if exists "init"."EmpriseEchangeTronconVoiriePCRS17Relation" cascade;
CREATE TABLE "init"."EmpriseEchangeTronconVoiriePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "tronconVoirie" character varying NOT NULL REFERENCES "init"."TronconVoirie" ("reference"),
  "empriseEchange" character varying NOT NULL REFERENCES "init"."EmpriseEchangePCRS" ("idEmpriseEchange")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."EmpriseEchangeTronconVoiriePCRS17Relation" IS
'Une emprise d''échange est localisée sur un ou plusieurs tronçons de voirie.';

COMMENT ON COLUMN "init"."EmpriseEchangeTronconVoiriePCRS17Relation"."tronconVoirie" IS
'';
COMMENT ON COLUMN "init"."EmpriseEchangeTronconVoiriePCRS17Relation"."empriseEchange" IS
'';


-- ---------------------------------
-- Classe : HabillageHabillagePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists "init"."HabillageHabillagePCRS17Relation" cascade;
CREATE TABLE "init"."HabillageHabillagePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "habillage1" character varying NOT NULL REFERENCES "init"."HabillagePCRS" ("idHabillage"),
  "habillage2" character varying NOT NULL REFERENCES "init"."HabillagePCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."HabillageHabillagePCRS17Relation" IS
'Une élément d''habillage peut être relié à 0, un ou plusieurs autres éléments d''habillage.';


-- ---------------------------------
-- Classe : ObjetVecteurPointLevePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists "init"."ObjetVecteurPointLevePCRS17Relation" cascade;
CREATE TABLE "init"."ObjetVecteurPointLevePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "objet" character varying NOT NULL REFERENCES "init"."ObjetVecteurPCRS" ("idObjet"),
  "pointLeve" character varying NOT NULL REFERENCES "init"."PointLevePCRS" ("numeroPoint")
  --CONSTRAINT "ObjetVecteurPointLevePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."ObjetVecteurPointLevePCRS17Relation" IS
'Un objet vecteur peut être lié à 0, un ou plusieurs points levés.';

-- ---------------------------------
-- Classe : AffleurantGeometriqueAffleurantLignesPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists "init"."AffleurantGeometriqueAffleurantLignesPCRS17Relation" cascade;
CREATE TABLE "init"."AffleurantGeometriqueAffleurantLignesPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantGeometrique" character varying NOT NULL REFERENCES "init"."AffleurantGeometriquePCRS" ("idObjet"),
  "affleurantLignes" character varying NOT NULL REFERENCES "init"."AffleurantLignesPCRS" ("idObjet")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."AffleurantGeometriqueAffleurantLignesPCRS17Relation" IS
'Un AffleurantGéométrique peut être lié à 0, un ou plusieurs AffleurantLignes.
Un caniveau peut être considéré comme un affleurant dont la géométrie est linéaire';

-- ---------------------------------
-- Classe : AffleurantGeometriqueAffleurantPointPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists "init"."AffleurantGeometriqueAffleurantPointPCRS17Relation" cascade;
CREATE TABLE "init"."AffleurantGeometriqueAffleurantPointPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantGeometrique" character varying NOT NULL REFERENCES "init"."AffleurantGeometriquePCRS" ("idObjet"),
  "affleurantPoint" character varying NOT NULL REFERENCES "init"."AffleurantPointPCRS" ("idObjet")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."AffleurantGeometriqueAffleurantPointPCRS17Relation" IS
'Un AffleurantGéométrique peut être lié à 0, un ou plusieurs AffleurantPoint.
Un poteau supportant le passage aérien d''un ou plusieurs réseaux ou une signalisation
tricolore peut être considéré comme un affleurant dont la géométrie est ponctuelle.';

-- ---------------------------------
-- Classe : AffleurantGeometriqueAffleurantEnveloppePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists "init"."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation" cascade;
CREATE TABLE "init"."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantGeometrique" character varying NOT NULL REFERENCES "init"."AffleurantGeometriquePCRS" ("idObjet"),
  "affleurantEnveloppe" character varying NOT NULL REFERENCES "init"."AffleurantEnveloppePCRS" ("idObjet")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation" IS
'Un AffleurantGéométrique peut être lié à 0, un ou plusieurs AffleurantEnveloppe.
La version actuelle du PCRS recommande l''utilisation de la classe AffleurantEnveloppe,
éventuellement complétée par un habillage HabillageLignes pour le dessin de
l''affleurant à l''intérieur de son enveloppe.';

-- ---------------------------------
-- Classe : AffleurantEnveloppeHabillageLignesPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists "init"."AffleurantEnveloppeHabillageLignesPCRS17Relation" cascade;
CREATE TABLE "init"."AffleurantEnveloppeHabillageLignesPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantEnveloppe" character varying NOT NULL REFERENCES "init"."AffleurantEnveloppePCRS" ("idObjet"),
  "habillageLignes" character varying NOT NULL REFERENCES "init"."HabillageLignesPCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."AffleurantEnveloppeHabillageLignesPCRS17Relation" IS
'Un AffleurantEnveloppe peut être lié à 0, un ou plusieurs HabillageLignes.
La version actuelle du PCRS recommande l''utilisation de la classe AffleurantEnveloppe,
éventuellement complétée par un habillage HabillageLignes pour le dessin de
l''affleurant à l''intérieur de son enveloppe.';

-- ---------------------------------
-- Classe : RasterMasqueOpacitePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists "init"."RasterMasqueOpacitePCRS17Relation";
CREATE TABLE "init"."RasterMasqueOpacitePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "raster" character varying NOT NULL REFERENCES "init"."RasterPCRS" ("idPCRS"),
  "masqueOpacite" character varying NOT NULL REFERENCES "init"."MasqueOpacitePCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE "init"."RasterMasqueOpacitePCRS17Relation" IS
'Un AffleurantEnveloppe peut être lié à 0, un ou plusieurs HabillageLignes.
La version actuelle du PCRS recommande l''utilisation de la classe AffleurantEnveloppe,
éventuellement complétée par un habillage HabillageLignes pour le dessin de
l''affleurant à l''intérieur de son enveloppe.';
