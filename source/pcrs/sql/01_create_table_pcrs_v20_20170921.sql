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
DROP TABLE if exists a_pcrs."EmpriseDisponibilitePCRS" cascade;
DROP TABLE if exists a_pcrs."InitiativePCRS" cascade;
-- Publication
DROP TABLE if exists a_pcrs."EmpriseEchangePCRS" cascade;
DROP TABLE if exists a_pcrs."TronconVoirie" cascade;
DROP TABLE if exists a_pcrs."Commune" cascade;
-- Habillage
DROP TABLE if exists a_pcrs."HabillagePCRS" cascade;
DROP TABLE if exists a_pcrs."HabillageSymbolePCRS" cascade;
DROP TABLE if exists a_pcrs."HabillageTextePCRS" cascade;
DROP TABLE if exists a_pcrs."HabillageLignesPCRS" cascade;
DROP TABLE if exists a_pcrs."HabillagePointsPCRS" cascade;
DROP TABLE if exists a_pcrs."HabillageEnveloppePCRS" cascade;
-- Topographie
DROP TABLE if exists a_pcrs."NomVoiriePCRS" cascade;
DROP TABLE if exists a_pcrs."NumeroVoiriePCRS" cascade;
DROP TABLE if exists a_pcrs."PointLevePCRS" cascade;
DROP TABLE if exists a_pcrs."PointCanevasPCRS" cascade;
-- Multi
DROP TABLE if exists a_pcrs."ObjetVecteurPCRS" cascade;
DROP TABLE if exists a_pcrs."ObjetGeneriquePCRS" cascade;
-- Raster
DROP TABLE if exists a_pcrs."RasterPCRS" cascade;
DROP TABLE if exists a_pcrs."MasqueOpacitePCRS" cascade;
-- Voirie
DROP TABLE if exists a_pcrs."LimiteVoiriePCRS" cascade;
-- Voirie ou Bati
DROP TABLE if exists a_pcrs."MarcheEscalierPCRS" cascade;
-- Bati
DROP TABLE if exists a_pcrs."FacadePCRS" cascade;
DROP TABLE if exists a_pcrs."ProeminenceBatiPCRS" cascade;
DROP TABLE if exists a_pcrs."SeuilPCRS" cascade;
-- Clotures
DROP TABLE if exists a_pcrs."MurPCRS" cascade;
DROP TABLE if exists a_pcrs."PilierPCRS" cascade;
DROP TABLE if exists a_pcrs."PilierRegulierPCRS" cascade;
DROP TABLE if exists a_pcrs."PilierParticulierPCRS" cascade;
-- Ferroviaire
DROP TABLE if exists a_pcrs."QuaiRailPCRS" cascade;
DROP TABLE if exists a_pcrs."RailPCRS" cascade;
-- Végétal
DROP TABLE if exists a_pcrs."ArbrePCRS" cascade;
-- Ouvrage d'Art
DROP TABLE if exists a_pcrs."PilePontPCRS" cascade;
DROP TABLE if exists a_pcrs."QuaiFluvioMaritimePCRS" cascade;
-- Affleurant
DROP TABLE if exists a_pcrs."AffleurantPCRS" cascade;
DROP TABLE if exists a_pcrs."AffleurantGeometriquePCRS" cascade;
DROP TABLE if exists a_pcrs."AffleurantSymbolePCRS" cascade;
DROP TABLE if exists a_pcrs."AffleurantEnveloppePCRS" cascade;
DROP TABLE if exists a_pcrs."AffleurantPointPCRS" cascade;
DROP TABLE if exists a_pcrs."AffleurantLignesPCRS" cascade;


-- --- Enumeration 1

DROP TABLE if exists a_pcrs."CategorieThematiquePCRSType" cascade;
DROP TABLE if exists a_pcrs."SectionPilierPCRSType" cascade;
DROP TABLE if exists a_pcrs."CategoriePlacementPCRSType" cascade;
DROP TABLE if exists a_pcrs."ProprieteEspaceType" cascade;
DROP TABLE if exists a_pcrs."TexteJustificationPCRSType" cascade;
DROP TABLE if exists a_pcrs."QualiteCategorisationPCRSType" cascade;
DROP TABLE if exists a_pcrs."NatureAffleurantPCRSType" cascade;
DROP TABLE if exists a_pcrs."NatureReseauPCRSType" cascade;
DROP TABLE if exists a_pcrs."CategoriePrecisionPCRSType" cascade;
DROP TABLE if exists a_pcrs."CategorieMurPCRSType" cascade;


-- --- Enumeration 2

DROP TABLE if exists a_pcrs."NatureReseauPCRS17Type" cascade;
DROP TABLE if exists a_pcrs."CodeCouleurNormePCRS17Type" cascade;
DROP TABLE if exists a_pcrs."CategoriePrecisionPCRS17Type" cascade;
DROP TABLE if exists a_pcrs."CalendrierPCRS17Type" cascade;
DROP TABLE if exists a_pcrs."NatureEmprisePCRS17Type" cascade;
-- DROP TABLE if exists a_pcrs."CotationPCRS17Type";
DROP TABLE if exists a_pcrs."RoleNiveau1PCRS17Type" CASCADE;
DROP TABLE if exists a_pcrs."RoleNiveau2PCRS17Type" CASCADE;
DROP TABLE if exists a_pcrs."ActeurPCRS17Type" CASCADE;
DROP TABLE if exists a_pcrs."CategorieObjetPCRS17Type" cascade;

-- --- Relation

--DROP TABLE if exists a_pcrs."RoleActeurPCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."InitiativeActeurPCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."InitiativeCommunePCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."EmpriseDisponibiliteCommunePCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."EmpriseEchangeCommunePCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."EmpriseDisponibiliteTronconVoiriePCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."EmpriseEchangeTronconVoiriePCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."HabillageHabillagePCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."ObjetVecteurPointLevePCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."AffleurantGeometriqueAffleurantLignesPCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."AffleurantGeometriqueAffleurantPointPCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."AffleurantEnveloppeHabillageLignesPCRS17Relation" CASCADE;
DROP TABLE if exists a_pcrs."RasterMasqueOpacitePCRS17Relation" CASCADE;

-- ---------------------------------
-- Creation des tables "liste de valeurs / énumérations"
-- ---------------------------------


-- ---------------------------------
-- Classe : CategorieThematiquePCRSType
-- ---------------------------------

-- Table: CategorieThematiquePCRSType
--DROP TABLE if exists a_pcrs."CategorieThematiquePCRSType" cascade;
CREATE TABLE a_pcrs."CategorieThematiquePCRSType"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "CategorieThematiquePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('00', 'A déterminer', 'Concerne essentiellement les objets génériques dont la thématique, liée en général à la classe d''objet, ne peut être déterminée à partir de la nomenclature lors de l''initialisation du PCRS.');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('01', 'Topographie', 'Concerne les objets spécifiques à la topographie, et notamment les points de canevas et les points de levés topographiques');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('02', 'Bâti', 'Concerne les objets liés au bâti sur le domaine public ou en limite de celui-ci, et en particulier les seuils de bâtiments, les façades, les amorces de bâti, les proéminences de bâti, et les escaliers.');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('03', 'Voirie', 'Concerne les objets de types voies de circulation terrestre non ferroviaire du domaine public, et comprenant les limites apparentes de voirie et escaliers');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('04', 'Ferroviaire', 'Concerne aussi bien les rails de SNCF Réseau que ceux liés à un transport public de type tramway ou tram-train et situés sur le domaine public');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('05', 'Clôture', 'Concerne les objets destinés à la clôture d''un espace et ayant une limite apparente avec le domaine public, dont les murs de tous types et parapets, surmontés ou non d''une clôture, les socles de clôtures, et les piliers.');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('06', 'Végétal', 'Concerne les objets végétaux de type haies et espaces verts, ainsi que les arbres');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('07', 'Ouvrage d Art', 'Concerne les ouvrages d''art du domaine public (ex : piles de ponts)');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('08', 'Hydrographie', 'Concerne l''hydrographie');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('09', 'Orographie', 'Concerne l''orographie');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('10', 'Affleurant', 'Concerne un élément de réseau affleurant');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('11', 'Raster', 'Concerne une orthoimage (par exemple masque d''opacité)');
INSERT INTO a_pcrs."CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('99', 'Non définie', 'La thématique n''est pas définie dans les données sources du gestionnaire du PCRS');

COMMENT ON TABLE a_pcrs."CategorieThematiquePCRSType" IS
'Code permettant de décrire la thématique rattachée à un objet donné du PCRS';


-- ---------------------------------
-- Classe : SectionPilierPCRSType
-- ---------------------------------

-- Table: SectionPilierPCRSType
--DROP TABLE if exists a_pcrs."SectionPilierPCRSType" cascade;
CREATE TABLE a_pcrs."SectionPilierPCRSType"
(
  code character varying(2) unique,
  valeur character varying(20),
  definition character varying(255),
  CONSTRAINT "SectionPilierPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."SectionPilierPCRSType" (code, valeur, definition) VALUES ('00', 'Pilier autre', 'Autre type de pilier');
INSERT INTO a_pcrs."SectionPilierPCRSType" (code, valeur, definition) VALUES ('01', 'Pilier carré', 'Pilier à section carrée');
INSERT INTO a_pcrs."SectionPilierPCRSType" (code, valeur, definition) VALUES ('02', 'Pilier rectangulaire', 'Pilier à section rectangulaire');
INSERT INTO a_pcrs."SectionPilierPCRSType" (code, valeur, definition) VALUES ('03', 'Pilier circulaire', 'Pilier à section circulaire');

COMMENT ON TABLE a_pcrs."SectionPilierPCRSType" IS
'Code permettant de décrire le type de pilier.';


-- ---------------------------------
-- Classe : CategoriePlacementPCRSType
-- ---------------------------------

-- Table: CategoriePlacementPCRSType
--DROP TABLE if exists a_pcrs."CategoriePlacementPCRSType" cascade;
CREATE TABLE a_pcrs."CategoriePlacementPCRSType"
(
  code character varying(2) unique,
  valeur character varying(21),
  definition character varying(255),
  CONSTRAINT "CategoriePlacementPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('01', 'Sans Repositionnement', 'L''élément d''habillage n''a pas été repositionné par rapport à la source de données dont il est issu.');
INSERT INTO a_pcrs."CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('02', 'Axe Voirie', 'L''élément d''habillage est positionné sur ou très proche d''un axe de voirie ');
INSERT INTO a_pcrs."CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('03', 'Limite Voirie', 'L''élément d''habillage est positionné en limite de voirie');
INSERT INTO a_pcrs."CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('04', 'Hors Voirie', 'L''élément d''habillage est positionné en dehors des limites de voirie');
INSERT INTO a_pcrs."CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('05', 'Parcelle', 'L''élément d''habillage est positionné à l''intérieur d''une parcelle et proche des limites de voirie');

COMMENT ON TABLE a_pcrs."CategoriePlacementPCRSType" IS
'Code permettant de décrire le type de positionnement des éléments d''habillage.';


-- ---------------------------------
-- Classe : ProprieteEspaceType
-- ---------------------------------

-- Table: ProprieteEspaceType
--DROP TABLE if exists a_pcrs."ProprieteEspaceType" cascade;
CREATE TABLE a_pcrs."ProprieteEspaceType"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "ProprieteEspaceType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."ProprieteEspaceType" (code, valeur, definition) VALUES ('01', 'Espace Public', 'L''espace considéré fait partie du domaine public');
INSERT INTO a_pcrs."ProprieteEspaceType" (code, valeur, definition) VALUES ('02', 'Espace Privé', 'L''espace considéré fait partie du domaine privé');

COMMENT ON TABLE a_pcrs."ProprieteEspaceType" IS
'Code permettant de décrire la nature de l''espace au sens distinction de l''espce public / espace privé.';


-- ---------------------------------
-- Classe : TexteJustificationPCRSType
-- ---------------------------------

-- Table: TexteJustificationPCRSType
--DROP TABLE if exists a_pcrs."TexteJustificationPCRSType" cascade;
CREATE TABLE a_pcrs."TexteJustificationPCRSType"
(
  code character varying(1) unique,
  valeur character varying(6),
  definition character varying(255),
  CONSTRAINT "TexteJustificationPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."TexteJustificationPCRSType" (code, valeur, definition) VALUES ('G', 'Gauche', 'Le texte est justifé à gauche');
INSERT INTO a_pcrs."TexteJustificationPCRSType" (code, valeur, definition) VALUES ('C', 'Centré', 'Le texte est centré');
INSERT INTO a_pcrs."TexteJustificationPCRSType" (code, valeur, definition) VALUES ('D', 'Droite', 'Le texte est justifé à droite');

COMMENT ON TABLE a_pcrs."TexteJustificationPCRSType" IS
'Code permettant de justifier un texte d''habillage.';


-- ---------------------------------
-- Classe : QualiteCategorisationPCRSType
-- ---------------------------------

-- Table: QualiteCategorisationPCRSType
--DROP TABLE if exists a_pcrs."QualiteCategorisationPCRSType" cascade;
CREATE TABLE a_pcrs."QualiteCategorisationPCRSType"
(
  code character varying(2) unique,
  valeur character varying(27),
  definition character varying(255),
  CONSTRAINT "QualiteCategorisationPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('01', 'Très fiable / Conforme PCRS', 'La catégorisation de l''objet du PCRS est conforme aux spécifications');
INSERT INTO a_pcrs."QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('02', 'Moyennement Fiable ', 'La catégorisation de l''objet du PCRS est moyennement fiable');
INSERT INTO a_pcrs."QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('03', 'Peu fiable', 'La catégorisation de l''objet du PCRS est peu fiable');

COMMENT ON TABLE a_pcrs."QualiteCategorisationPCRSType" IS
'Code permettant de décrire de façon extensible la qualité de catégorisation des objets du PCRS.';


-- ---------------------------------
-- Classe : NatureAffleurantPCRSType
-- ---------------------------------

-- Table: NatureAffleurantPCRSType
--DROP TABLE if exists a_pcrs."NatureAffleurantPCRSType" cascade;
CREATE TABLE a_pcrs."NatureAffleurantPCRSType"
(
  code character varying(2) unique,
  valeur character varying(32),
  definition character varying(255),
  CONSTRAINT "NatureAffleurant_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

--INSERT INTO a_pcrs."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('00', 'Non défini', 'Les informations collectées ne permettent pas d identifier sans ambiguité la nature de l affleurant');
INSERT INTO a_pcrs."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('01', 'Avaloir', 'Dispositif à garde d''eau destiné principalement à recueillir les eaux de ruisselement ou de nettoyage des sols');
INSERT INTO a_pcrs."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('02', 'Boîte, Coffret, Armoire', 'Boîte, coffret ou armoire technique qui centralise des éléments de réseaux');
INSERT INTO a_pcrs."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('03', 'Tampon, Plaque, Chambre', 'Couvercle d''un regard d''assainissement ou d''une chambre souterraine de génie civil pour le passage des réseaux et présent notamment sur les chaussées');
INSERT INTO a_pcrs."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('04', 'Branchement, Vanne, Bouche à clé', 'Accessoire de robinetterie permettant de manoeuvrer depuis la chaussée, une vanne ou un robinet de branchement enterré');
INSERT INTO a_pcrs."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('05', 'Bouche incendie, Poteau incendie', 'Permet aux services de lutte contre l''incendie (pompiers) de puiser l''eau du réseau');
INSERT INTO a_pcrs."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('06', 'Poteau', 'Poteau supportant le passage aérien d''un ou plusieurs réseaux ou une signalisation tricolore');
INSERT INTO a_pcrs."NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('07', 'Poteau d éclairage', 'Borne lumineuse pour la mise en valeur / l''éclairage de l''espace public');

COMMENT ON TABLE a_pcrs."NatureAffleurantPCRSType" IS
'Code permettant de décrire de façon extensible la nature d''un affleurant de réseaux.';


-- ---------------------------------
-- Classe : NatureReseauPCRSType
-- ---------------------------------

-- Table: NatureReseauPCRSType
--DROP TABLE if exists a_pcrs."NatureReseauPCRSType" cascade;
CREATE TABLE a_pcrs."NatureReseauPCRSType"
(
  code character varying(8) unique,
  valeur character varying(33),
  CONSTRAINT "NatureReseauPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('00', 'Non défini');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('ELEC', 'Electricité');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('ELECECL', 'Eclairage public');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('ELECSLT', 'Signalisation lumineuse tricolore');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('ELECBT', 'Electricité basse tension');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('ELECHT', 'Electricité haute tension');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('GAZ', 'Gaz');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('MULT', 'Multi réseaux');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('CHIM', 'Produits chimiques');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('COM', 'Télécom');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('AEP', 'Eau Potable');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('ASSA', 'Assainissement et pluvial');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('ASSAEP', 'Eaux pluviales');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('ASSAEU', 'Eaux usées');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('ASSARU', 'Réseau unitaire');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('DECH', 'Déchets');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('CHAU', 'Chauffage et climatisation');
INSERT INTO a_pcrs."NatureReseauPCRSType" (code, valeur) VALUES ('INCE', 'Incendie');

COMMENT ON TABLE a_pcrs."NatureReseauPCRSType" IS
'Code permettant de décrire de façon extensible la nature d''un réseau.';


-- ---------------------------------
-- Classe : CategoriePrecisionPCRSType
-- ---------------------------------

-- Table: CategoriePrecisionPCRSType
--DROP TABLE if exists a_pcrs."CategoriePrecisionPCRSType" cascade;
CREATE TABLE a_pcrs."CategoriePrecisionPCRSType"
(
  code character varying(3) unique,
  valeur character varying(17),
  CONSTRAINT "CategoriePrecisionPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."CategoriePrecisionPCRSType" (code, valeur) VALUES ('002', 'moins de 2 cm');
INSERT INTO a_pcrs."CategoriePrecisionPCRSType" (code, valeur) VALUES ('005', 'de 2 à 5 cm');
INSERT INTO a_pcrs."CategoriePrecisionPCRSType" (code, valeur) VALUES ('010', 'de 5 à 10 cm');
INSERT INTO a_pcrs."CategoriePrecisionPCRSType" (code, valeur) VALUES ('040', 'de 10 à 40 cm');
INSERT INTO a_pcrs."CategoriePrecisionPCRSType" (code, valeur) VALUES ('150', 'de 40 à 150 cm');
INSERT INTO a_pcrs."CategoriePrecisionPCRSType" (code, valeur) VALUES ('999', 'au delà de 150 cm');

COMMENT ON TABLE a_pcrs."CategoriePrecisionPCRSType" IS
'Code permettant de décrire un intervalle de précision exprimée en cm associée au levé d''un objet ou d''un affleurant du PCRS';


-- ---------------------------------
-- Classe : CategorieMurPCRSType
-- ---------------------------------

-- Table: CategorieMurPCRSType
--DROP TABLE if exists  a_pcrs."CategorieMurPCRSType" cascade;
CREATE TABLE a_pcrs."CategorieMurPCRSType"
(
  code character varying(2) unique,
  valeur character varying(22),
  CONSTRAINT "CategorieMurPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

--INSERT INTO a_pcrs."CategorieMurPCRSType" (code, valeur) VALUES ('00', 'Non défini');
INSERT INTO a_pcrs."CategorieMurPCRSType" (code, valeur) VALUES ('01', 'Mur');
INSERT INTO a_pcrs."CategorieMurPCRSType" (code, valeur) VALUES ('02', 'Mur de soutènement');
INSERT INTO a_pcrs."CategorieMurPCRSType" (code, valeur) VALUES ('03', 'Mur bahut');
INSERT INTO a_pcrs."CategorieMurPCRSType" (code, valeur) VALUES ('04', 'Mur bahut avec clôture');
INSERT INTO a_pcrs."CategorieMurPCRSType" (code, valeur) VALUES ('05', 'Parapet');
--INSERT INTO a_pcrs."CategorieMurPCRSType" (code, valeur) VALUES ('06', 'Clôture sur socle');
INSERT INTO a_pcrs."CategorieMurPCRSType" (code, valeur) VALUES ('06', 'Enrochement');

COMMENT ON TABLE a_pcrs."CategorieMurPCRSType" IS
'Code permettant de décrire les différents types de mur.';





-- ---------------------------------
-- Classe : CodeCouleurNormePCRS17Type
-- ---------------------------------

-- Table: CodeCouleurNormePCRS17Type
-- DROP TABLE if exists a_pcrs."CodeCouleurNormePCRS17Type" cascade;
CREATE TABLE a_pcrs."CodeCouleurNormePCRS17Type"
(
  code character varying(6) unique,
  valeur character varying(11),
  definition character varying(255),
  CONSTRAINT "CodeCouleurNormePCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Rouge', '255,0,0', 'Electricité BT, HTA ou HTB, éclairage, signalisation routière et feux tricolores');
INSERT INTO a_pcrs."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Jaune', '255,255,0', 'Gaz combustible (transport ou distribution) et Hydrocarbures');
INSERT INTO a_pcrs."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Orange', '255,100,0', 'Produits chimiques');
INSERT INTO a_pcrs."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Bleu', '0,0,255', 'Eau potable');
INSERT INTO a_pcrs."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Marron', '125,73,0', 'Assainissement et Pluvial');
INSERT INTO a_pcrs."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Violet', '100,0,100', 'Chauffage et Climatisation');
INSERT INTO a_pcrs."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Vert', '0,255,0', 'Communications électroniques et électricité TBT');
INSERT INTO a_pcrs."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Rose', '255,0,139', 'Emprise multi-réseaux');
INSERT INTO a_pcrs."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Blanc', '255,255,255', 'Non-défini');
INSERT INTO a_pcrs."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('None', '130,130,130', 'Non-défini');

COMMENT ON TABLE a_pcrs."CodeCouleurNormePCRS17Type" IS
'Code permettant de décrire la couleur associée à une nature de réseau. cf norme NF P 98-332';


-- ---------------------------------
-- Classe : NatureReseauPCRS17Type
-- ---------------------------------

-- Table: NatureReseauPCRS17Type
--DROP TABLE if exists a_pcrs."NatureReseauPCRS17Type" cascade;
CREATE TABLE a_pcrs."NatureReseauPCRS17Type"
(
  code character varying(8) unique,
  valeur character varying(33),
  "valeurCouleurRepresentation" character varying(11),
  "codeCouleurNorme" character varying(6) REFERENCES a_pcrs."CodeCouleurNormePCRS17Type" (code),
  CONSTRAINT "NatureReseauPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('00', 'Non défini', '130,130,130', 'None');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELEC', 'Electricité', '255,0,0', 'Rouge');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECECL', 'Eclairage public', '255,0,0', 'Rouge');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECSLT', 'Signalisation lumineuse tricolore', '255,0,0', 'Blanc');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECBT', 'Electricité basse tension', '255,0,0', 'Rouge');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECHT', 'Electricité haute tension', '255,0,0', 'Rouge');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('GAZ', 'Gaz', '255,255,0', 'Jaune');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('MULT', 'Multi réseaux', '255,0,139', 'Rose');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('CHIM', 'Produits chimiques', '255,100,0', 'Orange');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('COM', 'Télécom', '0,255,0', 'Vert');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('AEP', 'Eau Potable', '0,0,255', 'Bleu');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSA', 'Assainissement et pluvial', '125,73,0', 'Marron');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSAEP', 'Eaux pluviales', '125,73,0', 'Marron');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSAEU', 'Eaux usées', '125,73,0', 'Marron');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSARU', 'Réseau unitaire', '125,73,0', 'Marron');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('DECH', 'Déchets', '130,130,130', 'None');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('CHAU', 'Chauffage et climatisation', '100,0,100', 'Violet');
INSERT INTO a_pcrs."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('INCE', 'Incendie', '0,0,255', 'Bleu');

COMMENT ON TABLE a_pcrs."NatureReseauPCRS17Type" IS
'Code permettant de décrire de façon extensible la nature d''un réseau.';


-- ---------------------------------
-- Classe : CategoriePrecisionPCRS17Type
-- ---------------------------------

-- Table: CategoriePrecisionPCRS17Type
--DROP TABLE if exists a_pcrs."CategoriePrecisionPCRS17Type" cascade;
CREATE TABLE a_pcrs."CategoriePrecisionPCRS17Type"
(
  code character varying(3) unique,
  valeur character varying(17),
  CONSTRAINT "CategoriePrecisionPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('002', 'moins de 2 cm');
INSERT INTO a_pcrs."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('005', 'de 2 à 5 cm');
INSERT INTO a_pcrs."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('010', 'de 5 à 10 cm');
INSERT INTO a_pcrs."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('040', 'de 10 à 40 cm');
INSERT INTO a_pcrs."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('100', 'de 40 à 100 cm');
INSERT INTO a_pcrs."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('150', 'de 100 à 150 cm');
INSERT INTO a_pcrs."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('999', 'au delà de 150 cm');

COMMENT ON TABLE a_pcrs."CategoriePrecisionPCRS17Type" IS
'Code permettant de décrire un intervalle de précision exprimée en cm associée au levé d''un objet ou d''un affleurant du PCRS';


-- ---------------------------------
-- Classe : CalendrierPCRS17Type
-- ---------------------------------

-- Table: CalendrierPCRS17Type
-- DROP TABLE if exists a_pcrs."CalendrierPCRS17Type" cascade;
CREATE TABLE a_pcrs."CalendrierPCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(24),
  CONSTRAINT "CalendrierPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."CalendrierPCRS17Type" (code, valeur) VALUES ('01', 'Livré, Mis A Disposition');
INSERT INTO a_pcrs."CalendrierPCRS17Type" (code, valeur) VALUES ('02', 'Actualisation En Cours');
INSERT INTO a_pcrs."CalendrierPCRS17Type" (code, valeur) VALUES ('03', 'En Projet, Planifié');
INSERT INTO a_pcrs."CalendrierPCRS17Type" (code, valeur) VALUES ('04', 'Non Planifié');
--
COMMENT ON TABLE a_pcrs."CalendrierPCRS17Type" IS
'Code permettant de décrire la date de disponibilité du PCRS.';


-- ---------------------------------
-- Classe : NatureEmprisePCRS17Type
-- ---------------------------------

-- Table: NatureEmprisePCRS17Type
--DROP TABLE if exists a_pcrs."NatureEmprisePCRS17Type" cascade;
CREATE TABLE a_pcrs."NatureEmprisePCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(21),
  CONSTRAINT "NatureEmprisePCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."NatureEmprisePCRS17Type" (code, valeur) VALUES ('01', 'Couloir');
INSERT INTO a_pcrs."NatureEmprisePCRS17Type" (code, valeur) VALUES ('02', 'Opération');
INSERT INTO a_pcrs."NatureEmprisePCRS17Type" (code, valeur) VALUES ('03', 'Carreau');
INSERT INTO a_pcrs."NatureEmprisePCRS17Type" (code, valeur) VALUES ('04', 'Limite Administrative');
INSERT INTO a_pcrs."NatureEmprisePCRS17Type" (code, valeur) VALUES ('05', 'Raster');
INSERT INTO a_pcrs."NatureEmprisePCRS17Type" (code, valeur) VALUES ('06', 'Masque');

COMMENT ON TABLE a_pcrs."NatureEmprisePCRS17Type" IS
'Code permettant de décrire la nature de l''emprise d''echange du PCRS.';


-- ---------------------------------
-- Classe : CotationPCRS17Type
-- ---------------------------------

-- Table: CotationPCRS17Type
-- DROP TABLE if exists a_pcrs."CotationPCRS17Type" cascade;
-- CREATE TABLE a_pcrs."CotationPCRS17Type"
-- (
--   code character varying(2) unique,
--   valeur character varying(38),
--   CONSTRAINT "CotationPCRS17Type_pkey" PRIMARY KEY (code)
-- )
-- WITH (
--   OIDS=FALSE
-- );
--
-- INSERT INTO a_pcrs."CotationPCRS17Type" (code, valeur) VALUES ('01', 'Non Utilisable Pour Coter');
-- INSERT INTO a_pcrs."CotationPCRS17Type" (code, valeur) VALUES ('02', 'Cotation Planimetrique Uniquement');
-- INSERT INTO a_pcrs."CotationPCRS17Type" (code, valeur) VALUES ('03', 'Cotation Planimetrique Et Altimetrique');
--
-- COMMENT ON TABLE a_pcrs."CotationPCRS17Type" IS
-- 'Code permettant de décrire si l''objet peut etre utilisable pour coter.';


-- ---------------------------------
-- Classe : RoleNiveau1PCRS17Type
-- ---------------------------------

-- Table: RoleNiveau1PCRS17Type
--DROP TABLE if exists a_pcrs."RoleNiveau1PCRS17Type" cascade;
CREATE TABLE a_pcrs."RoleNiveau1PCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(38),
  caracteristique character varying(750),
  CONSTRAINT "RoleNiveau1PCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('01', 'Echelon national du PCRS',
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
INSERT INTO a_pcrs."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('02', 'Gestionnaire du PCRS',
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
INSERT INTO a_pcrs."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('03', 'Producteur du PCRS',
'Produit un ou plusieurs composant(s) du PCRS
comme le bâti, la voirie, les affleurants etc...
Il contrôle ses données pour s''assurer qu''elles correspondent
à minima à la qualité requise dans la règlementation, et le cas échéant,
aux spécifications techniques du gestionnaire du PCRS.');
INSERT INTO a_pcrs."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('04', 'Utilisateur du PCRS',
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

COMMENT ON TABLE a_pcrs."RoleNiveau1PCRS17Type" IS
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
--DROP TABLE if exists a_pcrs."RoleNiveau2PCRS17Type" cascade;
CREATE TABLE a_pcrs."RoleNiveau2PCRS17Type"
(
  "roleNiveau1" character varying(2) NOT NULL REFERENCES a_pcrs."RoleNiveau1PCRS17Type" ("code"),
  code character varying(2) unique,
  valeur character varying(40),
  CONSTRAINT "RoleNiveau2PCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('01', '01', 'Echelon national du PCRS');
INSERT INTO a_pcrs."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('02', '02', 'Gestionnaire du PCRS');
INSERT INTO a_pcrs."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '03', 'Gestionnaire Référentiel Voirie');
INSERT INTO a_pcrs."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '04', 'Gestionnaire Foncier');
INSERT INTO a_pcrs."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '05', 'Gestionnaire Voirie');
INSERT INTO a_pcrs."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '06', 'Exploitant de réseaux');
INSERT INTO a_pcrs."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '07', 'Autre Gestionnaire');
INSERT INTO a_pcrs."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '08', 'Producteur d orthophotos');
INSERT INTO a_pcrs."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('04', '09', 'Maitre d''ouvrage ou executant de travaux');

COMMENT ON TABLE a_pcrs."RoleNiveau2PCRS17Type" IS
'Code permettant de décrire le role de l''acteur.';


-- ---------------------------------
-- Classe : ActeurPCRS17Type
-- ---------------------------------

-- Table: ActeurPCRS17Type
--DROP TABLE if exists a_pcrs."ActeurPCRS17Type" cascade;
CREATE TABLE a_pcrs."ActeurPCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(255),
  CONSTRAINT "ActeurPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."ActeurPCRS17Type" (code, valeur) VALUES ('01', 'Soluris 17');
INSERT INTO a_pcrs."ActeurPCRS17Type" (code, valeur) VALUES ('02', 'Enedis');
INSERT INTO a_pcrs."ActeurPCRS17Type" (code, valeur) VALUES ('03', 'SDE');
INSERT INTO a_pcrs."ActeurPCRS17Type" (code, valeur) VALUES ('04', 'SDEER');
INSERT INTO a_pcrs."ActeurPCRS17Type" (code, valeur) VALUES ('05', 'CDA');
INSERT INTO a_pcrs."ActeurPCRS17Type" (code, valeur) VALUES ('06', 'VLR');
INSERT INTO a_pcrs."ActeurPCRS17Type" (code, valeur) VALUES ('07', 'DGFiP');


COMMENT ON TABLE a_pcrs."ActeurPCRS17Type" IS
'Code permettant de décrire l''acteur.';


-- ---------------------------------
-- Classe : CategorieObjetPCRS17Type
-- ---------------------------------

-- Table: CategorieObjetPCRS17Type
--DROP TABLE if exists a_pcrs."CategorieObjetPCRS17Type" cascade;
CREATE TABLE a_pcrs."CategorieObjetPCRS17Type"
(
  "idCategorieObjet" character varying(2) not null,
  "boolClasseAbstraite" character varying(1) not null,
  "nomClasse" character varying(38) unique,
  "nomClasseMere" character varying(38),
  "thematique" character varying(2) NOT NULL REFERENCES a_pcrs."CategorieThematiquePCRSType" ("code"),
  CONSTRAINT "CategorieObjetPCRS17Type_pkey" PRIMARY KEY ("nomClasse")
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('01', 0, 'InitiativePCRS', '', '99');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('02', 0, 'EmpriseDisponibilitePCRS', '', '99');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('03', 0, 'EmpriseEchangePCRS', '', '99');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('04', 0, 'Commune', '', '99');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('05', 0, 'TronconVoirie', '', '99');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('06', 0, 'HabillagePCRS', '', '00');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('07', 0, 'HabillagePointsPCRS', 'HabillagePCRS', '00');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('08', 0, 'HabillageSymbolePCRS', 'HabillagePCRS', '00');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('09', 0, 'HabillageTextePCRS', 'HabillagePCRS', '00');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('10', 0, 'NomVoiriePCRS', 'HabillageTextePCRS', '01');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('11', 0, 'NumeroVoiriePCRS', 'HabillageTextePCRS', '01');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('12', 0, 'HabillageLignesPCRS', 'HabillagePCRS', '00');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('13', 0, 'HabillageEnveloppePCRS', 'HabillagePCRS', '00');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('14', 0, 'PointLevePCRS', '', '01');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('15', 1, 'ObjetVecteurPCRS', '', '00');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('16', 0, 'PointCanevasPCRS', 'ObjetVecteurPCRS', '01');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('17', 0, 'ObjetGeneriquePCRS', 'ObjetVecteurPCRS', '00');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('18', 0, 'QuaiFluvioMaritimePCRS', 'ObjetVecteurPCRS', '07');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('19', 0, 'QuaiRailPCRS', 'ObjetVecteurPCRS', '04');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('20', 0, 'LimiteVoiriePCRS', 'ObjetVecteurPCRS', '03');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('21', 0, 'MarcheEscalierPCRS', 'ObjetVecteurPCRS', '00');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('22', 0, 'FacadePCRS', 'ObjetVecteurPCRS', '02');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('23', 0, 'ProeminenceBatiPCRS', 'ObjetVecteurPCRS', '02');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('24', 0, 'SeuilPCRS', 'ObjetVecteurPCRS', '02');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('25', 0, 'MurPCRS', 'ObjetVecteurPCRS', '05');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('26', 1, 'PilierPCRS', 'ObjetVecteurPCRS', '05');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('27', 0, 'PilierRegulierPCRS', 'PilierPCRS', '05');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('28', 0, 'PilierParticulierPCRS', 'PilierPCRS', '05');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('29', 0, 'RailPCRS', 'ObjetVecteurPCRS', '04');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('30', 0, 'ArbrePCRS', 'ObjetVecteurPCRS', '06');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('31', 0, 'PilePontPCRS', 'ObjetVecteurPCRS', '07');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('32', 1, 'AffleurantPCRS', 'ObjetVecteurPCRS', '10');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('33', 0, 'AffleurantGeometriquePCRS', '', '10');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('34', 0, 'AffleurantEnveloppePCRS', '', '10');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('35', 0, 'AffleurantLignesPCRS', '', '10');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('36', 0, 'AffleurantPointPCRS', '', '10');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('37', 0, 'AffleurantSymbolePCRS', 'AffleurantPCRS', '10');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('38', 0, 'RasterPCRS', '', '11');
INSERT INTO a_pcrs."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('39', 0, 'MasqueOpacitePCRS', 'Habillage', '11');


COMMENT ON TABLE a_pcrs."CategorieObjetPCRS17Type" IS
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


--DROP INDEX if exists a_pcrs."InitiativePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_pcrs."InitiativePCRS_idInitiative_seq" cascade;
--DROP TABLE if exists a_pcrs."InitiativePCRS" cascade;

CREATE SEQUENCE a_pcrs."InitiativePCRS_idInitiative_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: InitiativePCRS
--DROP TABLE if exists a_pcrs."InitiativePCRS" cascade;
CREATE TABLE a_pcrs."InitiativePCRS"
(
  "idInitiative" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."InitiativePCRS_idInitiative_seq"'::regclass),
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
--DROP INDEX if exists a_pcrs."InitiativePCRS_geometrie_geomidx" cascade;
CREATE INDEX "InitiativePCRS_geometrie_geomidx"
  ON a_pcrs."InitiativePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE a_pcrs."InitiativePCRS" IS
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

COMMENT ON COLUMN a_pcrs."InitiativePCRS"."idInitiative" IS
'Identifiant unique des initiatives du PCRS.
L''unicité doit être assurée par le gestionnaire et viser une unicité nationale.
Elle peut être atteinte en préfixant l''identifiant par le code SIREN du producteur.';
COMMENT ON COLUMN a_pcrs."InitiativePCRS"."description" IS
'Information complémentaire liée à l''initiative';
COMMENT ON COLUMN a_pcrs."InitiativePCRS"."gestionnaire" IS
'Nom de l''autorité publique compétente gestionnaire du PCRS';
--COMMENT ON COLUMN a_pcrs."InitiativePCRS"."partenaires" IS
--'Nom des partenaires dans l''intiative';
COMMENT ON COLUMN a_pcrs."InitiativePCRS"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';


-- ---------------------------------
-- Classe : EmpriseDisponibilitePCRS
-- ---------------------------------


--DROP INDEX if exists a_pcrs."EmpriseDisponibilitePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_pcrs."EmpriseDisponibilitePCRS_idEmpriseDisponibilite_seq" cascade;
--DROP TABLE if exists a_pcrs."EmpriseDisponibilitePCRS" cascade;

CREATE SEQUENCE a_pcrs."EmpriseDisponibilitePCRS_idEmpriseDisponibilite_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: EmpriseDisponibilitePCRS
--DROP TABLE if exists a_pcrs."EmpriseDisponibilitePCRS" cascade;
CREATE TABLE a_pcrs."EmpriseDisponibilitePCRS"
(
  "idEmpriseDisponibilite" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."EmpriseDisponibilitePCRS_idEmpriseDisponibilite_seq"'::regclass),
  "dateActualite" date NOT NULL,
  "initiative" character varying REFERENCES a_pcrs."InitiativePCRS" ("idInitiative"),
  "calendrier" character varying REFERENCES a_pcrs."CalendrierPCRS17Type" ("code"),
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
--DROP INDEX if exists a_pcrs."EmpriseDisponibilitePCRS_geometrie_geomidx" cascade;
CREATE INDEX "EmpriseDisponibilitePCRS_geometrie_geomidx"
  ON a_pcrs."EmpriseDisponibilitePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE a_pcrs."EmpriseDisponibilitePCRS" IS
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

COMMENT ON COLUMN a_pcrs."EmpriseDisponibilitePCRS"."idEmpriseDisponibilite" IS
'Identifiant unique des emprises de disponibilité du PCRS.
L''unicité doit être assurée par le gestionnaire et viser une unicité nationale.
Elle peut être atteinte en préfixant l''identifiant par le code SIREN du producteur.';
COMMENT ON COLUMN a_pcrs."EmpriseDisponibilitePCRS"."dateActualite" IS
'Date à laquelle la disponibilité est valide';
COMMENT ON COLUMN a_pcrs."EmpriseDisponibilitePCRS"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';


-- ---------------------------------
-- Thématique : Publication
-- ---------------------------------


-- ---------------------------------
-- Classe : EmpriseEchangePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."EmpriseEchangePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_pcrs."EmpriseEchangePCRS_idEmpriseEchange_seq" cascade;
--DROP TABLE if exists a_pcrs."EmpriseEchangePCRS" cascade;

CREATE SEQUENCE a_pcrs."EmpriseEchangePCRS_idEmpriseEchange_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: EmpriseEchangePCRS
--DROP TABLE if exists a_pcrs."EmpriseEchangePCRS" cascade;
CREATE TABLE a_pcrs."EmpriseEchangePCRS"
(
  "idEmpriseEchange" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."EmpriseEchangePCRS_idEmpriseEchange_seq"'::regclass),
  "complement" character varying,
  "datePublication" date NOT NULL,
  "gestionnaire" character varying NOT NULL,
  "type" character varying REFERENCES a_pcrs."NatureEmprisePCRS17Type" ("code"),
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
--DROP INDEX if exists a_pcrs."EmpriseEchangePCRS_geometrie_geomidx" cascade;
CREATE INDEX "EmpriseEchangePCRS_geometrie_geomidx"
  ON a_pcrs."EmpriseEchangePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE a_pcrs."EmpriseEchangePCRS" IS
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

COMMENT ON COLUMN a_pcrs."EmpriseEchangePCRS"."idEmpriseEchange" IS
'Identifiant unique dans le jeu de données des emprises d''échange du PCRS.
L''unicité doit être assurée par le gestionnaire et viser une unicité nationale.
Elle peut être atteinte en préfixant l identifiant par le code SIREN du producteur.';
COMMENT ON COLUMN a_pcrs."EmpriseEchangePCRS"."complement" IS
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
COMMENT ON COLUMN a_pcrs."EmpriseEchangePCRS"."datePublication" IS
'Date de mise à disposition de l''emprise du PCRS';
COMMENT ON COLUMN a_pcrs."EmpriseEchangePCRS"."gestionnaire" IS
'Nom de la collectivité gestionnaire du PCRS';
COMMENT ON COLUMN a_pcrs."EmpriseEchangePCRS"."type" IS
'Type d''emprise du PCRS
Valeurs possibles :
Par exemple :
Couloir, Operation, Carreau, LimiteAdministrative';
COMMENT ON COLUMN a_pcrs."EmpriseEchangePCRS"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';


-- ---------------------------------
-- Classe : Commune
-- ---------------------------------

--DROP INDEX if exists a_pcrs."Commune_geometrie_geomidx" cascade;
--DROP TABLE if exists a_pcrs."Commune" cascade;

-- Table: Commune
--DROP TABLE if exists a_pcrs."Commune" cascade;
CREATE TABLE a_pcrs."Commune"
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
--DROP INDEX if exists a_pcrs."Commune_geometrie_geomidx" cascade;
CREATE INDEX "Commune_geometrie_geomidx"
  ON a_pcrs."Commune"
  USING gist
  (geometrie);


COMMENT ON TABLE a_pcrs."Commune" IS
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

COMMENT ON COLUMN a_pcrs."Commune"."codeINSEE" IS
'Code INSEE de la commune.';
COMMENT ON COLUMN a_pcrs."Commune"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';
COMMENT ON COLUMN a_pcrs."Commune"."nom" IS
'Nom de la commune.';
COMMENT ON COLUMN a_pcrs."Commune"."reference" IS
'Référence vers une base de données des communes.';


-- ---------------------------------
-- Classe : TronconVoirie
-- ---------------------------------

-- Sequence: TronconVoirie_reference_seq
--DROP INDEX if exists a_pcrs."TronconVoirie_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_pcrs."TronconVoirie_reference_seq" cascade;
--DROP TABLE if exists a_pcrs."TronconVoirie" cascade;

CREATE SEQUENCE a_pcrs."TronconVoirie_reference_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: TronconVoirie
--DROP TABLE if exists a_pcrs."TronconVoirie" cascade;
CREATE TABLE a_pcrs."TronconVoirie"
(
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "propriete" character varying(2) REFERENCES a_pcrs."ProprieteEspaceType" (code),
  "reference" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."TronconVoirie_reference_seq"'::regclass),
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
--DROP INDEX if exists a_pcrs."TronconVoirie_geometrie_geomidx" cascade;
CREATE INDEX "TronconVoirie_geometrie_geomidx"
  ON a_pcrs."TronconVoirie"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."TronconVoirie" IS
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

COMMENT ON COLUMN a_pcrs."TronconVoirie"."geometrie" IS
'Géométrie de type courbe.';
COMMENT ON COLUMN a_pcrs."TronconVoirie"."propriete" IS
'Distinction d''appartenance d''un troncon de voirie à l''espace public ou à l''espace privé.';
COMMENT ON COLUMN a_pcrs."TronconVoirie"."reference" IS
'Identifiant unique du tronçon dans le référentiel source utilisé.';
COMMENT ON COLUMN a_pcrs."TronconVoirie"."source" IS
'Acronyme du référentiel utilisé.';


-- ---------------------------------
-- Classe : HabillagePCRS
-- ---------------------------------

-- Sequence: HabillagePCRS_idHabillage_seq
--DROP INDEX if exists a_pcrs."HabillagePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_pcrs."HabillagePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_pcrs."HabillagePCRS" cascade;

CREATE SEQUENCE a_pcrs."HabillagePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: HabillagePCRS
--DROP TABLE if exists a_pcrs."HabillagePCRS" cascade;
CREATE TABLE a_pcrs."HabillagePCRS"
(
  --geometrie geometry(Geometry,3946) NOT NULL,
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_pcrs."CategorieThematiquePCRSType" ("code"),
  CONSTRAINT "HabillagePCRS_pkey" PRIMARY KEY ("idHabillage")
)
WITH (
  OIDS=FALSE
);

-- Index: HabillagePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."HabillagePCRS_geometrie_geomidx" cascade;
--CREATE INDEX "HabillagePCRS_geometrie_geomidx"
--  ON a_pcrs."HabillagePCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE a_pcrs."HabillagePCRS" IS
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

COMMENT ON COLUMN a_pcrs."HabillagePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.
Valeurs possibles :
Selon la collectivité gestionnaire du PCRS,
et le cas échéant lié à celui du référentiel dont peut-être issue la donnée.';
COMMENT ON COLUMN a_pcrs."HabillagePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';


-- ---------------------------------
-- Classe : HabillagePointsPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."HabillagePointsPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."HabillagePointsPCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_pcrs."HabillagePointsPCRS" cascade;


--CREATE SEQUENCE a_pcrs."HabillagePointsPCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillagePointsPCRS
--DROP TABLE if exists a_pcrs."HabillagePointsPCRS" cascade;
CREATE TABLE a_pcrs."HabillagePointsPCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_pcrs."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(MULTIPOINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "HabillagePointsPCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTIPOINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillagePointsPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."HabillagePointsPCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillagePointsPCRS_geometrie_geomidx"
  ON a_pcrs."HabillagePointsPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."HabillagePointsPCRS" IS
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

COMMENT ON COLUMN a_pcrs."HabillagePointsPCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_pcrs."HabillagePointsPCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_pcrs."HabillagePointsPCRS"."geometrie" IS
'Géométrie de type multipoint';


-- ---------------------------------
-- Classe : HabillageSymbolePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."HabillageSymbolePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."HabillageSymbolePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_pcrs."HabillageSymbolePCRS" cascade;

--CREATE SEQUENCE a_pcrs."HabillageSymbolePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageSymbolePCRS
--DROP TABLE if exists a_pcrs."HabillageSymbolePCRS" cascade;
CREATE TABLE a_pcrs."HabillageSymbolePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_pcrs."CategorieThematiquePCRSType" ("code"),
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
INHERITS (a_pcrs."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: SymboleHabillagePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."SymboleHabillagePCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageSymbolePCRS_geometrie_geomidx"
  ON a_pcrs."HabillageSymbolePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."HabillageSymbolePCRS" IS
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

COMMENT ON COLUMN a_pcrs."HabillageSymbolePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_pcrs."HabillageSymbolePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_pcrs."HabillageSymbolePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN a_pcrs."HabillageSymbolePCRS"."geometrie" IS
'Géométrie de type ponctuel';
COMMENT ON COLUMN a_pcrs."HabillageSymbolePCRS"."largeur_mm" IS
'Utilisé uniquement pour la mise à l''échelle Y du symbole en habillage';
COMMENT ON COLUMN a_pcrs."HabillageSymbolePCRS"."longueur_mm" IS
'Utilisé uniquement pour la mise à l''échelle X du symbole en habillage';
COMMENT ON COLUMN a_pcrs."HabillageSymbolePCRS"."reference" IS
'Désignation du symbole à utiliser pour la représentation de l''habillage sous forme de symbole.';


-- ---------------------------------
-- Classe : HabillageTextePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."HabillageTextePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."HabillageTextePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_pcrs."HabillageTextePCRS" cascade;

--CREATE SEQUENCE a_pcrs."HabillageTextePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageTextePCRS
--DROP TABLE if exists a_pcrs."HabillageTextePCRS" cascade;
CREATE TABLE a_pcrs."HabillageTextePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_pcrs."CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES a_pcrs."TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  CONSTRAINT "HabillageTextePCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillageTextePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."HabillageTextePCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageTextePCRS_geometrie_geomidx"
  ON a_pcrs."HabillageTextePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."HabillageTextePCRS" IS
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

COMMENT ON COLUMN a_pcrs."HabillageTextePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_pcrs."HabillageTextePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_pcrs."HabillageTextePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN a_pcrs."HabillageTextePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_pcrs."HabillageTextePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN a_pcrs."HabillageTextePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS
Valeur textuelle. Exemple : 123 m';
COMMENT ON COLUMN a_pcrs."HabillageTextePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';


-- ---------------------------------
-- Classe : NomVoiriePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."NomVoiriePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_pcrs."NomVoiriePCRS_idNomVoirie_seq" cascade;
--DROP TABLE if exists a_pcrs."NomVoiriePCRS" cascade;

CREATE SEQUENCE a_pcrs."NomVoiriePCRS_idNomVoirie_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: NomVoiriePCRS
--DROP TABLE if exists a_pcrs."NomVoiriePCRS" cascade;
CREATE TABLE a_pcrs."NomVoiriePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_pcrs."CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES a_pcrs."TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  "idNomVoirie" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."NomVoiriePCRS_idNomVoirie_seq"'::regclass),
  "positionnement" character varying(2) REFERENCES a_pcrs."CategoriePlacementPCRSType" (code),
  CONSTRAINT "NomVoiriePCRS_pkey" PRIMARY KEY ("idHabillage"),
  --CONSTRAINT "NomVoiriePCRS_pkey" PRIMARY KEY ("idNomVoirie")
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."HabillageTextePCRS")
WITH (
  OIDS=FALSE
);

-- Index: NomVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."NomVoiriePCRS_geometrie_geomidx" cascade;
CREATE INDEX "NomVoiriePCRS_geometrie_geomidx"
  ON a_pcrs."NomVoiriePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."NomVoiriePCRS" IS
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

COMMENT ON COLUMN a_pcrs."NomVoiriePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_pcrs."NomVoiriePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_pcrs."NomVoiriePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN a_pcrs."NomVoiriePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_pcrs."NomVoiriePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN a_pcrs."NomVoiriePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS';
COMMENT ON COLUMN a_pcrs."NomVoiriePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';
COMMENT ON COLUMN a_pcrs."NomVoiriePCRS"."idNomVoirie" IS
'Identifiant unique dans le jeu de données des noms de voirie.
Valeurs possibles :
Selon la collectivité gestionnaire du PCRS,
et si possible identique à celui du référentiel dont est issu la donnée.';
COMMENT ON COLUMN a_pcrs."NomVoiriePCRS"."positionnement" IS
'Indication quant au positionnement de l''élément d''habillage par rapport à la voirie.';


-- ---------------------------------
-- Classe : NumeroVoiriePCRS
-- ---------------------------------


--DROP INDEX if exists a_pcrs."NumeroVoiriePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_pcrs."NumeroVoiriePCRS_idNumeroVoirie_seq" cascade;
--DROP TABLE if exists a_pcrs."NumeroVoiriePCRS" cascade;

CREATE SEQUENCE a_pcrs."NumeroVoiriePCRS_idNumeroVoirie_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: NumeroVoiriePCRS
--DROP TABLE if exists a_pcrs."NumeroVoiriePCRS" cascade;
CREATE TABLE a_pcrs."NumeroVoiriePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_pcrs."CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES a_pcrs."TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  "idNumeroVoirie" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."NumeroVoiriePCRS_idNumeroVoirie_seq"'::regclass),
  "positionnement" character varying(2) REFERENCES a_pcrs."CategoriePlacementPCRSType" (code),
  CONSTRAINT "NumeroVoiriePCRS_pkey" PRIMARY KEY ("idHabillage"),
  --CONSTRAINT "NumeroVoiriePCRS_pkey" PRIMARY KEY ("idHabillage")
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."HabillageTextePCRS")
WITH (
  OIDS=FALSE
);

-- Index: NumeroVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."NumeroVoiriePCRS_geometrie_geomidx" cascade;
CREATE INDEX "NumeroVoiriePCRS_geometrie_geomidx"
  ON a_pcrs."NumeroVoiriePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE a_pcrs."NumeroVoiriePCRS" IS
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

COMMENT ON COLUMN a_pcrs."NumeroVoiriePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_pcrs."NumeroVoiriePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_pcrs."NumeroVoiriePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN a_pcrs."NumeroVoiriePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_pcrs."NumeroVoiriePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN a_pcrs."NumeroVoiriePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS';
COMMENT ON COLUMN a_pcrs."NumeroVoiriePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';
COMMENT ON COLUMN a_pcrs."NumeroVoiriePCRS"."idNumeroVoirie" IS
'Identifiant unique dans le jeu de données des numéros de voirie.
Selon la collectivité gestionnaire du PCRS,
et si possible identique à celui du référentiel dont est issu la donnée.';
COMMENT ON COLUMN a_pcrs."NumeroVoiriePCRS"."positionnement" IS
'Indication quant au positionnement de l''élément d''habillage par rapport à la voirie.';


-- ---------------------------------
-- Classe : HabillageLignesPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."HabillageLignesPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."HabillageLignesPCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_pcrs."HabillageLignesPCRS" cascade;


--CREATE SEQUENCE a_pcrs."HabillageLignesPCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageLignesPCRS
--DROP TABLE if exists a_pcrs."HabillageLignesPCRS" cascade;
CREATE TABLE a_pcrs."HabillageLignesPCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_pcrs."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(MULTILINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "HabillageLignesPCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTILINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillageLignesPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."HabillageLignesPCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageLignesPCRS_geometrie_geomidx"
  ON a_pcrs."HabillageLignesPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."HabillageLignesPCRS" IS
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

COMMENT ON COLUMN a_pcrs."HabillageLignesPCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_pcrs."HabillageLignesPCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_pcrs."HabillageLignesPCRS"."geometrie" IS
'Géométrie de type multiligne';


-- ---------------------------------
-- Classe : HabillageEnveloppePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."HabillageEnveloppePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."HabillageEnveloppePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_pcrs."HabillageEnveloppePCRS" cascade;


--CREATE SEQUENCE a_pcrs."HabillageEnveloppePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageEnveloppePCRS
--DROP TABLE if exists a_pcrs."HabillageEnveloppePCRS" cascade;
CREATE TABLE a_pcrs."HabillageEnveloppePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_pcrs."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "HabillageEnveloppePCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillageEnveloppePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."HabillageEnveloppePCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageEnveloppePCRS_geometrie_geomidx"
  ON a_pcrs."HabillageEnveloppePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."HabillageEnveloppePCRS" IS
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

COMMENT ON COLUMN a_pcrs."HabillageEnveloppePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_pcrs."HabillageEnveloppePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_pcrs."HabillageEnveloppePCRS"."geometrie" IS
'Géométrie de type surfacique';


-- ---------------------------------
-- Classe : PointLevePCRS
-- ---------------------------------


--DROP INDEX if exists a_pcrs."PointLevePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_pcrs."PointLevePCRS_numeroPoint_seq" cascade;
--DROP TABLE if exists a_pcrs."PointLevePCRS" cascade;

CREATE SEQUENCE a_pcrs."PointLevePCRS_numeroPoint_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: PointLevePCRS
--DROP TABLE if exists a_pcrs."PointLevePCRS" cascade;
CREATE TABLE a_pcrs."PointLevePCRS"
(
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "horodatage" date,
  "numeroPoint"  character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."PointLevePCRS_numeroPoint_seq"'::regclass),
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
--DROP INDEX if exists a_pcrs."PointLevePCRS_geometrie_geomidx" cascade;
CREATE INDEX "PointLevePCRS_geometrie_geomidx"
  ON a_pcrs."PointLevePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."PointLevePCRS" IS
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

COMMENT ON COLUMN a_pcrs."PointLevePCRS"."geometrie" IS
'Géométrie de type ponctuel';
COMMENT ON COLUMN a_pcrs."PointLevePCRS"."horodatage" IS
'Horodatage du point au moment du levé topographique';
COMMENT ON COLUMN a_pcrs."PointLevePCRS"."numeroPoint" IS
'Numéro attribué au point levé lors du levé topographique ou de l''integration
au référentiel selon une ou plusieurs
méthodologies à préciser si possible dans les métadonnées.
Valeurs possibles :
Un ou plusiseurs caractères alpha non accentués préfixant un nombre
à valeurs dans une série numérique croissante avec possibilités de
sauts / valeurs manquantes dans la suite.';
COMMENT ON COLUMN a_pcrs."PointLevePCRS"."precisionXY" IS
'Précision planimétrique exprimée en cm';
COMMENT ON COLUMN a_pcrs."PointLevePCRS"."precisionZ" IS
'Précision altimétrique exprimée en cm';
COMMENT ON COLUMN a_pcrs."PointLevePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';


-- ---------------------------------
-- Classe : ObjetVecteurPCRS
-- ---------------------------------

-- Sequence: ObjetVecteurPCRS_idObjet_seq
--DROP INDEX if exists a_pcrs."ObjetVecteurPCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_pcrs."ObjetVecteurPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."ObjetVecteurPCRS" cascade;

CREATE SEQUENCE a_pcrs."ObjetVecteurPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: ObjetVecteurPCRS
--DROP TABLE if exists a_pcrs."ObjetVecteurPCRS" cascade;
CREATE TABLE a_pcrs."ObjetVecteurPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  CONSTRAINT "ObjetVecteurPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: ObjetVecteurPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."ObjetVecteurPCRS_geometrie_geomidx" cascade;
--CREATE INDEX "ObjetVecteurPCRS_geometrie_geomidx"
--  ON a_pcrs."ObjetVecteurPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE a_pcrs."ObjetVecteurPCRS" IS
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

COMMENT ON COLUMN a_pcrs."ObjetVecteurPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."ObjetVecteurPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."ObjetVecteurPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."ObjetVecteurPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."ObjetVecteurPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."ObjetVecteurPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."ObjetVecteurPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';


-- ---------------------------------
-- Classe : PointCanevasPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."PointCanevasPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."PointCanevasPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."PointCanevasPCRS" cascade;

--CREATE SEQUENCE a_pcrs."PointCanevasPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PointCanevasPCRS
--DROP TABLE if exists a_pcrs."PointCanevasPCRS" cascade;
CREATE TABLE a_pcrs."PointCanevasPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
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
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);

-- Index: PointCanevasPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."PointCanevasPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PointCanevasPCRS_geometrie_geomidx"
  ON a_pcrs."PointCanevasPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."PointCanevasPCRS" IS
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

COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."canevas" IS
'Type de canevas auquel appartient le point considéré';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."dateCreation" IS
'Date de création ou de mise à jour des données du point de canevas';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."fiche" IS
'Addresse de type URL susceptible de fournir des informations supplémentaires,
comme des photographies de repérage, sur le point de canevas';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."geometrie" IS
'Géométrie du point';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."immatriculation" IS
'Référence externe selon la convention d''immatriculation du canevas considéré';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."precisionXY" IS
'Précision planimétrique exprimée en cm';
COMMENT ON COLUMN a_pcrs."PointCanevasPCRS"."precisionZ" IS
'Précision altimétrique exprimée en cm';


-- ---------------------------------
-- Classe : ObjetGeneriquePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."ObjetGeneriquePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."ObjetGeneriquePCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."ObjetGeneriquePCRS" cascade;

--CREATE SEQUENCE a_pcrs."ObjetGeneriquePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: ObjetGeneriquePCRS
--DROP TABLE if exists a_pcrs."ObjetGeneriquePCRS" cascade;
CREATE TABLE a_pcrs."ObjetGeneriquePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(GEOMETRY,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "identification" character varying REFERENCES a_pcrs."CategorieObjetPCRS17Type" ("nomClasse"),
  CONSTRAINT "ObjetGeneriquePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'GEOMETRY'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ObjetGeneriquePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."ObjetGeneriquePCRS_geometrie_geomidx" cascade;
CREATE INDEX "ObjetGeneriquePCRS_geometrie_geomidx"
  ON a_pcrs."ObjetGeneriquePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."ObjetGeneriquePCRS" IS
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

COMMENT ON COLUMN a_pcrs."ObjetGeneriquePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."ObjetGeneriquePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."ObjetGeneriquePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."ObjetGeneriquePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."ObjetGeneriquePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."ObjetGeneriquePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."ObjetGeneriquePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."ObjetGeneriquePCRS"."geometrie" IS
'Géométrie de l''objet générique';
COMMENT ON COLUMN a_pcrs."ObjetGeneriquePCRS"."identification" IS
'L''identification décrit le nom de la classe spécialisée selon
la nomenclature des objets du PCRS.
Inconnue à l''initialisation du PCRS par la collectivité gestionnaire, elle peut-être
précisée lors de tout échange inverse entre utilisateur et collectivité gestionnaire';


-- ---------------------------------
-- Classe : QuaiFluvioMaritimePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."QuaiFluvioMaritimePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."QuaiFluvioMaritimePCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."QuaiFluvioMaritimePCRS" cascade;

--CREATE SEQUENCE a_pcrs."QuaiFluvioMaritimePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: QuaiPCRS
--DROP TABLE if exists a_pcrs."QuaiFluvioMaritimePCRS" cascade;
CREATE TABLE a_pcrs."QuaiFluvioMaritimePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "QuaiFluvioMaritimePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: QuaiFluvioMaritimePCRS_geometrie_geomidx
--DROP INDEX if exists "QuaiFluvioMaritimePCRS_geometrie_geomidx" cascade;
CREATE INDEX "QuaiFluvioMaritimePCRS_geometrie_geomidx"
  ON a_pcrs."QuaiFluvioMaritimePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."QuaiFluvioMaritimePCRS" IS
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

COMMENT ON COLUMN a_pcrs."QuaiFluvioMaritimePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."QuaiFluvioMaritimePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."QuaiFluvioMaritimePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."QuaiFluvioMaritimePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."QuaiFluvioMaritimePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."QuaiFluvioMaritimePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."QuaiFluvioMaritimePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."QuaiFluvioMaritimePCRS"."geometrie" IS
'Géométrie du quai';


-- ---------------------------------
-- Classe : QuaiRailPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."QuaiRailPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."QuaiRailPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."QuaiRailPCRS" cascade;

--CREATE SEQUENCE a_pcrs."QuaiRailPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: QuaiRailPCRS
--DROP TABLE if exists a_pcrs."QuaiRailPCRS" cascade;
CREATE TABLE a_pcrs."QuaiRailPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "QuaiRailPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: QuaiRailPCRS_geometrie_geomidx
--DROP INDEX if exists "QuaiRailPCRS_geometrie_geomidx" cascade;
CREATE INDEX "QuaiRailPCRS_geometrie_geomidx"
  ON a_pcrs."QuaiRailPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."QuaiRailPCRS" IS
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

COMMENT ON COLUMN a_pcrs."QuaiRailPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."QuaiRailPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."QuaiRailPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."QuaiRailPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."QuaiRailPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."QuaiRailPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."QuaiRailPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."QuaiRailPCRS"."geometrie" IS
'Géométrie du quai';


-- ---------------------------------
-- Classe : LimiteVoiriePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."LimiteVoiriePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."LimiteVoiriePCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."LimiteVoiriePCRS" cascade;


--CREATE SEQUENCE a_pcrs."LimiteVoiriePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: LimiteVoiriePCRS
--DROP TABLE if exists a_pcrs."LimiteVoiriePCRS" cascade;
CREATE TABLE a_pcrs."LimiteVoiriePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "LimiteVoiriePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: LimiteVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."LimiteVoiriePCRS_geometrie_geomidx" cascade;
CREATE INDEX "LimiteVoiriePCRS_geometrie_geomidx"
  ON a_pcrs."LimiteVoiriePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."LimiteVoiriePCRS" IS
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

COMMENT ON COLUMN a_pcrs."LimiteVoiriePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."LimiteVoiriePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."LimiteVoiriePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."LimiteVoiriePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."LimiteVoiriePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."LimiteVoiriePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."LimiteVoiriePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."LimiteVoiriePCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : MarcheEscalierPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."MarcheEscalierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."MarcheEscalierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."MarcheEscalierPCRS" cascade;


--CREATE SEQUENCE a_pcrs."MarcheEscalierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: MarcheEscalierPCRS
--DROP TABLE if exists a_pcrs."MarcheEscalierPCRS" cascade;
CREATE TABLE a_pcrs."MarcheEscalierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "symbole" character varying REFERENCES a_pcrs."HabillageSymbolePCRS" ("idHabillage"),
  CONSTRAINT "MarcheEscalierPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: MarcheEscalierPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."MarcheEscalierPCRS_geometrie_geomidx" cascade;
CREATE INDEX "MarcheEscalierPCRS_geometrie_geomidx"
  ON a_pcrs."MarcheEscalierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."MarcheEscalierPCRS" IS
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

COMMENT ON COLUMN a_pcrs."MarcheEscalierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."MarcheEscalierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."MarcheEscalierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."MarcheEscalierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."MarcheEscalierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."MarcheEscalierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."MarcheEscalierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."MarcheEscalierPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN a_pcrs."MarcheEscalierPCRS"."symbole" IS
'Lien vers un symbole utilisé pour la définition du sens de l''escalier';


-- ---------------------------------
-- Classe : FacadePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."FacadePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."FacadePCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."FacadePCRS" cascade;

--CREATE SEQUENCE a_pcrs."FacadePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: FacadePCRS
--DROP TABLE if exists a_pcrs."FacadePCRS" cascade;
CREATE TABLE a_pcrs."FacadePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "FacadePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: FacadePCRS_geometrie_geomidx
--DROP INDEX if exists "FacadePCRS_geometrie_geomidx" cascade;
CREATE INDEX "FacadePCRS_geometrie_geomidx"
  ON a_pcrs."FacadePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."FacadePCRS" IS
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

COMMENT ON COLUMN a_pcrs."FacadePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."FacadePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."FacadePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."FacadePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."FacadePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."FacadePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."FacadePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."FacadePCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : ProeminenceBatiPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."ProeminenceBatiPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."ProeminenceBatiPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."ProeminenceBatiPCRS" cascade;

--CREATE SEQUENCE a_pcrs."ProeminenceBatiPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: ProeminenceBatiPCRS
--DROP TABLE if exists a_pcrs."ProeminenceBatiPCRS" cascade;
CREATE TABLE a_pcrs."ProeminenceBatiPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "ProeminenceBatiPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ProeminenceBatiPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."ProeminenceBatiPCRS_geometrie_geomidx" cascade;
CREATE INDEX "ProeminenceBatiPCRS_geometrie_geomidx"
  ON a_pcrs."ProeminenceBatiPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."ProeminenceBatiPCRS" IS
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

COMMENT ON COLUMN a_pcrs."ProeminenceBatiPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."ProeminenceBatiPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."ProeminenceBatiPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."ProeminenceBatiPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."ProeminenceBatiPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."ProeminenceBatiPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."ProeminenceBatiPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."ProeminenceBatiPCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : SeuilPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."SeuilPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."SeuilPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."SeuilPCRS" cascade;

--CREATE SEQUENCE a_pcrs."SeuilPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: SeuilPCRS
--DROP TABLE if exists a_pcrs."SeuilPCRS" cascade;
CREATE TABLE a_pcrs."SeuilPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "symbole" character varying REFERENCES a_pcrs."HabillageSymbolePCRS" ("idHabillage"),
  CONSTRAINT "SeuilPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: SeuilPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."SeuilPCRS_geometrie_geomidx" cascade;
CREATE INDEX "SeuilPCRS_geometrie_geomidx"
  ON a_pcrs."SeuilPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."SeuilPCRS" IS
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

COMMENT ON COLUMN a_pcrs."SeuilPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."SeuilPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."SeuilPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."SeuilPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."SeuilPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."SeuilPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."SeuilPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."SeuilPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN a_pcrs."SeuilPCRS"."symbole" IS
'';


-- ---------------------------------
-- Classe : MurPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."MurPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."MurPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."MurPCRS" cascade;

--CREATE SEQUENCE a_pcrs."MurPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: MurPCRS
--DROP TABLE if exists a_pcrs."MurPCRS" cascade;
CREATE TABLE a_pcrs."MurPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "typeMur" character varying(2) REFERENCES a_pcrs."CategorieMurPCRSType" ("code"),
  CONSTRAINT "MurPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: MurPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."MurPCRS_geometrie_geomidx" cascade;
CREATE INDEX "MurPCRS_geometrie_geomidx"
  ON a_pcrs."MurPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."MurPCRS" IS
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

COMMENT ON COLUMN a_pcrs."MurPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."MurPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."MurPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."MurPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."MurPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."MurPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."MurPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."MurPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN a_pcrs."MurPCRS"."typeMur" IS
'';


-- ---------------------------------
-- Classe : PilierPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."PilierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."PilierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."PilierPCRS" cascade;

--CREATE SEQUENCE a_pcrs."PilierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilierPCRS
--DROP TABLE if exists a_pcrs."PilierPCRS" cascade;
CREATE TABLE a_pcrs."PilierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  CONSTRAINT "PilierPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."PilierPCRS_geometrie_geomidx" cascade;
--CREATE INDEX "PilierPCRS_geometrie_geomidx"
--  ON a_pcrs."PilierPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE a_pcrs."PilierPCRS" IS
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

COMMENT ON COLUMN a_pcrs."PilierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."PilierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."PilierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."PilierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."PilierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."PilierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."PilierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';


-- ---------------------------------
-- Classe : PilierRegulierPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."PilierRegulierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."PilierRegulierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."PilierRegulierPCRS" cascade;

--CREATE SEQUENCE a_pcrs."PilierRegulierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilierRegulierPCRS
--DROP TABLE if exists a_pcrs."PilierRegulierPCRS" cascade;
CREATE TABLE a_pcrs."PilierRegulierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "largeur_mm" decimal NOT NULL,
  "longueur_mm" decimal NOT NULL,
  "section" character varying(2) NOT NULL REFERENCES a_pcrs."SectionPilierPCRSType" (code),
  CONSTRAINT "PilierRegulierPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."PilierPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierRegulierPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."PilierRegulierPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PilierRegulierPCRS_geometrie_geomidx"
  ON a_pcrs."PilierRegulierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."PilierRegulierPCRS" IS
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

COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."angleRotation" IS
'Utlisé uniquement pour l''orientation du symbole de poteau après rotation.
Peut être étendu pour un poteau ovale pour orienter le symbole';
COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."largeur_mm" IS
'Utlisé uniquement pour la mise à l''échelle Y du symbole de poteau après rotation';
COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."longueur_mm" IS
'Utlisé uniquement pour la mise à l''échelle X du symbole de poteau après rotation';
COMMENT ON COLUMN a_pcrs."PilierRegulierPCRS"."section" IS
'Forme de la section à la base du pilier';


-- ---------------------------------
-- Classe : PilierParticulierPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."PilierParticulierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."PilierParticulierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."PilierParticulierPCRS" cascade;


--CREATE SEQUENCE a_pcrs."PilierParticulierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilierParticulierPCRS
--DROP TABLE if exists a_pcrs."PilierParticulierPCRS" cascade;
CREATE TABLE a_pcrs."PilierParticulierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "PilierParticulierPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."PilierPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierParticulierPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."PilierParticulierPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PilierParticulierPCRS_geometrie_geomidx"
  ON a_pcrs."PilierParticulierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."PilierParticulierPCRS" IS
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

COMMENT ON COLUMN a_pcrs."PilierParticulierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."PilierParticulierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."PilierParticulierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."PilierParticulierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."PilierParticulierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."PilierParticulierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."PilierParticulierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."PilierParticulierPCRS"."geometrie" IS
'Géométrie de type polygone';


-- ---------------------------------
-- Classe : RailPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."RailPCRS_geometrie_geomidx" cascade;
--DROP TABLE if exists a_pcrs."RailPCRS" cascade;
--DROP SEQUENCE if exists a_pcrs."RailPCRS_idObjet_seq" cascade;

--CREATE SEQUENCE a_pcrs."RailPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: RailPCRS
--DROP TABLE if exists a_pcrs."RailPCRS" cascade;
CREATE TABLE a_pcrs."RailPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "RailPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: RailPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."RailPCRS_geometrie_geomidx" cascade;
CREATE INDEX "RailPCRS_geometrie_geomidx"
  ON a_pcrs."RailPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."RailPCRS" IS
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

COMMENT ON COLUMN a_pcrs."RailPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."RailPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."RailPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."RailPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."RailPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."RailPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."RailPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."RailPCRS"."geometrie" IS
'Géométrie de type curve';


-- ---------------------------------
-- Classe : ArbrePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."ArbrePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."ArbrePCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."ArbrePCRS" cascade;

--CREATE SEQUENCE a_pcrs."ArbrePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: ArbrePCRS
--DROP TABLE if exists a_pcrs."ArbrePCRS" cascade;
CREATE TABLE a_pcrs."ArbrePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
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
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ArbrePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."ArbrePCRS_geometrie_geomidx" cascade;
CREATE INDEX "ArbrePCRS_geometrie_geomidx"
  ON a_pcrs."ArbrePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."ArbrePCRS" IS
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

COMMENT ON COLUMN a_pcrs."ArbrePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."ArbrePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."ArbrePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."ArbrePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."ArbrePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."ArbrePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."ArbrePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."ArbrePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_pcrs."ArbrePCRS"."reference" IS
'';


-- ---------------------------------
-- Classe : PilePontPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."PilePontPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."PilePontPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_pcrs."PilePontPCRS" cascade;

--CREATE SEQUENCE a_pcrs."PilePontPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilePontPCRS
--DROP TABLE if exists a_pcrs."PilePontPCRS" cascade;
CREATE TABLE a_pcrs."PilePontPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(Polygon,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "PilePontPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilePontPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."PilePontPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PilePontPCRS_geometrie_geomidx"
  ON a_pcrs."PilePontPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."PilePontPCRS" IS
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

COMMENT ON COLUMN a_pcrs."PilePontPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."PilePontPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."PilePontPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."PilePontPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."PilePontPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."PilePontPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."PilePontPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."PilePontPCRS"."geometrie" IS
'Géométrie de type polygone';



-- ---------------------------------
-- Classe : AffleurantSymbolePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."AffleurantSymbolePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."AffleurantSymbolePCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_pcrs."AffleurantSymbolePCRS" cascade;


--CREATE SEQUENCE a_pcrs."AffleurantSymbolePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantSymbolePCRS
--DROP TABLE if exists a_pcrs."AffleurantSymbolePCRS" cascade;
CREATE TABLE a_pcrs."AffleurantSymbolePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES a_pcrs."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES a_pcrs."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES a_pcrs."AffleurantSymbolePCRS" (code),
  --"representations" character varying(8) NOT NULL REFERENCES a_pcrs."AffleurantGeometriquePCRS" (code),
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
--INHERITS (a_pcrs."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantSymbolePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."AffleurantSymbolePCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantSymbolePCRS_geometrie_geomidx"
  ON a_pcrs."AffleurantSymbolePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."AffleurantSymbolePCRS" IS
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

COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."precisionAltimetrique" IS
--'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
--associée au levé topographique de l''objet';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."precisionPlanimetrique" IS
--'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
--associée au levé topographique de l''objet';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."dateLeve" IS
--'Date de levé de l''objet';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."producteur" IS
--'Producteur de la donnée.
--La valeur sera saisie et déterminée par le producteur de façon stable.
--Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."qualiteCategorisation" IS
--'Indication du producteur quant à la qualité de la catégorisation.
--Permet des représentations plus riches pour les migrations / reprises de données';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."thematique" IS
--'La thématique à laquelle est associé chaque objet du PCRS';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."gestionnaire" IS
--'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."idSource" IS
--'Identifiant unique de l''affleurant';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."nature" IS
--'Nature de l''affleurant';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."reseau" IS
--'Nature du réseau';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."source" IS
--'Source des données d''affleurant dans le SI du gestionnaire de réseaux
--Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."symbolisation" IS
--'Lien vers une représentation symbolique'
--COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."representations" IS
--'Lien vers  une représentation de type géométrique.
--Il est nécessaire de fournir au moins un type de representation géométrique'
COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."angleRotation" IS
'Angle utilisé uniquement pour l''orientation du symbole d''affleurant,
dans le sens horaire par rapport au Nord.
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."largeur_mm" IS
'Utilisé uniquement pour la mise à l''échelle Y du symbole de l''affleurant';
COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."longueur_mm" IS
'Utilisé uniquement pour la mise à l''échelle X du symbole de l''affleurant';
COMMENT ON COLUMN a_pcrs."AffleurantSymbolePCRS"."reference" IS
'Désignation du symbole à utiliser pour la représentation de l''affleurant.';


-- ---------------------------------
-- Classe : AffleurantGeometriquePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."AffleurantGeometriquePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."AffleurantGeometriquePCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_pcrs."AffleurantGeometriquePCRS" cascade;

--CREATE SEQUENCE a_pcrs."AffleurantGeometriquePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantGeometriquePCRS
--DROP TABLE if exists a_pcrs."AffleurantGeometriquePCRS" cascade;
CREATE TABLE a_pcrs."AffleurantGeometriquePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  -- "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  -- "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  -- "dateLeve" date,
  -- "producteur" character varying NOT NULL,
  -- "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  -- "thematique" character varying(2) NOT NULL,
  -- "gestionnaire" character varying,
  -- "idSource" character varying,
  -- "nature" character varying(2) NOT NULL REFERENCES a_pcrs."NatureAffleurantPCRSType" (code),
  -- "reseau" character varying(8) NOT NULL REFERENCES a_pcrs."NatureReseauPCRSType" (code),
  -- "source" character varying,
  -- "symbolisation" character varying(8) REFERENCES a_pcrs."AffleurantSymbolePCRS" (code),
  -- "representations" character varying(8) NOT NULL REFERENCES a_pcrs."AffleurantGeometriquePCRS" (code),
  CONSTRAINT "AffleurantGeometriquePCRS_pkey" PRIMARY KEY ("idObjet")
)
--INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantGeometriquePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."AffleurantGeometriquePCRS_geometrie_geomidx" cascade;
--CREATE INDEX "AffleurantGeometriquePCRS_geometrie_geomidx"
--  ON a_pcrs."AffleurantGeometriquePCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE a_pcrs."AffleurantGeometriquePCRS" IS
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

COMMENT ON COLUMN a_pcrs."AffleurantGeometriquePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';




-- ---------------------------------
-- Classe : AffleurantPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."AffleurantPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."AffleurantPCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_pcrs."AffleurantPCRS" cascade;

--CREATE SEQUENCE a_pcrs."AffleurantPCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantPCRS
--DROP TABLE if exists a_pcrs."AffleurantPCRS" cascade;
CREATE TABLE a_pcrs."AffleurantPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "gestionnaire" character varying,
  "idSource" character varying,
  "nature" character varying(2) NOT NULL REFERENCES a_pcrs."NatureAffleurantPCRSType" (code),
  "reseau" character varying(8) NOT NULL REFERENCES a_pcrs."NatureReseauPCRSType" (code),
  "source" character varying,
  "symbolisation" character varying(8) REFERENCES a_pcrs."AffleurantSymbolePCRS" ("idObjet"),
  "representations" character varying(8) NOT NULL REFERENCES a_pcrs."AffleurantGeometriquePCRS" ("idObjet"),
  CONSTRAINT "AffleurantPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."AffleurantPCRS_geometrie_geomidx" cascade;
--CREATE INDEX "AffleurantPCRS_geometrie_geomidx"
--  ON a_pcrs."AffleurantPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE a_pcrs."AffleurantPCRS" IS
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

COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."gestionnaire" IS
'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."idSource" IS
'Identifiant unique de l''affleurant';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."nature" IS
'Nature de l''affleurant';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."reseau" IS
'Nature du réseau';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."source" IS
'Source des données d''affleurant dans le SI du gestionnaire de réseaux
Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."symbolisation" IS
'Lien vers une représentation symbolique';
COMMENT ON COLUMN a_pcrs."AffleurantPCRS"."representations" IS
'Lien vers  une représentation de type géométrique.
Il est nécessaire de fournir au moins un type de representation géométrique';


-- ---------------------------------
-- Classe : AffleurantEnveloppePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."AffleurantEnveloppePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."AffleurantEnveloppePCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_pcrs."AffleurantEnveloppePCRS" cascade;

--CREATE SEQUENCE a_pcrs."AffleurantEnveloppePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantEnveloppePCRS
--DROP TABLE if exists a_pcrs."AffleurantEnveloppePCRS" cascade;
CREATE TABLE a_pcrs."AffleurantEnveloppePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES a_pcrs."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES a_pcrs."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES a_pcrs."AffleurantSymbolePCRS" (code),
  --"representations" character varying(8) NOT NULL REFERENCES a_pcrs."AffleurantGeometriquePCRS" (code),
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "AffleurantEnveloppePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
--INHERITS (a_pcrs."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantEnveloppePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."AffleurantEnveloppePCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantEnveloppePCRS_geometrie_geomidx"
  ON a_pcrs."AffleurantEnveloppePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."AffleurantEnveloppePCRS" IS
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

COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."precisionAltimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."precisionPlanimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."dateLeve" IS
-- 'Date de levé de l''objet';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."producteur" IS
-- 'Producteur de la donnée.
-- La valeur sera saisie et déterminée par le producteur de façon stable.
-- Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."qualiteCategorisation" IS
-- 'Indication du producteur quant à la qualité de la catégorisation.
-- Permet des représentations plus riches pour les migrations / reprises de données';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."thematique" IS
-- 'La thématique à laquelle est associé chaque objet du PCRS';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."gestionnaire" IS
-- 'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."idSource" IS
-- 'Identifiant unique de l''affleurant';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."nature" IS
-- 'Nature de l''affleurant';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."reseau" IS
-- 'Nature du réseau';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."source" IS
-- 'Source des données d''affleurant dans le SI du gestionnaire de réseaux
-- Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."symbolisation" IS
-- 'Lien vers une représentation symbolique'
-- COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."representations" IS
-- 'Lien vers  une représentation de type géométrique.
-- Il est nécessaire de fournir au moins un type de representation géométrique'
COMMENT ON COLUMN a_pcrs."AffleurantEnveloppePCRS"."geometrie" IS
'Géométrie de type polygone';


-- ---------------------------------
-- Classe : AffleurantLignesPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."AffleurantLignesPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."AffleurantLignesPCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_pcrs."AffleurantLignesPCRS" cascade;


--CREATE SEQUENCE "AffleurantLignePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantLignesPCRS
--DROP TABLE if exists a_pcrs."AffleurantLignesPCRS" cascade;
CREATE TABLE a_pcrs."AffleurantLignesPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES a_pcrs."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES a_pcrs."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES a_pcrs."AffleurantSymbolePCRS" ("idObjet"),
  --"representations" character varying(8) NOT NULL REFERENCES a_pcrs."AffleurantGeometriquePCRS" ("idObjet"),
  --"geometrie" geometry(MULTILINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "AffleurantLignesPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTILINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantLignesPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."AffleurantLignesPCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantLignesPCRS_geometrie_geomidx"
  ON a_pcrs."AffleurantLignesPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."AffleurantLignesPCRS" IS
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

COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."precisionAltimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."precisionPlanimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."dateLeve" IS
-- 'Date de levé de l''objet';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."producteur" IS
-- 'Producteur de la donnée.
-- La valeur sera saisie et déterminée par le producteur de façon stable.
-- Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."qualiteCategorisation" IS
-- 'Indication du producteur quant à la qualité de la catégorisation.
-- Permet des représentations plus riches pour les migrations / reprises de données';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."thematique" IS
-- 'La thématique à laquelle est associé chaque objet du PCRS';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."gestionnaire" IS
-- 'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."idSource" IS
-- 'Identifiant unique de l''affleurant';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."nature" IS
-- 'Nature de l''affleurant';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."reseau" IS
-- 'Nature du réseau';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."source" IS
-- 'Source des données d''affleurant dans le SI du gestionnaire de réseaux
-- Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."symbolisation" IS
-- 'Lien vers une représentation symbolique';
-- COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."representations" IS
-- 'Lien vers  une représentation de type géométrique.
-- Il est nécessaire de fournir au moins un type de representation géométrique';
COMMENT ON COLUMN a_pcrs."AffleurantLignesPCRS"."geometrie" IS
'Géométrie composée d''un ensemble de lignes';


-- ---------------------------------
-- Classe : AffleurantPointPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."AffleurantPointPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."AffleurantPointPCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_pcrs."AffleurantPointPCRS" cascade;


--CREATE SEQUENCE a_pcrs."AffleurantPointPCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantPointPCRS
--DROP TABLE if exists a_pcrs."AffleurantPointPCRS" cascade;
CREATE TABLE a_pcrs."AffleurantPointPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES a_pcrs."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES a_pcrs."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES a_pcrs."AffleurantSymbolePCRS" ("idObjet"),
  --"representations" character varying(8) NOT NULL REFERENCES a_pcrs."AffleurantGeometriquePCRS" ("idObjet"),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "AffleurantPointPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantPointPCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."AffleurantPointPCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantPointPCRS_geometrie_geomidx"
  ON a_pcrs."AffleurantPointPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."AffleurantPointPCRS" IS
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

COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."precisionAltimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."precisionPlanimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."dateLeve" IS
-- 'Date de levé de l''objet';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."producteur" IS
-- 'Producteur de la donnée.
-- La valeur sera saisie et déterminée par le producteur de façon stable.
-- Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."qualiteCategorisation" IS
-- 'Indication du producteur quant à la qualité de la catégorisation.
-- Permet des représentations plus riches pour les migrations / reprises de données';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."thematique" IS
-- 'La thématique à laquelle est associé chaque objet du PCRS';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."gestionnaire" IS
-- 'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."idSource" IS
-- 'Identifiant unique de l''affleurant';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."nature" IS
-- 'Nature de l''affleurant';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."reseau" IS
-- 'Nature du réseau';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."source" IS
-- 'Source des données d''affleurant dans le SI du gestionnaire de réseaux
-- Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."symbolisation" IS
-- 'Lien vers une représentation symbolique';
-- COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."representations" IS
-- 'Lien vers  une représentation de type géométrique.
-- Il est nécessaire de fournir au moins un type de representation géométrique';
COMMENT ON COLUMN a_pcrs."AffleurantPointPCRS"."geometrie" IS
'Géométrie de type point';


-- ---------------------------------
-- Classe : RasterPCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."RasterPCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_pcrs."RasterPCRS_idPCRS_seq" cascade;
--DROP TABLE if exists a_pcrs."RasterPCRS" cascade;

CREATE SEQUENCE a_pcrs."RasterPCRS_idPCRS_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: RasterPCRS
--DROP TABLE if exists a_pcrs."RasterPCRS" cascade;
CREATE TABLE a_pcrs."RasterPCRS"
(
  "dateAcquisition" date NOT NULL,
  "dateRecette" date NOT NULL,
  "descriptionElementsQualite" character varying NOT NULL,
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "idPCRS" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."RasterPCRS_idPCRS_seq"'::regclass),
  "nomImage" character varying NOT NULL,
  "precisionPlanimetriqueCorpsdeRue" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRSType" (code),
  "precisionPlanimetriqueZonesNaturelles" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRSType" (code),
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
--DROP INDEX if exists a_pcrs."RasterPCRS_geometrie_geomidx" cascade;
CREATE INDEX "RasterPCRS_geometrie_geomidx"
  ON a_pcrs."RasterPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."RasterPCRS" IS
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

COMMENT ON COLUMN a_pcrs."RasterPCRS"."dateAcquisition" IS
'La date et l''heure à laquelle la photo aérienne a été prise /
la date à laquelle la mission aérienne a eu lieu (au détail du jour ou celui du mois voire l''année)';
COMMENT ON COLUMN a_pcrs."RasterPCRS"."dateRecette" IS
'La date à laquelle le maître d''ouvrage a intégré l''ortho-image dans le PCRS';
COMMENT ON COLUMN a_pcrs."RasterPCRS"."descriptionElementsQualite" IS
'Description des paramètres externes donnant les clés de compréhension de la qualité de l''otho-imagerie
Comprend la liste des éléments qui sont effectivement redressés dans le MNE qui a servi à l''ortho-rectification
Peut inclure toute exigence de qualité supplémentaire exigée lors du vol
(masque de nuage, recouvrement, etc ...)';
COMMENT ON COLUMN a_pcrs."RasterPCRS"."geometrie" IS
'Géométrie de type surfacique représentant l''emprise de la dalle';
COMMENT ON COLUMN a_pcrs."RasterPCRS"."idPCRS" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_pcrs."RasterPCRS"."nomImage" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_pcrs."RasterPCRS"."precisionPlanimetriqueCorpsdeRue" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée aux informations photométriques sur l''orthophotoplan pour ce qui concerne
les surfaces couvertes pas les corps de rue';
COMMENT ON COLUMN a_pcrs."RasterPCRS"."precisionPlanimetriqueZonesNaturelles" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée aux informations photométriques sur l''orthophotoplan pour ce qui concerne
les surfaces non couvertes pas les corps de rue';
COMMENT ON COLUMN a_pcrs."RasterPCRS"."resolution" IS
'La taille au sol d''un pixel de l''ortho-image en cm';
COMMENT ON COLUMN a_pcrs."RasterPCRS"."typeImage" IS
'Format de l''image
Les mime-types s''ils existent doivent être privilégiés.
Exemple : image/jp2';
COMMENT ON COLUMN a_pcrs."RasterPCRS"."producteur" IS
'Producteur de la donnée
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des dalles d''un producteur donné.';


-- ---------------------------------
-- Classe : MasqueOpacitePCRS
-- ---------------------------------

--DROP INDEX if exists a_pcrs."MasqueOpacitePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_pcrs."MasqueOpacitePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_pcrs."MasqueOpacitePCRS" cascade;

--CREATE SEQUENCE a_pcrs."MasqueOpacitePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: MasqueOpacitePCRS
--DROP TABLE if exists a_pcrs."MasqueOpacitePCRS" cascade;
CREATE TABLE a_pcrs."MasqueOpacitePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_pcrs."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "transparence" integer NOT NULL CHECK ("transparence" >= 0 AND "transparence" <= 100),
  CONSTRAINT "MasqueOpacitePCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."HabillagePCRS")
WITH (
  OIDS=FALSE
);


-- Index: MasqueOpacitePCRS_geometrie_geomidx
--DROP INDEX if exists a_pcrs."MasqueOpacitePCRS_geometrie_geomidx" cascade;
CREATE INDEX "MasqueOpacitePCRS_geometrie_geomidx"
  ON a_pcrs."MasqueOpacitePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_pcrs."MasqueOpacitePCRS" IS
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

COMMENT ON COLUMN a_pcrs."MasqueOpacitePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_pcrs."MasqueOpacitePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_pcrs."MasqueOpacitePCRS"."geometrie" IS
'Géométrie de type surfacique représentant la zone masquée';
COMMENT ON COLUMN a_pcrs."MasqueOpacitePCRS"."transparence" IS
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
--DROP TABLE if exists a_pcrs."RoleActeurPCRS17Relation" cascade;
--CREATE TABLE a_pcrs."RoleActeurPCRS17Relation"
--(
--  "acteur" character varying NOT NULL REFERENCES a_pcrs."ActeurPCRS17Type" ("code"),
--  "role" character varying NOT NULL REFERENCES a_pcrs."RoleNiveau2PCRS17Type" ("code")
--)
--WITH (
--  OIDS=FALSE
--);

--INSERT INTO a_pcrs."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('01', '02');
--INSERT INTO a_pcrs."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('02', '06');
--INSERT INTO a_pcrs."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('03', '06');
--INSERT INTO a_pcrs."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('04', '06');
--INSERT INTO a_pcrs."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('05', '02');
--INSERT INTO a_pcrs."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('05', '03');
--INSERT INTO a_pcrs."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('05', '06');
--INSERT INTO a_pcrs."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('06', '05');
--INSERT INTO a_pcrs."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('06', '06');
--INSERT INTO a_pcrs."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('07', '04');


-- ---------------------------------
-- Classe : InitiativeActeurPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_pcrs."InitiativeActeurPCRS17Relation" cascade;
CREATE TABLE a_pcrs."InitiativeActeurPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "initiative" character varying NOT NULL REFERENCES a_pcrs."InitiativePCRS" ("idInitiative"),
  "acteur" character varying NOT NULL REFERENCES a_pcrs."ActeurPCRS17Type" ("code"),
  "roleNiveau1" character varying NOT NULL REFERENCES a_pcrs."RoleNiveau1PCRS17Type" ("code"),
  "roleNiveau2" character varying NOT NULL REFERENCES a_pcrs."RoleNiveau2PCRS17Type" ("code")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."InitiativeActeurPCRS17Relation" IS
'Une initiative du PCRS constitue une zone dans laquelle différents acteurs se sont
coordonnés pour initier un PCRS.
Par leurs missions, les différents intervenants liés au PCRS peuvent être amenés
à se reconnaitre dans plusieurs rôles très distincts, chaque rôle étant lié à un
cas d''utilisation bien identifié au PCRS.';

-- ---------------------------------
-- Classe : InitiativeCommunePCRS17Relation
-- ---------------------------------

-- Table: InitiativeCommunePCRS17Relation
--DROP TABLE if exists a_pcrs."InitiativeCommunePCRS17Relation" cascade;
CREATE TABLE a_pcrs."InitiativeCommunePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "commune" character varying NOT NULL REFERENCES a_pcrs."Commune" ("codeINSEE"),
  "initiative" character varying NOT NULL REFERENCES a_pcrs."InitiativePCRS" ("idInitiative")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."InitiativeCommunePCRS17Relation" IS
'Une initiative PCRS concerne une ou plusieurs communes';

COMMENT ON COLUMN a_pcrs."InitiativeCommunePCRS17Relation"."commune" IS
'';
COMMENT ON COLUMN a_pcrs."InitiativeCommunePCRS17Relation"."initiative" IS
'';


-- ---------------------------------
-- Classe : EmpriseDisponibiliteCommunePCRS17Relation
-- ---------------------------------

-- Table: EmpriseDisponibiliteCommunePCRS17Relation
--DROP TABLE if exists a_pcrs."EmpriseDisponibiliteCommunePCRS17Relation" cascade;
CREATE TABLE a_pcrs."EmpriseDisponibiliteCommunePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "commune" character varying NOT NULL REFERENCES a_pcrs."Commune" ("codeINSEE"),
  "empriseDisponibilite" character varying NOT NULL REFERENCES a_pcrs."EmpriseDisponibilitePCRS" ("idEmpriseDisponibilite")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."EmpriseDisponibiliteCommunePCRS17Relation" IS
'Une emprise de disponibilité concerne une ou plusieurs communes';

COMMENT ON COLUMN a_pcrs."EmpriseDisponibiliteCommunePCRS17Relation"."commune" IS
'';
COMMENT ON COLUMN a_pcrs."EmpriseDisponibiliteCommunePCRS17Relation"."empriseDisponibilite" IS
'';

-- ---------------------------------
-- Classe : EmpriseEchangeCommunePCRS17Relation
-- ---------------------------------

-- Table: EmpriseEchangeCommunePCRS17Relation
--DROP TABLE if exists a_pcrs."EmpriseEchangeCommunePCRS17Relation" cascade;
CREATE TABLE a_pcrs."EmpriseEchangeCommunePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "commune" character varying NOT NULL REFERENCES a_pcrs."Commune" ("codeINSEE"),
  "empriseEchange" character varying NOT NULL REFERENCES a_pcrs."EmpriseEchangePCRS" ("idEmpriseEchange")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."EmpriseEchangeCommunePCRS17Relation" IS
'Une emprise d''échange est réalisé sur une ou plusieurs communes';

COMMENT ON COLUMN a_pcrs."EmpriseEchangeCommunePCRS17Relation"."commune" IS
'';
COMMENT ON COLUMN a_pcrs."EmpriseEchangeCommunePCRS17Relation"."empriseEchange" IS
'';


-- ---------------------------------
-- Classe : EmpriseDisponibiliteTronconVoiriePCRS17Relation
-- ---------------------------------

-- Table: EmpriseDisponibiliteTronconVoiriePCRS17Relation
--DROP TABLE if exists a_pcrs."EmpriseDisponibiliteTronconVoiriePCRS17Relation" cascade;
CREATE TABLE a_pcrs."EmpriseDisponibiliteTronconVoiriePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "tronconVoirie" character varying NOT NULL REFERENCES a_pcrs."TronconVoirie" ("reference"),
  "empriseDisponibilite" character varying NOT NULL REFERENCES a_pcrs."EmpriseDisponibilitePCRS" ("idEmpriseDisponibilite")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."EmpriseDisponibiliteTronconVoiriePCRS17Relation" IS
'Une emprise de disponibilité concerne un ou plusieurs tronçons de voirie.';

COMMENT ON COLUMN a_pcrs."EmpriseDisponibiliteTronconVoiriePCRS17Relation"."tronconVoirie" IS
'';
COMMENT ON COLUMN a_pcrs."EmpriseDisponibiliteTronconVoiriePCRS17Relation"."empriseDisponibilite" IS
'';

-- ---------------------------------
-- Classe : EmpriseEchangeTronconVoiriePCRS17Relation
-- ---------------------------------

-- Table: EmpriseEchangeTronconVoiriePCRS17Relation
--DROP TABLE if exists a_pcrs."EmpriseEchangeTronconVoiriePCRS17Relation" cascade;
CREATE TABLE a_pcrs."EmpriseEchangeTronconVoiriePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "tronconVoirie" character varying NOT NULL REFERENCES a_pcrs."TronconVoirie" ("reference"),
  "empriseEchange" character varying NOT NULL REFERENCES a_pcrs."EmpriseEchangePCRS" ("idEmpriseEchange")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."EmpriseEchangeTronconVoiriePCRS17Relation" IS
'Une emprise d''échange est localisée sur un ou plusieurs tronçons de voirie.';

COMMENT ON COLUMN a_pcrs."EmpriseEchangeTronconVoiriePCRS17Relation"."tronconVoirie" IS
'';
COMMENT ON COLUMN a_pcrs."EmpriseEchangeTronconVoiriePCRS17Relation"."empriseEchange" IS
'';


-- ---------------------------------
-- Classe : HabillageHabillagePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_pcrs."HabillageHabillagePCRS17Relation" cascade;
CREATE TABLE a_pcrs."HabillageHabillagePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "habillage1" character varying NOT NULL REFERENCES a_pcrs."HabillagePCRS" ("idHabillage"),
  "habillage2" character varying NOT NULL REFERENCES a_pcrs."HabillagePCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."HabillageHabillagePCRS17Relation" IS
'Une élément d''habillage peut être relié à 0, un ou plusieurs autres éléments d''habillage.';


-- ---------------------------------
-- Classe : ObjetVecteurPointLevePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_pcrs."ObjetVecteurPointLevePCRS17Relation" cascade;
CREATE TABLE a_pcrs."ObjetVecteurPointLevePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "objet" character varying NOT NULL REFERENCES a_pcrs."ObjetVecteurPCRS" ("idObjet"),
  "pointLeve" character varying NOT NULL REFERENCES a_pcrs."PointLevePCRS" ("numeroPoint")
  --CONSTRAINT "ObjetVecteurPointLevePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."ObjetVecteurPointLevePCRS17Relation" IS
'Un objet vecteur peut être lié à 0, un ou plusieurs points levés.';

-- ---------------------------------
-- Classe : AffleurantGeometriqueAffleurantLignesPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_pcrs."AffleurantGeometriqueAffleurantLignesPCRS17Relation" cascade;
CREATE TABLE a_pcrs."AffleurantGeometriqueAffleurantLignesPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantGeometrique" character varying NOT NULL REFERENCES a_pcrs."AffleurantGeometriquePCRS" ("idObjet"),
  "affleurantLignes" character varying NOT NULL REFERENCES a_pcrs."AffleurantLignesPCRS" ("idObjet")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."AffleurantGeometriqueAffleurantLignesPCRS17Relation" IS
'Un AffleurantGéométrique peut être lié à 0, un ou plusieurs AffleurantLignes.
Un caniveau peut être considéré comme un affleurant dont la géométrie est linéaire';

-- ---------------------------------
-- Classe : AffleurantGeometriqueAffleurantPointPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_pcrs."AffleurantGeometriqueAffleurantPointPCRS17Relation" cascade;
CREATE TABLE a_pcrs."AffleurantGeometriqueAffleurantPointPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantGeometrique" character varying NOT NULL REFERENCES a_pcrs."AffleurantGeometriquePCRS" ("idObjet"),
  "affleurantPoint" character varying NOT NULL REFERENCES a_pcrs."AffleurantPointPCRS" ("idObjet")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."AffleurantGeometriqueAffleurantPointPCRS17Relation" IS
'Un AffleurantGéométrique peut être lié à 0, un ou plusieurs AffleurantPoint.
Un poteau supportant le passage aérien d''un ou plusieurs réseaux ou une signalisation
tricolore peut être considéré comme un affleurant dont la géométrie est ponctuelle.';

-- ---------------------------------
-- Classe : AffleurantGeometriqueAffleurantEnveloppePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_pcrs."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation" cascade;
CREATE TABLE a_pcrs."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantGeometrique" character varying NOT NULL REFERENCES a_pcrs."AffleurantGeometriquePCRS" ("idObjet"),
  "affleurantEnveloppe" character varying NOT NULL REFERENCES a_pcrs."AffleurantEnveloppePCRS" ("idObjet")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation" IS
'Un AffleurantGéométrique peut être lié à 0, un ou plusieurs AffleurantEnveloppe.
La version actuelle du PCRS recommande l''utilisation de la classe AffleurantEnveloppe,
éventuellement complétée par un habillage HabillageLignes pour le dessin de
l''affleurant à l''intérieur de son enveloppe.';

-- ---------------------------------
-- Classe : AffleurantEnveloppeHabillageLignesPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_pcrs."AffleurantEnveloppeHabillageLignesPCRS17Relation" cascade;
CREATE TABLE a_pcrs."AffleurantEnveloppeHabillageLignesPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantEnveloppe" character varying NOT NULL REFERENCES a_pcrs."AffleurantEnveloppePCRS" ("idObjet"),
  "habillageLignes" character varying NOT NULL REFERENCES a_pcrs."HabillageLignesPCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."AffleurantEnveloppeHabillageLignesPCRS17Relation" IS
'Un AffleurantEnveloppe peut être lié à 0, un ou plusieurs HabillageLignes.
La version actuelle du PCRS recommande l''utilisation de la classe AffleurantEnveloppe,
éventuellement complétée par un habillage HabillageLignes pour le dessin de
l''affleurant à l''intérieur de son enveloppe.';

-- ---------------------------------
-- Classe : RasterMasqueOpacitePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_pcrs."RasterMasqueOpacitePCRS17Relation";
CREATE TABLE a_pcrs."RasterMasqueOpacitePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "raster" character varying NOT NULL REFERENCES a_pcrs."RasterPCRS" ("idPCRS"),
  "masqueOpacite" character varying NOT NULL REFERENCES a_pcrs."MasqueOpacitePCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_pcrs."RasterMasqueOpacitePCRS17Relation" IS
'Un AffleurantEnveloppe peut être lié à 0, un ou plusieurs HabillageLignes.
La version actuelle du PCRS recommande l''utilisation de la classe AffleurantEnveloppe,
éventuellement complétée par un habillage HabillageLignes pour le dessin de
l''affleurant à l''intérieur de son enveloppe.';



-- ---------------------------------
-- Remplissage
-- ---------------------------------


-- ---------------------------------
-- Remplissage : Commune
-- ---------------------------------

insert into a_pcrs."Commune"
select c_insee.cdalr_communes.code_insee,
       st_setsrid(st_multi(c_insee.cdalr_communes.shape),3946),
       c_insee.cdalr_communes.nom_commun,
       c_ignf.bdtopo_commune.id
from c_insee.cdalr_communes, c_ignf.bdtopo_commune
where c_insee.cdalr_communes.code_insee = c_ignf.bdtopo_commune.code_insee;


-- ---------------------------------
-- Remplissage : Initiative
-- ---------------------------------

INSERT INTO a_pcrs."InitiativePCRS"(
            description,
            gestionnaire,
            geometrie)
select
  'PCRS_CDA_LR' as description,
  '05' as gestionnaire,
  st_setsrid(st_multi(st_union(c_insee.cdalr_communes.shape)),3946) as geometrie
from c_insee.cdalr_communes;


-- ---------------------------------
-- Remplissage : EmpriseDisponibilitePCRS
-- ---------------------------------

INSERT INTO a_pcrs."EmpriseDisponibilitePCRS"(
            "dateActualite",
            initiative,
            calendrier,
            geometrie)
select
  date '2017-09-30' as "dateActualite",
  a_pcrs."InitiativePCRS"."idInitiative" as "initiative",
  '03' as calendrier,
  st_setsrid(st_multi(st_union(c_insee.cdalr_communes.shape)),3946) as geometrie
from
  c_insee.cdalr_communes,
  a_pcrs."InitiativePCRS"
where
  c_insee.cdalr_communes.code_insee in
    ('17028',
    '17190',
    '17200',
    '17274',
    '17291',
    '17300')
group by
  a_pcrs."InitiativePCRS"."idInitiative";


-- ---------------------------------
-- Remplissage : EmpriseEchangePCRS
-- ---------------------------------

        INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-16-A-19' as "complement",
              date '2017-10-02' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379420 5226600, 1379420 5226700, 1379560 5226700, 1379560 5226600, 1379420 5226600))', 3946)
                  ) as geometrie;

        INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-16-A-20' as "complement",
              date '2017-10-02' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379560 5226600, 1379560 5226700, 1379700 5226700, 1379700 5226600, 1379560 5226600))', 3946)
                  ) as geometrie;

        INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-16-B-16' as "complement",
              date '2017-10-02' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379700 5226600, 1379700 5226700, 1379840 5226700, 1379840 5226600, 1379700 5226600))', 3946)
                  ) as geometrie;

        INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-16-B-21' as "complement",
              date '2017-10-02' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379700 5226500, 1379700 5226600, 1379840 5226600, 1379840 5226500, 1379700 5226500))', 3946)
                  ) as geometrie;

        INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-16-B-22' as "complement",
              date '2017-10-02' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379840 5226500, 1379840 5226600, 1379980 5226600, 1379980 5226500, 1379840 5226500))', 3946)
                  ) as geometrie;

        INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-16-D-02' as "complement",
              date '2017-10-02' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379840 5226400, 1379840 5226500, 1379980 5226500, 1379980 5226400, 1379840 5226400))', 3946)
                  ) as geometrie;

        INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-16-D-03' as "complement",
              date '2017-10-02' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379980 5226400, 1379980 5226500, 1380120 5226500, 1380120 5226400, 1379980 5226400))', 3946)
                  ) as geometrie;
