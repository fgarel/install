-- ---------------------------------
-- DROP
-- ---------------------------------

DROP TABLE if exists "EmprisePCRS" cascade;
DROP TABLE if exists "InitiativePCRS" cascade;
DROP TABLE if exists "EmpriseDisponibilitePCRS" cascade;
DROP TABLE if exists "EmpriseEchangePCRS" cascade;

DROP TABLE if exists "Commune" cascade;
DROP TABLE if exists "TronconVoirie" cascade;

DROP TABLE if exists "HabillagePCRS" cascade;
DROP TABLE if exists "HabillagePointsPCRS" cascade;
DROP TABLE if exists "HabillageSymbolePCRS" cascade;
DROP TABLE if exists "HabillageTextePCRS" cascade;
DROP TABLE if exists "NomVoiriePCRS" cascade;
DROP TABLE if exists "NumeroVoiriePCRS" cascade;
DROP TABLE if exists "HabillageLignesPCRS" cascade;
DROP TABLE if exists "MasqueOpacitePCRS" cascade;

DROP TABLE if exists "PointLevePCRS" cascade;

DROP TABLE if exists "ObjetVecteurPCRS" cascade;
DROP TABLE if exists "PointCanevasPCRS" cascade;
DROP TABLE if exists "ObjetGeneriquePCRS" cascade;
DROP TABLE if exists "BordurePCRS" cascade;
DROP TABLE if exists "ChangementRevetementPCRS" cascade;
DROP TABLE if exists "MarcheEscalierPCRS" cascade;
DROP TABLE if exists "FacadePCRS" cascade;
DROP TABLE if exists "ProeminenceBatiPCRS" cascade;
DROP TABLE if exists "SeuilPCRS" cascade;
DROP TABLE if exists "MurPCRS" cascade;
DROP TABLE if exists "PilierPCRS" cascade;
DROP TABLE if exists "PilierRegulierPCRS" cascade;
DROP TABLE if exists "PilierParticulierPCRS" cascade;
DROP TABLE if exists "RailPCRS" cascade;
DROP TABLE if exists "HaieEspaceVertPCRS" cascade;
DROP TABLE if exists "ArbrePCRS" cascade;
DROP TABLE if exists "PilePontPCRS" cascade;
DROP TABLE if exists "AffleurantPCRS" cascade;
DROP TABLE if exists "AffleurantEnveloppePCRS" cascade;
DROP TABLE if exists "AffleurantLignePCRS" cascade;
DROP TABLE if exists "AffleurantPointPCRS" cascade;
DROP TABLE if exists "AffleurantSymbolePCRS" cascade;

DROP TABLE if exists "RasterPCRS" cascade;


-- --- Enumeration 1

DROP TABLE if exists "CategorieThematiquePCRSType" cascade;
DROP TABLE if exists "CategoriePrecisionPCRSType" cascade;
DROP TABLE if exists "NatureEmprisePCRSType" cascade;
DROP TABLE if exists "ProprieteEspacePCRSType" cascade;
DROP TABLE if exists "QualiteCategorisationPCRSType" cascade;
DROP TABLE if exists "CategorieBordurePCRSType" cascade;
DROP TABLE if exists "SectionPilierPCRSType" cascade;
DROP TABLE if exists "CategorieMurPCRSType" cascade;
DROP TABLE if exists "CategorieArbrePCRSType" cascade;
DROP TABLE if exists "NatureReseauPCRSType" cascade;
DROP TABLE if exists "NatureAffleurantPCRSType" cascade;
DROP TABLE if exists "CategoriePlacementPCRSType" cascade;
DROP TABLE if exists "TexteJustificationPCRSType" cascade;

-- --- Enumeration 2

DROP TABLE if exists "RoleNiveau1PCRSType" CASCADE;
DROP TABLE if exists "RoleNiveau2PCRSType" CASCADE;
DROP TABLE if exists "ActeurPCRSType" CASCADE;
DROP TABLE if exists "ClasseFilleObjetVecteurPCRSType" cascade;

-- --- Relation

DROP TABLE if exists "RoleActeurPCRSRelation" CASCADE;
DROP TABLE if exists "EmpriseCommunePCRSRelation" CASCADE;
DROP TABLE if exists "EmpriseActeurPCRSRelation" CASCADE;
DROP TABLE if exists "HabillageHabillagePCRSRelation" CASCADE;
DROP TABLE if exists "ObjetVecteurPointLevePCRSRelation" CASCADE;
DROP TABLE if exists "AffleurantAffleurantPCRSRelation" CASCADE;
DROP TABLE if exists "AffleurantEnveloppeHabillageLignePCRSRelation" CASCADE;
DROP TABLE if exists "RasterMasqueOpacitePCRSRelation" CASCADE;

-- ---------------------------------
-- Creation des tables "liste de valeurs / énumérations"
-- ---------------------------------


-- ---------------------------------
-- Classe : CategorieThematiquePCRSType
-- ---------------------------------

-- Table: CategorieThematiquePCRSType
--DROP TABLE if exists "CategorieThematiquePCRSType";
CREATE TABLE "CategorieThematiquePCRSType"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "CategorieThematiquePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('00', 'A déterminer', 'Concerne essentiellement les objets génériques dont la thématique, liée en général à la classe d objet, ne peut être déterminée à partir de la nomenclature lors de l initialisation du PCRS.');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('01', 'Topographie', 'Concerne les objets spécifiques à la topographie, et notamment les points de caneva et les points de levés topographiques');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('02', 'Bâti', 'Concerne les objets liés au bâti sur le domaine public ou en limite de celui-ci, et en particulier les seuils de bâtiments, les façades, les amorces de bâti, les proéminences de bâti, et les escaliers.');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('03', 'Voirie', 'Concerne les objets de types voies de circulation terrestre non ferroviaire du domaine public, et comprenant les limites apparentes de type bordures et bordurettes, changements de revêtements et escaliers');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('04', 'Ferroviaire', 'Concerne aussi bien les rails de SNCF Réseau que ceux liés à un transport public de type tramway ou tram-train et situés sur le domaine public');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('05', 'Clôture', 'Concerne les objets destinés à la clôture d un espace et ayant une limite apparente avec le domaine public, dont les murs de tous types et parapets, surmontés ou non d une clôture, les socles de clôtures, et les piliers.');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('06', 'Végétal', 'Concerne les objets végétaux de type haies et espaces verts, ainsi que les arbres d alignement');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('07', 'Ouvrage d Art', 'Concerne les ouvrages d art du domaine public (ex : piles de ponts)');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('08', 'Hydrographie', 'Concerne l hydrographie');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('09', 'Orographie', 'Concerne l orographie');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('10', 'Affleurant', 'Concerne un élément de réseau affleurant');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('11', 'Raster', 'Concerne une orthoimage (par exemple masque d opacité)');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('99', 'Non définie', 'La thématique n est pas définie dans les données sources du gestionnaire du PCRS');

COMMENT ON TABLE "CategorieThematiquePCRSType" IS
'Code permettant de décrire la thématique rattachée à un objet donné du PCRS';


-- ---------------------------------
-- Classe : CategoriePrecisionPCRSType
-- ---------------------------------

-- Table: CategoriePrecisionPCRSType
--DROP TABLE if exists "CategoriePrecisionPCRSType";
CREATE TABLE "CategoriePrecisionPCRSType"
(
  code character varying(3) unique,
  valeur character varying(17),
  CONSTRAINT "CategoriePrecisionPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('002', 'moins de 2 cm');
INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('005', 'de 2 à 5 cm');
INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('010', 'de 5 à 10 cm');
INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('040', 'de 10 à 40 cm');
--INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('100', 'de 40 à 100 cm');
--INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('150', 'de 100 à 150 cm');
INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('150', 'de 40 à 150 cm');
INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('999', 'au delà de 150 cm');

COMMENT ON TABLE "CategoriePrecisionPCRSType" IS
'Code permettant de décrire un intervalle de précision exprimée en cm associée au levé d un objet ou d un affleurant du PCRS';


-- ---------------------------------
-- Classe : NatureEmprisePCRSType
-- ---------------------------------

-- Table: NatureEmprisePCRSType
--DROP TABLE if exists "NatureEmprisePCRSType";
CREATE TABLE "NatureEmprisePCRSType"
(
  code character varying(2) unique,
  valeur character varying(21),
  CONSTRAINT "NatureEmprisePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('01', 'Couloir');
INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('02', 'Opération');
INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('03', 'Carreau');
INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('04', 'Limite Administrative');
INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('05', 'Raster');
INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('06', 'Masque');

COMMENT ON TABLE "NatureEmprisePCRSType" IS
'Code permettant de décrire la nature de l emprise d echange du PCRS.';

-- ---------------------------------
-- Classe : ProprieteEspacePCRSType
-- ---------------------------------

-- Table: ProprieteEspacePCRSType
--DROP TABLE if exists "ProprieteEspacePCRSType";
CREATE TABLE "ProprieteEspacePCRSType"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "ProprieteEspacePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "ProprieteEspacePCRSType" (code, valeur, definition) VALUES ('01', 'Espace Public', 'L espace considéré fait partie du domaine public');
INSERT INTO "ProprieteEspacePCRSType" (code, valeur, definition) VALUES ('02', 'Espace Privé', 'L espace considéré fait partie du domaine privé');

COMMENT ON TABLE "ProprieteEspacePCRSType" IS
'Code permettant de décrire la nature de l espace au sens distinction de l espce public / espace privé.';


-- ---------------------------------
-- Classe : QualiteCategorisationPCRSType
-- ---------------------------------

-- Table: QualiteCategorisationPCRSType
--DROP TABLE if exists "QualiteCategorisationPCRSType";
CREATE TABLE "QualiteCategorisationPCRSType"
(
  code character varying(2) unique,
  valeur character varying(27),
  definition character varying(255),
  CONSTRAINT "QualiteCategorisationPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('01', 'Très fiable / Conforme PCRS', 'La catégorisation de l objet du PCRS est conforme aux spécifications');
INSERT INTO "QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('02', 'Moyennement Fiable ', 'La catégorisation de l objet du PCRS est moyennement fiable');
INSERT INTO "QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('03', 'Peu fiable', 'La catégorisation de l objet du PCRS est peu fiable');

COMMENT ON TABLE "QualiteCategorisationPCRSType" IS
'Code permettant de décrire de façon extensible la qualité de catégorisation des objets du PCRS.';


-- ---------------------------------
-- Classe : CategorieBordurePCRSType
-- ---------------------------------

-- Table: CategorieBordurePCRSType
--DROP TABLE if exists "CategorieBordurePCRSType";
CREATE TABLE "CategorieBordurePCRSType"
(
  code character varying(2) unique,
  valeur character varying(7),
  definition character varying(255),
  CONSTRAINT "CategorieBordurePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CategorieBordurePCRSType" (code, valeur, definition) VALUES ('01', 'Bordure', 'Bordure, bordurette');
INSERT INTO "CategorieBordurePCRSType" (code, valeur, definition) VALUES ('02', 'Quai', 'Quai');

COMMENT ON TABLE "CategorieBordurePCRSType" IS
'Code permettant de décrire le type de bordure utilisée en voirie.';


-- ---------------------------------
-- Classe : SectionPilierPCRSType
-- ---------------------------------

-- Table: SectionPilierPCRSType
--DROP TABLE if exists "SectionPilierPCRSType";
CREATE TABLE "SectionPilierPCRSType"
(
  code character varying(2) unique,
  valeur character varying(20),
  definition character varying(255),
  CONSTRAINT "SectionPilierPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "SectionPilierPCRSType" (code, valeur, definition) VALUES ('00', 'Pilier autre', 'Autre type de pilier');
INSERT INTO "SectionPilierPCRSType" (code, valeur, definition) VALUES ('01', 'Pilier carré', 'Pilier à section carrée');
INSERT INTO "SectionPilierPCRSType" (code, valeur, definition) VALUES ('02', 'Pilier rectangulaire', 'Pilier à section rectangulaire');
INSERT INTO "SectionPilierPCRSType" (code, valeur, definition) VALUES ('03', 'Pilier circulaire', 'Pilier à section circulaire');

COMMENT ON TABLE "SectionPilierPCRSType" IS
'Code permettant de décrire le type de pilier.';


-- ---------------------------------
-- Classe : CategorieMurPCRSType
-- ---------------------------------

-- Table: CategorieMurPCRSType
--DROP TABLE if exists "CategorieMurPCRSType";
CREATE TABLE "CategorieMurPCRSType"
(
  code character varying(2) unique,
  valeur character varying(22),
  CONSTRAINT "CategorieMurPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

--INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('00', 'Non défini');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('01', 'Mur');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('02', 'Mur de soutènement');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('03', 'Mur bahut');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('04', 'Mur bahut avec clôture');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('05', 'Parapet');
--INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('06', 'Clôture sur socle');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('06', 'Enrochement');

COMMENT ON TABLE "CategorieMurPCRSType" IS
'Code permettant de décrire les différents types de mur.';


-- ---------------------------------
-- Classe : CategorieArbrePCRSType
-- ---------------------------------

-- Table: CategorieArbrePCRSType
--DROP TABLE if exists "CategorieArbrePCRSType";
CREATE TABLE "CategorieArbrePCRSType"
(
  code character varying(2) unique,
  valeur character varying(10),
  CONSTRAINT "CategorieArbrePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CategorieArbrePCRSType" (code, valeur) VALUES ('00', 'Non défini');
INSERT INTO "CategorieArbrePCRSType" (code, valeur) VALUES ('01', 'Alignement');
INSERT INTO "CategorieArbrePCRSType" (code, valeur) VALUES ('02', 'Ornement');

COMMENT ON TABLE "CategorieArbrePCRSType" IS
'Code permettant de décrire les différents types d arbres.';


-- ---------------------------------
-- Classe : NatureReseauPCRSType
-- ---------------------------------

-- Table: NatureReseauPCRSType
--DROP TABLE if exists "NatureReseauPCRSType";
CREATE TABLE "NatureReseauPCRSType"
(
  code character varying(8) unique,
  valeur character varying(33),
  codecouleur character varying(),
  CONSTRAINT "NatureReseauPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('00', 'Non défini', 'None');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('ELEC', 'Electricité', 'Rouge');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('ELECECL', 'Eclairage public', 'Rouge');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('ELECSLT', 'Signalisation lumineuse tricolore', 'Blanc');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('ELECBT', 'Electricité basse tension', 'Rouge');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('ELECHT', 'Electricité haute tension', 'Rouge');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('GAZ', 'Gaz', 'Jaune');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('MULT', 'Multi réseaux', 'Rose');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('CHIM', 'Produits chimiques', 'Orange');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('COM', 'Télécom', 'Vert');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('AEP', 'Eau Potable', 'Bleu');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('ASSA', 'Assainissement et pluvial', 'Marron');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('ASSAEP', 'Eaux pluviales', 'Marron');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('ASSAEU', 'Eaux usées', 'Marron');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('ASSARU', 'Réseau unitaire', 'Marron');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('DECH', 'Déchets', 'None');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('CHAU', 'Chauffage et climatisation', 'Violet');
INSERT INTO "NatureReseauPCRSType" (code, valeur, codecouleur) VALUES ('INCE', 'Incendie', 'Bleu');

COMMENT ON TABLE "NatureReseauPCRSType" IS
'Code permettant de décrire de façon extensible la nature d un réseau.';


-- ---------------------------------
-- Classe : CodeCouleurReseauPCRSType
-- ---------------------------------

-- Table: CodeCouleurReseauPCRSType
-- DROP TABLE if exists "CodeCouleurReseauPCRSType";
-- CREATE TABLE "CodeCouleurReseauPCRSType"
-- (
--   code character varying(6) unique,
--   valeur character varying(80),
--   definition character varying(80),
--   CONSTRAINT "CodeCouleurReseauPCRSType_pkey" PRIMARY KEY (code)
-- )
-- WITH (
--   OIDS=FALSE
-- );
--
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Rouge', '255,0,0', 'Electricité BT, HTA ou HTB, éclairage, signalisation routière et feux tricolores');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Jaune', '255,255,0', 'Gaz combustible (transport ou distribution) et Hydrocarbures');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Orange', '255,100,0', 'Produits chimiques');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Bleu', '0,0,255', 'Eau potable');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Marron', '125,73,0', 'Assainissement et Pluvial');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Violet', '100,0,100', 'Chauffage et Climatisation');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Vert', '0,255,0', 'Communications électroniques et électricité TBT');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Rose', '255,0,139', 'Emprise multi-réseaux');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Blanc', '255,255,255', 'Non-défini');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('None', '130,130,130', 'Non-défini');
--
-- COMMENT ON TABLE "CodeCouleurReseauPCRSType" IS
-- 'Code permettant de décrire la couleur associée à une nature de réseau. cf norme NF P 98-332';


-- ---------------------------------
-- Classe : NatureAffleurantPCRSType
-- ---------------------------------

-- Table: NatureAffleurantPCRSType
--DROP TABLE if exists "NatureAffleurantPCRSType";
CREATE TABLE "NatureAffleurantPCRSType"
(
  code character varying(2) unique,
  valeur character varying(23),
  definition character varying(255),
  CONSTRAINT "NatureAffleurant_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

--INSERT INTO "NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('00', 'Non défini', 'Les informations collectées ne permettent pas d identifier sans ambiguité la nature de l affleurant');
INSERT INTO "NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('01', 'Avaloir', 'Dispositif à garde d eau destiné principalement à recueillir les eaux de ruisselement ou de nettoyage des sols');
INSERT INTO "NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('02', 'Boîte, Coffret, Armoire', 'Boîte, coffret ou armoire technique qui centralise des éléments de réseaux');
INSERT INTO "NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('03', 'Tampon, Plaque, Chambre', 'Couvercle d un regard d assainissement ou d une chambre souterraine de génie civil pour le passage des réseaux et présent notamment sur les chaussées');
INSERT INTO "NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('04', 'Branchement, Vanne, Bouche à clé', 'Accessoire de robinetterie permettant de manoeuvrer depuis la chaussée, une vanne ou un robinet de branchement enterré');
INSERT INTO "NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('05', 'Bouche incendie, Poteau incendie', 'Permet aux services de lutte contre l incendie (pompiers) de puiser l eau du réeau');
INSERT INTO "NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('06', 'Poteau', 'Poteau supportant le passage aérien d un ou plusieurs réseaux ou une signalisation tricolore');
INSERT INTO "NatureAffleurantPCRSType" (code, valeur, definition) VALUES ('07', 'Poteau d éclairage', 'Borne lumineuse pour la mise en valeur / l éclairage de l espace public');

COMMENT ON TABLE "NatureAffleurantPCRSType" IS
'Code permettant de décrire de façon extensible la nature d un affleurant de réseaux.';


-- ---------------------------------
-- Classe : CalendrierPCRSType
-- ---------------------------------

-- Table: CalendrierPCRSType
-- DROP TABLE if exists "CalendrierPCRSType";
-- CREATE TABLE "CalendrierPCRSType"
-- (
--   code character varying(2) unique,
--   valeur character varying(24),
--   CONSTRAINT "CalendrierPCRSType_pkey" PRIMARY KEY (code)
-- )
-- WITH (
--   OIDS=FALSE
-- );
--
-- INSERT INTO "CalendrierPCRSType" (code, valeur) VALUES ('01', 'Livré, Mis A Disposition');
-- INSERT INTO "CalendrierPCRSType" (code, valeur) VALUES ('02', 'Actualisation En Cours');
-- INSERT INTO "CalendrierPCRSType" (code, valeur) VALUES ('03', 'En Projet, Planifié');
-- INSERT INTO "CalendrierPCRSType" (code, valeur) VALUES ('04', 'Non Planifié');
--
-- COMMENT ON TABLE "CalendrierPCRSType" IS
-- 'Code permettant de décrire la date de disponibilité du PCRS.';


-- ---------------------------------
-- Classe : CotationPCRSType
-- ---------------------------------

-- Table: CotationPCRSType
-- DROP TABLE if exists "CotationPCRSType";
-- CREATE TABLE "CotationPCRSType"
-- (
--   code character varying(2) unique,
--   valeur character varying(38),
--   CONSTRAINT "CotationPCRSType_pkey" PRIMARY KEY (code)
-- )
-- WITH (
--   OIDS=FALSE
-- );
--
-- INSERT INTO "CotationPCRSType" (code, valeur) VALUES ('01', 'Non Utilisable Pour Coter');
-- INSERT INTO "CotationPCRSType" (code, valeur) VALUES ('02', 'Cotation Planimetrique Uniquement');
-- INSERT INTO "CotationPCRSType" (code, valeur) VALUES ('03', 'Cotation Planimetrique Et Altimetrique');
--
-- COMMENT ON TABLE "CotationPCRSType" IS
-- 'Code permettant de décrire si l objet peut etre utilisable pour coter.';


-- ---------------------------------
-- Classe : CategoriePlacementPCRSType
-- ---------------------------------

-- Table: CategoriePlacementPCRSType
--DROP TABLE if exists "CategoriePlacementPCRSType";
CREATE TABLE "CategoriePlacementPCRSType"
(
  code character varying(2) unique,
  valeur character varying(21),
  definition character varying(255),
  CONSTRAINT "CategoriePlacementPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('01', 'Sans Repositionnement', 'L élément d habillage n a pas été repositionné par rapport à la source de données dont il est issu.');
INSERT INTO "CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('02', 'Axe Voirie', 'L élément d habillage est positionné sur ou très proche de l axe de voirie ');
INSERT INTO "CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('03', 'Limite Voirie', 'L élément d habillage est positionné en limite de voirie');
INSERT INTO "CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('04', 'Hors Voirie', 'L élément d habillage est positionné en dehors des limites de voirie');
INSERT INTO "CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('05', 'Parcelle', 'L élément d habillage est positionné à l intérieur d une parcelle et proche des limites de voirie');

COMMENT ON TABLE "CategoriePlacementPCRSType" IS
'Code permettant de décrire le type de positionnement des éléments d habillage.';


-- ---------------------------------
-- Classe : TexteJustificationPCRSType
-- ---------------------------------

-- Table: TexteJustificationPCRSType
--DROP TABLE if exists "TexteJustificationPCRSType";
CREATE TABLE "TexteJustificationPCRSType"
(
  code character varying(1) unique,
  valeur character varying(6),
  definition character varying(255),
  CONSTRAINT "TexteJustificationPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "TexteJustificationPCRSType" (code, valeur, definition) VALUES ('G', 'Gauche', 'Le texte est justifé à gauche');
INSERT INTO "TexteJustificationPCRSType" (code, valeur, definition) VALUES ('C', 'Centré', 'Le texte est centré');
INSERT INTO "TexteJustificationPCRSType" (code, valeur, definition) VALUES ('D', 'Droite', 'Le texte est justifé à droite');

COMMENT ON TABLE "TexteJustificationPCRSType" IS
'Code permettant de justifier un texte d habillage.';


-- ---------------------------------
-- Classe : RoleNiveau1PCRSType
-- ---------------------------------

-- Table: RoleNiveau1PCRSType
--DROP TABLE if exists "RoleNiveau1PCRSType" CASCADE;
CREATE TABLE "RoleNiveau1PCRSType"
(
  code character varying(2) unique,
  valeur character varying(38),
  CONSTRAINT "RoleNiveau1PCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "RoleNiveau1PCRSType" (code, valeur) VALUES ('01', 'Echelon national du PCRS');
INSERT INTO "RoleNiveau1PCRSType" (code, valeur) VALUES ('02', 'Gestionnaire du PCRS');
INSERT INTO "RoleNiveau1PCRSType" (code, valeur) VALUES ('03', 'Producteur du PCRS');
INSERT INTO "RoleNiveau1PCRSType" (code, valeur) VALUES ('04', 'Utilisateur du PCRS');

COMMENT ON TABLE "RoleNiveau1PCRSType" IS
'Code permettant de décrire le role de l''acteur.';


-- ---------------------------------
-- Classe : RoleNiveau2PCRSType
-- ---------------------------------

-- Table: RoleNiveau2PCRSType
--DROP TABLE if exists "RoleNiveau2PCRSType";
CREATE TABLE "RoleNiveau2PCRSType"
(
  "roleNiveau1" character varying(2) NOT NULL REFERENCES "RoleNiveau1PCRSType" ("code"),
  code character varying(2) unique,
  valeur character varying(38),
  CONSTRAINT "RoleNiveau2PCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "RoleNiveau2PCRSType" ("roleNiveau1", code, valeur) VALUES ('01', '01', 'Echelon national du PCRS');
INSERT INTO "RoleNiveau2PCRSType" ("roleNiveau1", code, valeur) VALUES ('02', '02', 'Gestionnaire du PCRS');
INSERT INTO "RoleNiveau2PCRSType" ("roleNiveau1", code, valeur) VALUES ('03', '03', 'Gestionnaire Référentiel Voirie');
INSERT INTO "RoleNiveau2PCRSType" ("roleNiveau1", code, valeur) VALUES ('03', '04', 'Gestionnaire Foncier');
INSERT INTO "RoleNiveau2PCRSType" ("roleNiveau1", code, valeur) VALUES ('03', '05', 'Gestionnaire Voirie');
INSERT INTO "RoleNiveau2PCRSType" ("roleNiveau1", code, valeur) VALUES ('03', '06', 'Exploitant de réseaux');
INSERT INTO "RoleNiveau2PCRSType" ("roleNiveau1", code, valeur) VALUES ('03', '07', 'Autre Gestionnaire');
INSERT INTO "RoleNiveau2PCRSType" ("roleNiveau1", code, valeur) VALUES ('03', '08', 'Producteur d orthophotos');

COMMENT ON TABLE "RoleNiveau2PCRSType" IS
'Code permettant de décrire le role de l''acteur.';


-- ---------------------------------
-- Classe : ActeurPCRSType
-- ---------------------------------

-- Table: ActeurPCRSType
--DROP TABLE if exists "ActeurPCRSType";
CREATE TABLE "ActeurPCRSType"
(
  code character varying(2) unique,
  valeur character varying(38),
  CONSTRAINT "ActeurPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('01', 'Soluris 17');
INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('02', 'Enedis');
INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('03', 'SDE');
INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('04', 'SDEER');
INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('05', 'CDA');
INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('06', 'VLR');
INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('07', 'DGFiP');


COMMENT ON TABLE "ActeurPCRSType" IS
'Code permettant de décrire l acteur.';


-- ---------------------------------
-- Classe : ClasseFilleObjetVecteurPCRSType
-- ---------------------------------

-- Table: ClasseFilleObjetVecteurPCRSType
--DROP TABLE if exists "ClasseFilleObjetVecteurPCRSType";
CREATE TABLE "ClasseFilleObjetVecteurPCRSType"
(
  --code character varying(2) unique,
  valeur character varying(38),
  CONSTRAINT "ClasseFilleObjetVecteurPCRSType_pkey" PRIMARY KEY (valeur)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('ObjetVecteurPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('PointCanevasPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('ObjetGeneriquePCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('BordurePCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('ChangementRevetementPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('MarcheEscalierPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('FacadePCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('ProeminenceBatiPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('SeuilPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('MurPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('PilierPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('PilierRegulierPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('PilierParticulierPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('RailPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('HaieEspaceVertPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('ArbrePCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('PilePontPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('AffleurantPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('AffleurantEnveloppePCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('AffleurantLignePCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('AffleurantPointPCRS');
INSERT INTO "ClasseFilleObjetVecteurPCRSType" (valeur) VALUES ('AffleurantSymbolePCRS');


-- ---------------------------------
-- Creation des tables "objets géographiques du PCRS"
-- ---------------------------------


-- ---------------------------------
-- Classe : EmprisePCRS
-- ---------------------------------

-- Sequence: EmprisePCRS_idEmprise_seq
--DROP INDEX if exists "EmprisePCRS_geometrie_geomidx";
--DROP TABLE if exists "EmprisePCRS";
DROP SEQUENCE if exists "EmprisePCRS_idEmprise_seq";

CREATE SEQUENCE "EmprisePCRS_idEmprise_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: EmprisePCRS
--DROP TABLE if exists "EmprisePCRS";
CREATE TABLE "EmprisePCRS"
(
  --"commune" character varying REFERENCES "Commune" ("codeINSEE"),
  "geometrie" geometry(MultiPolygon,3946) NOT NULL,
  --"habillage" character varying,
  "idEmprise" character varying UNIQUE NOT NULL DEFAULT nextval('"EmprisePCRS_idEmprise_seq"'::regclass),
  --"objet" character varying,
  --"raster" character varying,
  --"tronçon" character varying REFERENCES "TronconVoirie" ("reference"),
  CONSTRAINT "EmprisePCRS_pkey" PRIMARY KEY ("idEmprise")
)
WITH (
  OIDS=FALSE
);

-- Index: EmprisePCRS_geometrie_geomidx
--DROP INDEX if exists "EmprisePCRS_geometrie_geomidx";
CREATE INDEX "EmprisePCRS_geometrie_geomidx"
  ON "EmprisePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE "EmprisePCRS" IS
'Nom de la classe :
EmprisePCRS

Titre :
Emprise du PCRS

Définition :
Une emprise du PCRS constitue un élément surfacique de délimitation de l''espace qui
présente des caractéristiques communes.
Une emprise du PCRS permet d''accéder à l''ensemble des éléments constituant le
PCRS, et sert en particulier à repérer les objets du PCRS, en général associés à une
thématique et porteurs de précision, ainsi que les affleurants de réseaux de tous types.

Modélisation :
Surface
La collectivité gestionnaire du PCRS a toute latitude quant à la définition géométrique
des emprises du PCRS.

Regroupement :
Les emprises du PCRS incluent notamment, sous forme de classes spécialisées
- les emprises d''échange du PCRS, décrites par la classe spécialisée
EmpriseEchangePCRS,
- les emprises de disponibilité du PCRS, décrites par la classe EmpriseDisponibilitéPCRS,
- les initiatives PCRS, décrites par la classe InitiativesPCRS.

Contraintes :
Classe abstraite, implémentée via les classes spécialisées EmpriseEchangePCRS,
EmpriseDisponibilitePCRS et InitiativePCRS';
COMMENT ON COLUMN "EmprisePCRS"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';
COMMENT ON COLUMN "EmprisePCRS"."idEmprise" IS
'Identifiant unique dans le jeu de données des emprises du PCRS.
L unicité doit être assurée par le gestionnaire et viser une unicité nationale.
Elle peut être atteinte en préfixant l identifiant par le code SIREN du producteur.';


-- ---------------------------------
-- Classe : InitiativePCRS
-- ---------------------------------

-- Sequence: InitiativePCRS_idEmprise_seq
--DROP INDEX if exists "InitiativePCRS_geometrie_geomidx";
--DROP TABLE if exists "InitiativePCRS";
--DROP SEQUENCE if exists "InitiativePCRS_idEmprise_seq";

--CREATE SEQUENCE "InitiativePCRS_idEmprise_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: InitiativePCRS
--DROP TABLE if exists "InitiativePCRS";
CREATE TABLE "InitiativePCRS"
(
  --"commune" character varying,
  "geometrie" geometry(MultiPolygon,3946) NOT NULL,
  --"habillage" character varying,
  "idEmprise" character varying UNIQUE NOT NULL DEFAULT nextval('"EmprisePCRS_idEmprise_seq"'::regclass),
  --"objet" character varying,
  --"raster" character varying,
  --"tronçon" character varying,
  "description" character varying,
  "gestionnaire" character varying NOT NULL,
  --"partenaires" character varying,
  CONSTRAINT "InitiativePCRS_pkey" PRIMARY KEY ("idEmprise")
)
INHERITS ("EmprisePCRS")
WITH (
  OIDS=FALSE
);

-- Index: InitiativePCRS_geometrie_geomidx
--DROP INDEX if exists "InitiativePCRS_geometrie_geomidx";
CREATE INDEX "InitiativePCRS_geometrie_geomidx"
  ON "InitiativePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE "InitiativePCRS" IS
'Nom de la classe :
InitiativePCRS

Sous-classe de :
EmprisePCRS

Titre :
Initiative du PCRS

Définition :
Une initiative du PCRS constitue une zone dans laquelle différents acteurs se sont
coordonnés pour initier un PCRS. Cette classse pourra permettre d''alimenter
l''observatoire du PCRS (http://cnig.gouv.fr/pcrs/obs_pcrs/?q=carto).

Modélisation :
Surface.

Regroupement :
La zone décrite ne présume pas que les données soient disponibles.

Contraintes :
Classe métadonnée du PCRS, accompagnant les métadonnées de publication du PCRS';

COMMENT ON COLUMN "InitiativePCRS"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';
COMMENT ON COLUMN "InitiativePCRS"."idEmprise" IS
'Identifiant unique dans le jeu de données des emprises du PCRS.
L unicité doit être assurée par le gestionnaire et viser une unicité nationale.
Elle peut être atteinte en préfixant l identifiant par le code SIREN du producteur.';
COMMENT ON COLUMN "InitiativePCRS"."description" IS
'Information complémentaire liée à l initiative';
COMMENT ON COLUMN "InitiativePCRS"."gestionnaire" IS
'Nom de la collectivité gestionnaire du PCRS';
--COMMENT ON COLUMN "InitiativePCRS"."partenaires" IS
--'Nom des partenaires dans l intiative';


-- ---------------------------------
-- Classe : EmpriseDisponibilitePCRS
-- ---------------------------------

-- Sequence: EmpriseDisponibilitePCRS_idEmprise_seq
--DROP INDEX if exists "EmpriseDisponibilitePCRS_geometrie_geomidx";
--DROP TABLE if exists "EmpriseDisponibilitePCRS";
--DROP SEQUENCE if exists "EmpriseDisponibilitePCRS_idEmprise_seq";

--CREATE SEQUENCE "EmpriseDisponibilitePCRS_idEmprise_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: EmpriseDisponibilitePCRS
--DROP TABLE if exists "EmpriseDisponibilitePCRS";
CREATE TABLE "EmpriseDisponibilitePCRS"
(
  --"commune" character varying,
  "geometrie" geometry(MultiPolygon,3946) NOT NULL,
  --"habillage" character varying,
  "idEmprise" character varying UNIQUE NOT NULL DEFAULT nextval('"EmprisePCRS_idEmprise_seq"'::regclass),
  --"objet" character varying,
  --"raster" character varying,
  --"tronçon" character varying,
  "dateActualite" date NOT NULL,
  "initiative" character varying REFERENCES "InitiativePCRS" ("idEmprise"),
  CONSTRAINT "EmpriseDisponibilitePCRS_pkey" PRIMARY KEY ("idEmprise")
)
INHERITS ("EmprisePCRS")
WITH (
  OIDS=FALSE
);

-- Index: EmpriseDisponibilitePCRS_geometrie_geomidx
--DROP INDEX if exists "EmpriseDisponibilitePCRS_geometrie_geomidx";
CREATE INDEX "EmpriseDisponibilitePCRS_geometrie_geomidx"
  ON "EmpriseDisponibilitePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE "EmpriseDisponibilitePCRS" IS
'Nom de la classe :
EmpriseDisponibilitePCRS

Sous-classe de :
EmprisePCRS

Titre :
Emprise de disponibilité du PCRS

Définition :
Une emprise de disponibilité du PCRS constitue un élément surfacique d''indication des
zones disponibles à une date donnée. Cette information permet de savoir si un plan
PCRS est disponible sur une zone donnée. Elle vient compléter la classe InitiativePCRS.

Modélisation :
Surface.

Regroupement :
Les emprises de disponibilité du PCRS peuvent correspondre à un ensemble de tronçons
de voirie ou à un ensemble de commune.

Contraintes :
Classe métadonnée du PCRS, accompagnant les métadonnées de publication du PCRS';

COMMENT ON COLUMN "EmpriseDisponibilitePCRS"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';
COMMENT ON COLUMN "EmpriseDisponibilitePCRS"."idEmprise" IS
'Identifiant unique dans le jeu de données des emprises du PCRS.
L unicité doit être assurée par le gestionnaire et viser une unicité nationale.
Elle peut être atteinte en préfixant l identifiant par le code SIREN du producteur.';
COMMENT ON COLUMN "EmpriseDisponibilitePCRS"."dateActualite" IS
'Date à laquelle la disponibilité est valide';

-- ---------------------------------
-- Classe : EmpriseEchangePCRS
-- ---------------------------------

-- Sequence: EmpriseEchangePCRS_idEmprise_seq
--DROP INDEX if exists "EmpriseEchangePCRS_geometrie_geomidx";
--DROP TABLE if exists "EmpriseEchangePCRS";
--DROP SEQUENCE if exists "EmpriseEchangePCRS_idEmprise_seq";

--CREATE SEQUENCE "EmpriseEchangePCRS_idEmprise_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: EmpriseEchangePCRS
--DROP TABLE if exists "EmpriseEchangePCRS";
CREATE TABLE "EmpriseEchangePCRS"
(
  --"commune" character varying,
  "geometrie" geometry(MultiPolygon,3946) NOT NULL,
  --"habillage" character varying,
  "idEmprise" character varying UNIQUE NOT NULL DEFAULT nextval('"EmprisePCRS_idEmprise_seq"'::regclass),
  --"objet" character varying,
  --"raster" character varying,
  --"tronçon" character varying,
  "complement" character varying,
  "datePublication" date NOT NULL,
  --"calendrier" character varying(2) REFERENCES "CalendrierPCRSType" (code),
  "gestionnaire" character varying NOT NULL,
  --"gestionnaire" character varying NOT NULL REFERENCES "Gestionnaire",
  --"type" character varying,
  "type" character varying(2) REFERENCES "NatureEmprisePCRSType" (code),
  CONSTRAINT "EmpriseEchangePCRS_idEmprise_seq_pkey" PRIMARY KEY ("idEmprise")
)
INHERITS ("EmprisePCRS")
WITH (
  OIDS=FALSE
);

-- Index: EmpriseEchangePCRS_geometrie_geomidx
--DROP INDEX if exists "EmpriseEchangePCRS_geometrie_geomidx";
CREATE INDEX "EmpriseEchangePCRS_geometrie_geomidx"
  ON "EmpriseEchangePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE "EmpriseEchangePCRS" IS
'Nom de la classe :
EmpriseEchangePCRS

Sous-classe de :
EmprisePCRS

Titre :
Emprise d''échange du PCRS

Définition :
Une emprise d''échange du PCRS constitue un élément surfacique de délimitation de
l''espace public, et lorsque disponible de l''espace privé. Elle est localisée sur une
commune, et peut être qualifiée par les tronçons de voirie concernés.
Une emprise d''échange du PCRS permet d''accéder à l''ensemble des éléments
constituant le PCRS, et sert en particulier à repérer les objets du PCRS, en général
associés à une thématique et porteurs de précision, ainsi que les affleurants de réseaux
de tous types.
Parmi les éléments d''habillage d''une emprise d''échange du PCRS, on distinguera en
particulier les noms ainsi que les numéros de voirie devant obligatoirement figurer dans
un PCRS.
Une emprise d''échange du PCRS contient également des éléments de calendrier
précisant la date de publication des données concernées.
Même si la faisabilité de l''utilisation de l''image pour répondre aux obligations DT/DICT
reste à démontrer, le modèle de données en prévoit la gestion : ainsi, l''emprise
d''échange du PCRS peut également être décrite par une ou plusieurs images haute ou
très haute résolution éventuellement complétées d''objets vecteurs.

Modélisation :
Surface
La collectivité gestionnaire du PCRS a toute latitude quant à la définition géométrique
des emprises de publication du PCRS. Il est toutefois conseillé de publier le PCRS à au
moins deux niveaux complémentaires d''emprises, à savoir un niveau continu (ou régulier,
fixe) et associé à un découpage régulier du territoire (comme un carroyage) et un niveau
discontinu (ou irrégulier, variable) correspondant à des découpages à base d’entités
(tronçons, voire communes...).

Regroupement :
Les emprises d''échanges du PCRS peuvent suivre des logiques différentes :
- les emprises de type couloir, c''est à dire associées à un axe de voirie et définies d''une
part par les limites apparentes des propriétés privées étendues perpendiculairement à
l''axe de voirie d''environ 15 mètres (à adapter localement), et d''autre part en incluant les
surfaces tampon associées aux amorces de voies aux intersections et sur une longueur
d''environ 10 mètres (à adapter localement).
- par extension des emprises de type couloir, il est également possible d''inclure dans
cette définition géométrique toute surface de l''espace public ou privé bornée par des
limites apparentes de propriétés privées et n''incluant pas d''axe de voirie.
- les emprises de type opération, c''est à dire associées à une opération particulière
impactant le PCRS, par exemple la pose de rails de tramway. Ce type d''emprise ne
contient aucune information de gestion quant à l''opération concernée, mais permet par
exemple de regrouper des emprises élémentaires de type couloir disposant de
caractéristiques communes
- les emprises de type casé, liées à un carroyage particulier
- les emprises de type limite administrative, permettant d''accéder à l''intégralité d''un
PCRS sur une limite administrative donnée, et en particulier par commune
- les emprises de type raster, éventuellement liées à un carroyage particulier, et
permettant de référencer une image à haute ou très haute résolution.
Contraintes :
Classe essentielle du PCRS, accompagnant les métadonnées de publication du PCRS';

COMMENT ON COLUMN "EmpriseEchangePCRS"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';
COMMENT ON COLUMN "EmpriseEchangePCRS"."idEmprise" IS
'Identifiant unique dans le jeu de données des emprises du PCRS.
L unicité doit être assurée par le gestionnaire et viser une unicité nationale.
Elle peut être atteinte en préfixant l identifiant par le code SIREN du producteur.';
COMMENT ON COLUMN "EmpriseEchangePCRS"."complement" IS
'Information complémentaire liée au type d emprise de publication du PCRS,
gérée par le gestionnaire du PCRS et potentiellement utile à tout utilisateur du PCRS';
COMMENT ON COLUMN "EmpriseEchangePCRS"."datePublication" IS
'Date de mise à disposition de l emprise du PCRS';
COMMENT ON COLUMN "EmpriseEchangePCRS"."gestionnaire" IS
'Nom de la collectivité gestionnaire du PCRS';
COMMENT ON COLUMN "EmpriseEchangePCRS"."type" IS
'Type d emprise du PCRS';


-- ---------------------------------
-- Classe : Commune
-- ---------------------------------

--DROP INDEX if exists "Commune_geometrie_geomidx";
--DROP TABLE if exists "Commune";

-- Table: Commune
--DROP TABLE if exists "Commune";
CREATE TABLE "Commune"
(
  "codeINSEE" character varying UNIQUE NOT NULL,
  "geometrie" geometry(MultiPolygon,3946) NOT NULL,
  "nom" character varying,
  "reference" character varying NOT NULL,
  CONSTRAINT "Commune_pkey" PRIMARY KEY ("codeINSEE")
)
WITH (
  OIDS=FALSE
);

-- Index: Commune_geometrie_geomidx
--DROP INDEX if exists "Commune_geometrie_geomidx";
CREATE INDEX "Commune_geometrie_geomidx"
  ON "Commune"
  USING gist
  (geometrie);


COMMENT ON TABLE "Commune" IS
'Nom de la classe :
Commune

Titre :
Lien vers un objet commune

Définition :
Cette classe permet de référencer une commune présente dans un référentiel externe.

Modélisation :
Multi Polygone (GM_MultiPolygon)
Les communes sont modélisées par un ensemble de polygones. La géométrie est
indicative et la précision géométrique accordée importe peu.

Critères de sélection :
Seuls sont considérés les objets commune d''un jeu de données de référence, défini par
le gestionnaire du PCRS.';

COMMENT ON COLUMN "Commune"."codeINSEE" IS
'Code INSEE de la commune.';
COMMENT ON COLUMN "Commune"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';
COMMENT ON COLUMN "Commune"."nom" IS
'Nom de la commune.';
COMMENT ON COLUMN "Commune"."reference" IS
'Référence vers une base de données des communes.';


-- ---------------------------------
-- Classe : TronconVoirie
-- ---------------------------------

-- Sequence: TronconVoirie_reference_seq
--DROP INDEX if exists "TronconVoirie_geometrie_geomidx";
--DROP TABLE if exists "TronconVoirie";
DROP SEQUENCE if exists "TronconVoirie_reference_seq";

CREATE SEQUENCE "TronconVoirie_reference_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: TronconVoirie
--DROP TABLE if exists "TronconVoirie";
CREATE TABLE "TronconVoirie"
(
  "geometrie" geometry(LineString,3946) NOT NULL,
  "propriete" character varying(2) REFERENCES "ProprieteEspacePCRSType" (code),
  "reference" character varying UNIQUE NOT NULL DEFAULT nextval('"TronconVoirie_reference_seq"'::regclass),
  "source" character varying NOT NULL,
  CONSTRAINT "TronconVoirie_pkey" PRIMARY KEY ("reference")
)
WITH (
  OIDS=FALSE
);

-- Index: TronconVoirie_geometrie_geomidx
--DROP INDEX if exists "TronconVoirie_geometrie_geomidx";
CREATE INDEX "TronconVoirie_geometrie_geomidx"
  ON "TronconVoirie"
  USING gist
  (geometrie);

COMMENT ON TABLE "TronconVoirie" IS
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

COMMENT ON COLUMN "TronconVoirie"."geometrie" IS
'Géométrie de type courbe.';
COMMENT ON COLUMN "TronconVoirie"."propriete" IS
'Distinction d''appartenance d''un troncon de voirie à l''espace public ou à l''espace privé.';
COMMENT ON COLUMN "TronconVoirie"."reference" IS
'Identifiant unique du tronçon dans le référentiel source utilisé.';
COMMENT ON COLUMN "TronconVoirie"."source" IS
'Acronyme du référentiel utilisé.';


-- ---------------------------------
-- Classe : HabillagePCRS
-- ---------------------------------

-- Sequence: HabillagePCRS_idHabillage_seq
--DROP INDEX if exists "HabillagePCRS_geometrie_geomidx";
--DROP TABLE if exists "HabillagePCRS";
DROP SEQUENCE if exists "HabillagePCRS_idHabillage_seq";

CREATE SEQUENCE "HabillagePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: HabillagePCRS
--DROP TABLE if exists "HabillagePCRS";
CREATE TABLE "HabillagePCRS"
(
  --geometrie geometry(Geometry,3946) NOT NULL,
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "CategorieThematiquePCRSType" ("code"),
  CONSTRAINT "HabillagePCRS_pkey" PRIMARY KEY ("idHabillage")
)
WITH (
  OIDS=FALSE
);

-- Index: HabillagePCRS_geometrie_geomidx
--DROP INDEX if exists "HabillagePCRS_geometrie_geomidx";
--CREATE INDEX "HabillagePCRS_geometrie_geomidx"
--  ON "HabillagePCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE "HabillagePCRS" IS
'Nom de la classe :
HabillagePCRS

Titre :
Eléments d''habillage du PCRS

Définition :
Classe permettant de décrire tous les éléments d''habillage utiles à la compréhension du
PCRS

Modélisation :
Point, Polyligne, Surface
Élément d''habillage (de type point, ligne ou surface ou support de texte) sans précision
de géoréférencement associée

Regroupement :
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

COMMENT ON COLUMN "HabillagePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "HabillagePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';


-- ---------------------------------
-- Classe : HabillagePointsPCRS
-- ---------------------------------

-- Sequence: HabillagePointsPCRS_idHabillage_seq
--DROP INDEX if exists "HabillagePointsPCRS_geometrie_geomidx";
--DROP TABLE if exists "HabillagePointsPCRS";
--DROP SEQUENCE if exists "HabillagePointsPCRS_idHabillage_seq";

--CREATE SEQUENCE "HabillagePointsPCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: HabillagePointsPCRS
--DROP TABLE if exists "HabillagePointsPCRS";
CREATE TABLE "HabillagePointsPCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "CategorieThematiquePCRSType" ("code"),
  "geometrie" geometry(MultiPoint,3946) NOT NULL,
  CONSTRAINT "HabillagePointsPCRS_pkey" PRIMARY KEY ("idHabillage")
)
INHERITS ("HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillagePointsPCRS_geometrie_geomidx
--DROP INDEX if exists "HabillagePointsPCRS_geometrie_geomidx";
CREATE INDEX "HabillagePointsPCRS_geometrie_geomidx"
  ON "HabillagePointsPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "HabillagePointsPCRS" IS
'Nom de la classe :
HabillagePointsPCRS

Sous-classe de :
HabillagePCRS

Titre :
Points d''habillage du PCRS

Définition :
Classe spécialisée de la classe abstraite <HabillagePCRS> permettant de décrire tous
les éléments d''habillage de type points (éventuellement multiples) utiles à la
compréhension du PCRS

Modélisation :
Multipoints';

COMMENT ON COLUMN "HabillagePointsPCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "HabillagePointsPCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "HabillagePointsPCRS"."geometrie" IS
'Géométrie de type multipoint';


-- ---------------------------------
-- Classe : HabillageSymbolePCRS
-- ---------------------------------

-- Sequence: HabillageSymbolePCRS_idHabillage_seq
--DROP INDEX if exists "HabillageSymbolePCRS_geometrie_geomidx";
--DROP TABLE if exists "HabillageSymbolePCRS";
--DROP SEQUENCE if exists "HabillageSymbolePCRS_idHabillage_seq";

--CREATE SEQUENCE "HabillageSymbolePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: HabillageSymbolePCRS
--DROP TABLE if exists "HabillageSymbolePCRS";
CREATE TABLE "HabillageSymbolePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  "geometrie" geometry(Point,3946) NOT NULL,
  "largeur" decimal NOT NULL,
  "longueur" decimal NOT NULL,
  "reference" character varying NOT NULL,
  CONSTRAINT "HabillageSymbolePCRS_pkey" PRIMARY KEY ("idHabillage")
)
INHERITS ("HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: SymboleHabillagePCRS_geometrie_geomidx
--DROP INDEX if exists "SymboleHabillagePCRS_geometrie_geomidx";
CREATE INDEX "HabillageSymbolePCRS_geometrie_geomidx"
  ON "HabillageSymbolePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "HabillageSymbolePCRS" IS
'Nom de la classe :
HabillageSymbolePCRS

Sous-classe de :
HabillagePCRS

Titre :
Symbole d''habillage du PCRS

Définition :
Classe spécialisée de la classe abstraite HabillagePCRSpermettant de décrire tous les
éléments d''habillage de type symbole utiles à la compréhension du PCRS

Modélisation :
Point (propriété de la classe généralisée HabillagePCRS)
Point de référence au centre du symbole, dont on précisera la référence, les dimensions
inscrites dans un rectangle (longueur, largeur), et l''orientation spécifique.

Contraintes :
Contraintes de positionnement en dehors de la voirie, en particulier en zone dense ou
très dense';

COMMENT ON COLUMN "HabillageSymbolePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "HabillageSymbolePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "HabillageSymbolePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN "HabillageSymbolePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "HabillageSymbolePCRS"."largeur" IS
'Utilisé uniquement pour la mise à l''échelle Y du symbole en habillage';
COMMENT ON COLUMN "HabillageSymbolePCRS"."longueur" IS
'Utilisé uniquement pour la mise à l''échelle X du symbole en habillage';
COMMENT ON COLUMN "HabillageSymbolePCRS"."reference" IS
'Désignation du symbole à utiliser pour la représentation de l''habillage sous forme de symbole.';


-- ---------------------------------
-- Classe : HabillageTextePCRS
-- ---------------------------------

-- Sequence: HabillageTextePCRS_idHabillage_seq
--DROP INDEX if exists "HabillageTextePCRS_geometrie_geomidx";
--DROP TABLE if exists "HabillageTextePCRS";
--DROP SEQUENCE if exists "HabillageTextePCRS_idHabillage_seq";

--CREATE SEQUENCE "HabillageTextePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: HabillageTextePCRS
--DROP TABLE if exists "HabillageTextePCRS";
CREATE TABLE "HabillageTextePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  "geometrie" geometry(Point,3946) NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES "TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  CONSTRAINT "HabillageTextePCRS_pkey" PRIMARY KEY ("idHabillage")
)
INHERITS ("HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillageTextePCRS_geometrie_geomidx
--DROP INDEX if exists "HabillageTextePCRS_geometrie_geomidx";
CREATE INDEX "HabillageTextePCRS_geometrie_geomidx"
  ON "HabillageTextePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "HabillageTextePCRS" IS
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

Regroupement :
- les toponymes,
- les coordonnées planimétriques,
- les altimétries,
...

Contraintes :
Contraintes de positionnement en dehors de la voirie, en particulier en zone dense ou
très dense';

COMMENT ON COLUMN "HabillageTextePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "HabillageTextePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "HabillageTextePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN "HabillageTextePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "HabillageTextePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN "HabillageTextePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS';
COMMENT ON COLUMN "HabillageTextePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';


-- ---------------------------------
-- Classe : NomVoiriePCRS
-- ---------------------------------

-- Sequence: NomVoiriePCRS_idNomVoirie_seq
--DROP INDEX if exists "NomVoiriePCRS_geometrie_geomidx";
--DROP TABLE if exists "NomVoiriePCRS";
DROP SEQUENCE if exists "NomVoiriePCRS_idNomVoirie_seq";

CREATE SEQUENCE "NomVoiriePCRS_idNomVoirie_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: NomVoiriePCRS
--DROP TABLE if exists "NomVoiriePCRS";
CREATE TABLE "NomVoiriePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  "geometrie" geometry(Point,3946) NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES "TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  "idNomVoirie" character varying UNIQUE NOT NULL DEFAULT nextval('"NomVoiriePCRS_idNomVoirie_seq"'::regclass),
  "positionnement" character varying(2) REFERENCES "CategoriePlacementPCRSType" (code),
  CONSTRAINT "NomVoiriePCRS_pkey" PRIMARY KEY ("idHabillage")--,
  --CONSTRAINT "NomVoiriePCRS_pkey" PRIMARY KEY ("idNomVoirie")
)
INHERITS ("HabillageTextePCRS")
WITH (
  OIDS=FALSE
);

-- Index: NomVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists "NomVoiriePCRS_geometrie_geomidx";
CREATE INDEX "NomVoiriePCRS_geometrie_geomidx"
  ON "NomVoiriePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "NomVoiriePCRS" IS
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
numéros de voirie du PCRS, .

Modélisation :
Point (propriété de la classe généralisée HabillageTextePCRS)
Libellé de type texte positionnant de façon ponctuelle le nom de voirie avec une
orientation liée au tronçon de voirie le plus proche de la voie associée à l''adresse.

Contraintes :
Contraintes de positionnement en dehors de l''espace public de la voirie, en particulier en
zone dense ou très dense, à préciser localement';

COMMENT ON COLUMN "NomVoiriePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "NomVoiriePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "NomVoiriePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN "NomVoiriePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "NomVoiriePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN "NomVoiriePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS';
COMMENT ON COLUMN "NomVoiriePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';
COMMENT ON COLUMN "NomVoiriePCRS"."idNomVoirie" IS
'Identifiant unique dans le jeu de données des noms de voirie.
Selon la collectivité gestionnaire du PCRS,
et si possible identique à celui du référentiel dont est issu la donnée.';
COMMENT ON COLUMN "NomVoiriePCRS"."positionnement" IS
'Indication quant au positionnement de l''élément d''habillage par rapport à la voirie.';


-- ---------------------------------
-- Classe : NumeroVoiriePCRS
-- ---------------------------------

-- Sequence: NumeroVoiriePCRS_idNumeroVoirie_seq
--DROP INDEX if exists "NumeroVoiriePCRS_geometrie_geomidx";
--DROP TABLE if exists "NumeroVoiriePCRS";
DROP SEQUENCE if exists "NumeroVoiriePCRS_idNumeroVoirie_seq";

CREATE SEQUENCE "NumeroVoiriePCRS_idNumeroVoirie_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: NumeroVoiriePCRS
--DROP TABLE if exists "NumeroVoiriePCRS";
CREATE TABLE "NumeroVoiriePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  "geometrie" geometry(Point,3946) NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES "TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  "idNumeroVoirie" character varying UNIQUE NOT NULL DEFAULT nextval('"NumeroVoiriePCRS_idNumeroVoirie_seq"'::regclass),
  "positionnement" character varying(2) REFERENCES "CategoriePlacementPCRSType" (code),
  CONSTRAINT "NumeroVoiriePCRS_pkey" PRIMARY KEY ("idHabillage")--,
  --CONSTRAINT "NumeroVoiriePCRS_pkey" PRIMARY KEY ("idHabillage")
)
INHERITS ("HabillageTextePCRS")
WITH (
  OIDS=FALSE
);

-- Index: NumeroVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists "NumeroVoiriePCRS_geometrie_geomidx";
CREATE INDEX "NumeroVoiriePCRS_geometrie_geomidx"
  ON "NumeroVoiriePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE "NumeroVoiriePCRS" IS
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

COMMENT ON COLUMN "NumeroVoiriePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "NumeroVoiriePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "NumeroVoiriePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN "NumeroVoiriePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "NumeroVoiriePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN "NumeroVoiriePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS';
COMMENT ON COLUMN "NumeroVoiriePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';
COMMENT ON COLUMN "NumeroVoiriePCRS"."idNumeroVoirie" IS
'Identifiant unique dans le jeu de données des numéros de voirie.
Selon la collectivité gestionnaire du PCRS,
et si possible identique à celui du référentiel dont est issu la donnée.';
COMMENT ON COLUMN "NumeroVoiriePCRS"."positionnement" IS
'Indication quant au positionnement de l''élément d''habillage par rapport à la voirie.';


-- ---------------------------------
-- Classe : HabillageLignesPCRS
-- ---------------------------------

-- Sequence: HabillageLignesPCRS_idHabillage_seq
--DROP INDEX if exists "HabillageLignesPCRS_geometrie_geomidx";
--DROP TABLE if exists "HabillageLignesPCRS";
--DROP SEQUENCE if exists "HabillageLignesPCRS_idHabillage_seq";

--CREATE SEQUENCE "HabillageLignesPCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: HabillageLignesPCRS
--DROP TABLE if exists "HabillageLignesPCRS";
CREATE TABLE "HabillageLignesPCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "CategorieThematiquePCRSType" ("code"),
  "geometrie" geometry(MultiLinestring,3946) NOT NULL,
  CONSTRAINT "HabillageLignesPCRS_pkey" PRIMARY KEY ("idHabillage")
)
INHERITS ("HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillageLignesPCRS_geometrie_geomidx
--DROP INDEX if exists "HabillageLignesPCRS_geometrie_geomidx";
CREATE INDEX "HabillageLignesPCRS_geometrie_geomidx"
  ON "HabillageLignesPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "HabillageLignesPCRS" IS
'Nom de la classe :
HabillageLignesPCRS

Sous-classe de :
HabillagePCRS

Titre :
Synonymes

Définition :
Classe spécialisée de la classe abstraite <HabillagePCRS> permettant de décrire tous
les éléments d''habillage de type lignes utiles à la compréhension du PCRS

Modélisation :
Multilignes

Regroupement :
- les orographies,
- les dessins d''affleurants,
...';

COMMENT ON COLUMN "HabillageLignesPCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "HabillageLignesPCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "HabillageLignesPCRS"."geometrie" IS
'Géométrie de type multiligne';

-- ---------------------------------
-- Classe : MasqueOpacitePCRS
-- ---------------------------------

-- Sequence: MasqueOpacitePCRS_idHabillage_seq
--DROP INDEX if exists "MasqueOpacitePCRS_geometrie_geomidx";
--DROP TABLE if exists "MasqueOpacitePCRS";
--DROP SEQUENCE if exists "MasqueOpacitePCRS_idHabillage_seq";

CREATE SEQUENCE "MasqueOpacitePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: MasqueOpacitePCRS
--DROP TABLE if exists "MasqueOpacitePCRS";
CREATE TABLE "MasqueOpacitePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES "CategorieThematiquePCRSType" ("code"),
  "geometrie" geometry(Polygon,3946) NOT NULL,
  "transparence" integer NOT NULL CHECK ("transparence" >= 0 AND "transparence" <= 100),
  CONSTRAINT "MasqueOpacitePCRS_pkey" PRIMARY KEY ("idHabillage")
)
INHERITS ("HabillagePCRS")
WITH (
  OIDS=FALSE
);


-- Index: MasqueOpacitePCRS_geometrie_geomidx
--DROP INDEX if exists "MasqueOpacitePCRS_geometrie_geomidx";
CREATE INDEX "MasqueOpacitePCRS_geometrie_geomidx"
  ON "MasqueOpacitePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "MasqueOpacitePCRS" IS
'Nom de la classe :
MasqueOpacitePCRS

Sous-classe de :
HabillagePCRS

Titre :
Masque d''opacité du PCRS

Définition :
Lorsqu''un PCRS Image est disponible, un masque d''opacité correspond à la définition
d''une zone surfacique pouvant s''étendre partiellement sur une ou plusieurs
orthophotographies et pour laquelle localement le PCRS Vecteur doit être utilisé en
priorité au PCRS Image. Afin de pouvoir visualiser le vecteur en superposition à l''image
sur cette zone, un masque blanc, partiellement transparent est superposé à l''image.

Modélisation :
Surface

Contraintes :
Classe essentielle du PCRS Image';

COMMENT ON COLUMN "MasqueOpacitePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN "MasqueOpacitePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN "MasqueOpacitePCRS"."geometrie" IS
'Géométrie de type surfacique représentant la zone masquée';
COMMENT ON COLUMN "MasqueOpacitePCRS"."transparence" IS
'Pourcentage de transparence inversement proportionnelle à l''opacité de la zone';


-- ---------------------------------
-- Classe : PointLevePCRS
-- ---------------------------------


-- Sequence: PointLevePCRS_numeroPoint_seq
--DROP INDEX if exists "PointLevePCRS_geometrie_geomidx";
--DROP TABLE if exists "PointLevePCRS";
DROP SEQUENCE if exists "PointLevePCRS_numeroPoint_seq";

CREATE SEQUENCE "PointLevePCRS_numeroPoint_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: PointLevePCRS
--DROP TABLE if exists "PointLevePCRS";
CREATE TABLE "PointLevePCRS"
(
  "geometrie" geometry(Point,3946) NOT NULL,
  "horodatage" date,
  "numeroPoint"  character varying UNIQUE NOT NULL DEFAULT nextval('"PointLevePCRS_numeroPoint_seq"'::regclass),
  "precisionXY" integer NOT NULL,
  "precisionZ" integer,
  "producteur" character varying
)
WITH (
  OIDS=FALSE
);

-- Index: PointLevePCRS_geometrie_geomidx
--DROP INDEX if exists "PointLevePCRS_geometrie_geomidx";
CREATE INDEX "PointLevePCRS_geometrie_geomidx"
  ON "PointLevePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "PointLevePCRS" IS
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

Regroupement :
De façon non limitative, tout point situé le long ou sur le pourtour d''un objet du PCRS
peut être décrit par cette classe d''objet, par exemple :
- Point le long d''un fil d''eau
- Point d''une limite apparente
- Point d''amorce de bâti
- Point de seuil
- Point de rupture de pente
- Point le long d''un rail
- Point associé à un dénivelé d''escalier ou de marche d''escalier
- Par extension, tout point issu d''un lever Mobile Mapping (nuages de points LIDAR, vues
immersives...).

Contraintes :
Un point levé doit être topologiquement inclus dans l''emprise du levé topographique.
Les points peu précis n''ont pas à figurer dans les données échangées du PCRS.

Critères de sélection :
Tout point servant à qualifier un objet du PCRS en tant que support pour une cotation des
réseaux en classe A (planimétrie et altimétrie) ou en classe AP (planimétrie seulement)
au sens DT-DICT.';

COMMENT ON COLUMN "PointLevePCRS"."geometrie" IS
'Géométrie de type ponctuel';
COMMENT ON COLUMN "PointLevePCRS"."horodatage" IS
'Horodatage du point au moment du levé topographique';
COMMENT ON COLUMN "PointLevePCRS"."numeroPoint" IS
'Numéro attribué au point levé lors du levé topographique selon une ou plusieurs
méthodologies à préciser si possible dans les métadonnées.
Un ou plusiseurs caractères alpha non accentués préfixant un nombre
à valeurs dans une série numérique croissante avec possibilités de
sauts / valeurs manquantes dans la suite.';
COMMENT ON COLUMN "PointLevePCRS"."precisionXY" IS
'Précision planimétrique exprimée en mm';
COMMENT ON COLUMN "PointLevePCRS"."precisionZ" IS
'Précision altimétrique exprimée en mm';
COMMENT ON COLUMN "PointLevePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';


-- ---------------------------------
-- Classe : ObjetVecteurPCRS
-- ---------------------------------

-- Sequence: ObjetVecteurPCRS_idObjet_seq
--DROP INDEX if exists "ObjetVecteurPCRS_geometrie_geomidx";
--DROP TABLE if exists "ObjetVecteurPCRS";
DROP SEQUENCE if exists "ObjetVecteurPCRS_idObjet_seq";

CREATE SEQUENCE "ObjetVecteurPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: ObjetVecteurPCRS
--DROP TABLE if exists "ObjetVecteurPCRS";
CREATE TABLE "ObjetVecteurPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  CONSTRAINT "ObjetVecteurPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: ObjetVecteurPCRS_geometrie_geomidx
--DROP INDEX if exists "ObjetVecteurPCRS_geometrie_geomidx";
--CREATE INDEX "ObjetVecteurPCRS_geometrie_geomidx"
--  ON "ObjetVecteurPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE "ObjetVecteurPCRS" IS
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

Regroupement :
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

COMMENT ON COLUMN "ObjetVecteurPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "ObjetVecteurPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "ObjetVecteurPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "ObjetVecteurPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "ObjetVecteurPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "ObjetVecteurPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';


-- ---------------------------------
-- Classe : PointCanevasPCRS
-- ---------------------------------

-- Sequence: PointCanevasPCRS_idObjet_seq
--DROP INDEX if exists "PointCanevasPCRS_geometrie_geomidx";
--DROP TABLE if exists "PointCanevasPCRS";
--DROP SEQUENCE if exists "PointCanevasPCRS_idObjet_seq";

--CREATE SEQUENCE "PointCanevasPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: PointCanevasPCRS
--DROP TABLE if exists "PointCanevasPCRS";
CREATE TABLE "PointCanevasPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "canevas" character varying,
  "dateCreation" date,
  "fiche" character varying,
  "geometrie" geometry(Point,3946) NOT NULL,
  "immatriculation" character varying,
  "precisionXY" integer,
  "precisionZ" integer,
  CONSTRAINT "PointCanevasPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);

-- Index: PointCanevasPCRS_geometrie_geomidx
--DROP INDEX if exists "PointCanevasPCRS_geometrie_geomidx";
CREATE INDEX "PointCanevasPCRS_geometrie_geomidx"
  ON "PointCanevasPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "PointCanevasPCRS" IS
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

Regroupement :
Tout point précédemment déterminé et matérialisé sur le terrain et répondant à la
précision attendue.
Spit

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

COMMENT ON COLUMN "PointCanevasPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "PointCanevasPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "PointCanevasPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "PointCanevasPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "PointCanevasPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "PointCanevasPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "PointCanevasPCRS"."canevas" IS
'Type de canevas auquel appartient le point considéré';
COMMENT ON COLUMN "PointCanevasPCRS"."dateCreation" IS
'Date de création ou de mise à jour des données du point de canevas';
COMMENT ON COLUMN "PointCanevasPCRS"."fiche" IS
'Addresse de type URL susceptible de fournir des informations supplémentaires,
comme des photographies de repérage, sur le point de canevas';
COMMENT ON COLUMN "PointCanevasPCRS"."geometrie" IS
'Géométrie du point';
COMMENT ON COLUMN "PointCanevasPCRS"."immatriculation" IS
'Référence externe selon la convention d''immatriculation du canevas considéré';
COMMENT ON COLUMN "PointCanevasPCRS"."precisionXY" IS
'Précision planimétrique exprimée en mm';
COMMENT ON COLUMN "PointCanevasPCRS"."precisionZ" IS
'Précision altimétrique exprimée en mm';


-- ---------------------------------
-- Classe : ObjetGeneriquePCRS
-- ---------------------------------

-- Sequence: ObjetGeneriquePCRS_idObjet_seq
--DROP INDEX if exists "ObjetGeneriquePCRS_geometrie_geomidx";
--DROP TABLE if exists "ObjetGeneriquePCRS";
--DROP SEQUENCE if exists "ObjetGeneriquePCRS_idObjet_seq";

--CREATE SEQUENCE "ObjetGeneriquePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: ObjetGeneriquePCRS
--DROP TABLE if exists "ObjetGeneriquePCRS";
CREATE TABLE "ObjetGeneriquePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(Geometry,3946) NOT NULL,
  "identification" character varying REFERENCES "ClasseFilleObjetVecteurPCRSType" ("valeur"),
  CONSTRAINT "ObjetGeneriquePCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ObjetGeneriquePCRS_geometrie_geomidx
--DROP INDEX if exists "ObjetGeneriquePCRS_geometrie_geomidx";
CREATE INDEX "ObjetGeneriquePCRS_geometrie_geomidx"
  ON "ObjetGeneriquePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "ObjetGeneriquePCRS" IS
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

COMMENT ON COLUMN "ObjetGeneriquePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "ObjetGeneriquePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "ObjetGeneriquePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "ObjetGeneriquePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "ObjetGeneriquePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "ObjetGeneriquePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "ObjetGeneriquePCRS"."geometrie" IS
'Géométrie de l''objet générique';
COMMENT ON COLUMN "ObjetGeneriquePCRS"."identification" IS
'L''identification décrit le nom de la classe spécialisée selon
la nomenclature des objets du PCRS.
Inconnue à l''initialisation du PCRS par la collectivité gestionnaire, elle peut-être
précisée lors de tout échange inverse entre utilisateur et collectivité gestionnaire';


-- ---------------------------------
-- Classe : BordurePCRS
-- ---------------------------------

-- Sequence: BordurePCRS_idObjet_seq
--DROP INDEX if exists "BordurePCRS_geometrie_geomidx";
--DROP TABLE if exists "BordurePCRS";
--DROP SEQUENCE if exists "BordurePCRS_idObjet_seq";

--CREATE SEQUENCE "BordurePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: BordurePCRS
--DROP TABLE if exists "BordurePCRS";
CREATE TABLE "BordurePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(LineString,3946) NOT NULL,
  "nature" character varying REFERENCES "CategorieBordurePCRSType" ("code"),
  CONSTRAINT "BordurePCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: BordurePCRS_geometrie_geomidx
--DROP INDEX if exists "BordurePCRS_geometrie_geomidx";
CREATE INDEX "BordurePCRS_geometrie_geomidx"
  ON "BordurePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "BordurePCRS" IS
'Nom de la classe :
BordurePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Bordure, Quais

Définition :
Dispositif de voirie en général en béton préfabriqué ou coulé sur place destiné à guider
les eaux de pluie, et pouvant également servir à segmenter la voirie pour permettre une
circulation séparée entre automobilistes et piétons.
On les rencontre essentiellement en secteur urbain ou de banlieue, et plus rarement en
secteur rural (montagne notamment)

Modélisation :
Polyligne
Les quais, bordures, bordurettes... sont levés point à point, le long du fil d''eau
uniquement, et jamais sur le nez de bordure ou du quai.
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS.

Regroupement :
Thématique Voirie :
* Bordures :
* Bordurettes :
* Quais

Contraintes :
Classe essentielle du PCRS

Critères de sélection :
';

COMMENT ON COLUMN "BordurePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "BordurePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "BordurePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "BordurePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "BordurePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "BordurePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "BordurePCRS"."geometrie" IS
'Géométrie de la bordure';
COMMENT ON COLUMN "BordurePCRS"."nature" IS
'Nature de la bordure';


-- ---------------------------------
-- Classe : ChangementRevetementPCRS
-- ---------------------------------

-- Sequence: ChangementRevetementPCRS_idObjet_seq
--DROP INDEX if exists "ChangementRevetementPCRS_geometrie_geomidx";
--DROP TABLE if exists "ChangementRevetementPCRS";
--DROP SEQUENCE if exists "ChangementRevetementPCRS_idObjet_seq";

--CREATE SEQUENCE "ChangementRevetementPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: ChangementRevetementPCRS
--DROP TABLE if exists "ChangementRevetementPCRS";
CREATE TABLE "ChangementRevetementPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(LineString,3946) NOT NULL,
  CONSTRAINT "ChangementRevetementPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ChangementRevetementPCRS_geometrie_geomidx
--DROP INDEX if exists "ChangementRevetementPCRS_geometrie_geomidx";
CREATE INDEX "ChangementRevetementPCRS_geometrie_geomidx"
  ON "ChangementRevetementPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "ChangementRevetementPCRS" IS
'Nom de la classe :
ChangementRevetementPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Changement de revêtement

Définition :
Les chaussées, trottoirs et accotements peuvent ne pas être uniformément constituées
d''un même matériau : toute limite apparente entre deux matériaux, et répondant aux
critères de sélection ci-dessous est alors considérée comme un changement de
revêtement et décrit à l''aide de cette classe d''objet

Modélisation :
Polyligne
Les changements de revêtement sont levés point à point au niveau du sol.
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS.

Regroupement :
Limites de chaussée revêtue, ne pouvant être décrites par un autre objet du PCRS
(exemple un bord goudronné)
Changement de revêtements de chaussées, accotements et trottoirs, bordures non
comprises

Critères de sélection :
Seules sont considérées comme limites apparentes de changement de revêtement celles
de la thématique voirie et qui ne sont pas déjà traitées par un autre objet du PCRS
(comme les bordures ou bordurettes par exemples)
La limite apparente doit être visible et non recouverte par la végétation (cas des bords
goudronnés par exemple).
La limite apparente de tout objet visible sur une chaussée ou un trottoir de la voirie, et
répondant à des enjeux « métier » particuliers n''est pas considérée comme un
changement de revêtement (exemples ne constituant pas des changements de
revêtement : un marquage au sol, les limites apparentes de tout type de bouche, plaque,
tampon associé à un réseau, de tout type d''avaloir, de cunette ou de caniveau, de fossé,
de grille d''égout, de puisard...).
La visibilité d''un contraste entre matériaux de même type ne constitue pas à proprement
parler un changement de revêtement. De même, des différences de couleur, voire de
légères différence de textures, par exemple pouvant résulter de parti-pris esthétiques ou
architecturaux ne constituent pas des changements de revêtements. Les situations
d''assemblages, et notamment les joints apparents, de motifs à base de pavés, carreaux,
etc... ne constituent pas non plus des changements de revêtements. En revanche la
limite apparente entre tout autre revêtement et la zone où est utilisé ce type de matériaux
constitue bien quant à elle un changement de revêtement.';

COMMENT ON COLUMN "ChangementRevetementPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "ChangementRevetementPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "ChangementRevetementPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "ChangementRevetementPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "ChangementRevetementPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "ChangementRevetementPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "ChangementRevetementPCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : MarcheEscalierPCRS
-- ---------------------------------

-- Sequence: MarcheEscalierPCRS_idObjet_seq
--DROP INDEX if exists "MarcheEscalierPCRS_geometrie_geomidx";
--DROP TABLE if exists "MarcheEscalierPCRS";
--DROP SEQUENCE if exists "MarcheEscalierPCRS_idObjet_seq";

--CREATE SEQUENCE "MarcheEscalierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: MarcheEscalierPCRS
--DROP TABLE if exists "MarcheEscalierPCRS";
CREATE TABLE "MarcheEscalierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(LineString,3946) NOT NULL,
  "symbole" character varying REFERENCES "HabillageSymbolePCRS" ("idHabillage"),
  CONSTRAINT "MarcheEscalierPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: MarcheEscalierPCRS_geometrie_geomidx
--DROP INDEX if exists "MarcheEscalierPCRS_geometrie_geomidx";
CREATE INDEX "MarcheEscalierPCRS_geometrie_geomidx"
  ON "MarcheEscalierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "MarcheEscalierPCRS" IS
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

Regroupement :
Les escaliers du PCRS peuvent se retrouver dans deux thématiques, le bâti et la voirie
Dans tous les cas, il s''agit d''escaliers extérieurs, et ayant au moins une limite apparente
sur le domaine public.

Contraintes :
Une marche milieu (ou les deux marches milieu lorsque les marches sont en nombre
pair) d''une portion d''escalier située entre deux paliers peut être porteuse d''un symbole
indiquant le sens de la montée. Le point porteur du symbole est alors déterminé au
centre du centroïde de la marche milieu (ou des deux marches milieu lorsque les
marches sont en nombre pair)

Critères de sélection :
L''escalier du PCRS doit obligatoirement être situé à l''extérieur, et proposer au moins une
limite apparente avec le domaine public.';

COMMENT ON COLUMN "MarcheEscalierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "MarcheEscalierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "MarcheEscalierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "MarcheEscalierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "MarcheEscalierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "MarcheEscalierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "MarcheEscalierPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN "MarcheEscalierPCRS"."symbole" IS
'';


-- ---------------------------------
-- Classe : FacadePCRS
-- ---------------------------------

-- Sequence: FacadePCRS_idObjet_seq
--DROP INDEX if exists "FacadePCRS_geometrie_geomidx";
--DROP TABLE if exists "FacadePCRS";
--DROP SEQUENCE if exists "FacadePCRS_idObjet_seq";

--CREATE SEQUENCE "FacadePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: FacadePCRS
--DROP TABLE if exists "FacadePCRS";
CREATE TABLE "FacadePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(LineString,3946) NOT NULL,
  CONSTRAINT "FacadePCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: FacadePCRS_geometrie_geomidx
--DROP INDEX if exists "FacadePCRS_geometrie_geomidx";
CREATE INDEX "FacadePCRS_geometrie_geomidx"
  ON "FacadePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "FacadePCRS" IS
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

Regroupement :


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

COMMENT ON COLUMN "FacadePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "FacadePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "FacadePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "FacadePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "FacadePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "FacadePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "FacadePCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : ProeminenceBatiPCRS
-- ---------------------------------

-- Sequence: ProeminenceBatiPCRS_idObjet_seq
--DROP INDEX if exists "ProeminenceBatiPCRS_geometrie_geomidx";
--DROP TABLE if exists "ProeminenceBatiPCRS";
--DROP SEQUENCE if exists "ProeminenceBatiPCRS_idObjet_seq";

--CREATE SEQUENCE "ProeminenceBatiPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: ProeminenceBatiPCRS
--DROP TABLE if exists "ProeminenceBatiPCRS";
CREATE TABLE "ProeminenceBatiPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(LineString,3946) NOT NULL,
  CONSTRAINT "ProeminenceBatiPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ProeminenceBatiPCRS_geometrie_geomidx
--DROP INDEX if exists "ProeminenceBatiPCRS_geometrie_geomidx";
CREATE INDEX "ProeminenceBatiPCRS_geometrie_geomidx"
  ON "ProeminenceBatiPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "ProeminenceBatiPCRS" IS
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

Regroupement :
Perron, marche de maison
Terrasse - Devanture
Véranda

Critères de sélection :
Ne comprend pas les caves';

COMMENT ON COLUMN "ProeminenceBatiPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "ProeminenceBatiPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "ProeminenceBatiPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "ProeminenceBatiPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "ProeminenceBatiPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "ProeminenceBatiPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "ProeminenceBatiPCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : SeuilPCRS
-- ---------------------------------

-- Sequence: SeuilPCRS_idObjet_seq
--DROP INDEX if exists "SeuilPCRS_geometrie_geomidx";
--DROP TABLE if exists "SeuilPCRS";
--DROP SEQUENCE if exists "SeuilPCRS_idObjet_seq";

--CREATE SEQUENCE "SeuilPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: SeuilPCRS
--DROP TABLE if exists "SeuilPCRS";
CREATE TABLE "SeuilPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(LineString,3946) NOT NULL,
  "symbole" character varying REFERENCES "HabillageSymbolePCRS" ("idHabillage"),
  CONSTRAINT "SeuilPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: SeuilPCRS_geometrie_geomidx
--DROP INDEX if exists "SeuilPCRS_geometrie_geomidx";
CREATE INDEX "SeuilPCRS_geometrie_geomidx"
  ON "SeuilPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "SeuilPCRS" IS
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

Regroupement :
Seuil piéton (ou seuil de maison)
Seuil véhicule (ou seuil de garage)

Critères de sélection :
À l''exclusion de tout seuil de cave';

COMMENT ON COLUMN "SeuilPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "SeuilPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "SeuilPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "SeuilPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "SeuilPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "SeuilPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "SeuilPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN "SeuilPCRS"."symbole" IS
'';


-- ---------------------------------
-- Classe : MurPCRS
-- ---------------------------------

-- Sequence: MurPCRS_idObjet_seq
--DROP INDEX if exists "MurPCRS_geometrie_geomidx";
--DROP TABLE if exists "MurPCRS";
--DROP SEQUENCE if exists "MurPCRS_idObjet_seq";

--CREATE SEQUENCE "MurPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: MurPCRS
--DROP TABLE if exists "MurPCRS";
CREATE TABLE "MurPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(LineString,3946) NOT NULL,
  "typeMur" character varying REFERENCES "CategorieMurPCRSType" ("code"),
  CONSTRAINT "MurPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: MurPCRS_geometrie_geomidx
--DROP INDEX if exists "MurPCRS_geometrie_geomidx";
CREATE INDEX "MurPCRS_geometrie_geomidx"
  ON "MurPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "MurPCRS" IS
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

Regroupement :
Mur (AIVF_20_5)
Mur de soutènement (AIVF_20_4)
Mur bahut (AIVF_20_6)
Parapet (AIVF_2_5)
Clôture sur socle

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

COMMENT ON COLUMN "MurPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "MurPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "MurPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "MurPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "MurPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "MurPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "MurPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN "MurPCRS"."typeMur" IS
'';


-- ---------------------------------
-- Classe : PilierPCRS
-- ---------------------------------

-- Sequence: PilierPCRS_idObjet_seq
--DROP INDEX if exists "PilierPCRS_geometrie_geomidx";
--DROP TABLE if exists "PilierPCRS";
--DROP SEQUENCE if exists "PilierPCRS_idObjet_seq";

--CREATE SEQUENCE "PilierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: PilierPCRS
--DROP TABLE if exists "PilierPCRS";
CREATE TABLE "PilierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  CONSTRAINT "PilierPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierPCRS_geometrie_geomidx
--DROP INDEX if exists "PilierPCRS_geometrie_geomidx";
--CREATE INDEX "PilierPCRS_geometrie_geomidx"
--  ON "PilierPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE "PilierPCRS" IS
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

Regroupement :
Tout type de pilier quelque soit la forme et la taille de sa section ou la matière le
constituant

Critères de sélection :
Lorsque le pilier est associé à un socle ou à un mur, ses dimensions au sol doivent le rendre
différenciable (aux limites de précision planimétrique) du socle ou du mur attenant';

COMMENT ON COLUMN "PilierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "PilierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "PilierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "PilierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "PilierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "PilierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';


-- ---------------------------------
-- Classe : PilierRegulierPCRS
-- ---------------------------------

-- Sequence: PilierRegulierPCRS_idObjet_seq
--DROP INDEX if exists "PilierRegulierPCRS_geometrie_geomidx";
--DROP TABLE if exists "PilierRegulierPCRS";
--DROP SEQUENCE if exists "PilierRegulierPCRS_idObjet_seq";

--CREATE SEQUENCE "PilierRegulierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: PilierRegulierPCRS
--DROP TABLE if exists "PilierRegulierPCRS";
CREATE TABLE "PilierRegulierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  "geometrie" geometry(Point,3946) NOT NULL,
  "largeur" decimal NOT NULL,
  "longueur" decimal NOT NULL,
  "section" character varying(2) NOT NULL REFERENCES "SectionPilierPCRSType" (code),
  CONSTRAINT "PilierRegulierPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("PilierPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierRegulierPCRS_geometrie_geomidx
--DROP INDEX if exists "PilierRegulierPCRS_geometrie_geomidx";
CREATE INDEX "PilierRegulierPCRS_geometrie_geomidx"
  ON "PilierRegulierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "PilierRegulierPCRS" IS
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

Regroupement :
Pilier circulaire
Pilier carré
Pilier rectangulaire
Tout type de pilier de forme régulière à section circulaire, carrée ou rectangulaire et
quelque soit la taille de sa section ou la matière le constituant

Critères de sélection :
Lorsque le pilier est associé à un socle ou à un mur, ses dimensions au sol doivent le
rendre différenciable (aux limites de précision planimétrique) du socle ou du mur attenant';

COMMENT ON COLUMN "PilierRegulierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "PilierRegulierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "PilierRegulierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "PilierRegulierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "PilierRegulierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "PilierRegulierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "PilierRegulierPCRS"."angleRotation" IS
'Utlisé uniquement pour l''orientation du symbole de poteau après rotation.
Peut être étendu pour un poteau ovale pour orienter le symbole';
COMMENT ON COLUMN "PilierRegulierPCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "PilierRegulierPCRS"."largeur" IS
'Utlisé uniquement pour la mise à l''échelle Y du symbole de poteau après rotation';
COMMENT ON COLUMN "PilierRegulierPCRS"."longueur" IS
'Utlisé uniquement pour la mise à l''échelle X du symbole de poteau après rotation';
COMMENT ON COLUMN "PilierRegulierPCRS"."section" IS
'Forme de la section à la base du pilier';


-- ---------------------------------
-- Classe : PilierParticulierPCRS
-- ---------------------------------

-- Sequence: PilierParticulierPCRS_idObjet_seq
--DROP INDEX if exists "PilierParticulierPCRS_geometrie_geomidx";
--DROP TABLE if exists "PilierParticulierPCRS";
--DROP SEQUENCE if exists "PilierParticulierPCRS_idObjet_seq";

--CREATE SEQUENCE "PilierParticulierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: PilierParticulierPCRS
--DROP TABLE if exists "PilierParticulierPCRS";
CREATE TABLE "PilierParticulierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(Polygon,3946) NOT NULL,
  CONSTRAINT "PilierParticulierPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("PilierPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierParticulierPCRS_geometrie_geomidx
--DROP INDEX if exists "PilierParticulierPCRS_geometrie_geomidx";
CREATE INDEX "PilierParticulierPCRS_geometrie_geomidx"
  ON "PilierParticulierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "PilierParticulierPCRS" IS
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

Regroupement :
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

COMMENT ON COLUMN "PilierParticulierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "PilierParticulierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "PilierParticulierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "PilierParticulierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "PilierParticulierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "PilierParticulierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "PilierParticulierPCRS"."geometrie" IS
'Géométrie de type polygone';


-- ---------------------------------
-- Classe : RailPCRS
-- ---------------------------------

-- Sequence: RailPCRS_idObjet_seq
--DROP INDEX if exists "RailPCRS_geometrie_geomidx";
--DROP TABLE if exists "RailPCRS";
--DROP SEQUENCE if exists "RailPCRS_idObjet_seq";

--CREATE SEQUENCE "RailPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: RailPCRS
--DROP TABLE if exists "RailPCRS";
CREATE TABLE "RailPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(LineString,3946) NOT NULL,
  CONSTRAINT "RailPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: RailPCRS_geometrie_geomidx
--DROP INDEX if exists "RailPCRS_geometrie_geomidx";
CREATE INDEX "RailPCRS_geometrie_geomidx"
  ON "RailPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "RailPCRS" IS
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
Attention : Le levé du point représentant le rail nécessite un appareillage spécifique non
utilisé dans des levers topographiques classiques.
Le gestionnaire du PCRS a toute latitude pour préciser lorsque les circonstances le
justifient d''autres modes de levé (typiquement dans l''axe du rail au milieu de la bande de
roulement sur un rail Vignole) : le cahier des charges ainsi que les Métadonnées de
livraison devront alors explicitement préciser le mode de levé associé
(d''après http://fr.wikipedia.org/wiki/Voie_normale)
Un rail est souvent décrit dans le secteur ferroviaire par emprises et par tronçons. Cette
description « métier » peut être conservée dans le PCRS, mais les attributs servant à la
décrire ne font pas à proprement parler partie du PCRS.

Regroupement :
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

COMMENT ON COLUMN "RailPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "RailPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "RailPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "RailPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "RailPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "RailPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "RailPCRS"."geometrie" IS
'Géométrie de type curve';


-- ---------------------------------
-- Classe : HaieEspaceVertPCRS
-- ---------------------------------

-- Sequence: HaieEspaceVertPCRS_idObjet_seq
--DROP INDEX if exists "HaieEspaceVertPCRS_geometrie_geomidx";
--DROP TABLE if exists "HaieEspaceVertPCRS";
--DROP SEQUENCE if exists "HaieEspaceVertPCRS_idObjet_seq";

--CREATE SEQUENCE "HaieEspaceVertPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: HaieEspaceVertPCRS
--DROP TABLE if exists "HaieEspaceVertPCRS";
CREATE TABLE "HaieEspaceVertPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(LineString,3946) NOT NULL,
  CONSTRAINT "HaieEspaceVertPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: HaieEspaceVertPCRS_geometrie_geomidx
--DROP INDEX if exists "HaieEspaceVertPCRS_geometrie_geomidx";
CREATE INDEX "HaieEspaceVertPCRS_geometrie_geomidx"
  ON "HaieEspaceVertPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "HaieEspaceVertPCRS" IS
'Nom de la classe :
HaieEspaceVertPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Haie vive, Bordure d''espace vert

Définition :
Classe permettant de décrire la limite apparente nette avec les haies, jardins, massifs,
pelouses et autres espaces couverts de végétation, entretenus ou non, à différentes
fonctions comme la qualité de vie, l''agrément, les loisirs, la séparation voire la clôture
d''espaces...

Modélisation :
Polyligne (GM_Curve)
Les haies et espaces verts sont levés le long de la limite apparente avec le revêtement
voisin, point à point et au niveau du sol.
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS.

Regroupement :
Les haies, les zones arborées ou non, entretenues ou non, les zones dites vertes, de
loisir ou d''activité sportive
Haie

Critères de sélection :
Les haies et autres espaces de végétation concernés doivent disposer d''une limite
apparente claire avec un autre type de revêtement bien défini (goudron, béton, pavés...) ;
Sont également exclus les bacs à fleurs ainsi que tout type d''arbre isolé présent sur le
domaine public. Les arbres d''alignement font bien partie du PCRS, mais ils sont décrits
par un autre type d''objet, à savoir l''objet ArbrePCRS.
';

COMMENT ON COLUMN "HaieEspaceVertPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "HaieEspaceVertPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "HaieEspaceVertPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "HaieEspaceVertPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "HaieEspaceVertPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "HaieEspaceVertPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "HaieEspaceVertPCRS"."geometrie" IS
'Géométrie de type curve';


-- ---------------------------------
-- Classe : ArbreAPCRS
-- ---------------------------------

-- Sequence: ArbrePCRS_idObjet_seq
--DROP INDEX if exists "ArbrePCRS_geometrie_geomidx";
--DROP TABLE if exists "ArbrePCRS";
--DROP SEQUENCE if exists "ArbrePCRS_idObjet_seq";

--CREATE SEQUENCE "ArbrePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: ArbrePCRS
--DROP TABLE if exists "ArbrePCRS";
CREATE TABLE "ArbrePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(point,3946) NOT NULL,
  "reference" character varying NOT NULL,
  "type" character varying(2) NOT NULL REFERENCES "CategorieArbrePCRSType" (code),

  CONSTRAINT "ArbrePCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ArbrePCRS_geometrie_geomidx
--DROP INDEX if exists "ArbrePCRS_geometrie_geomidx";
CREATE INDEX "ArbrePCRS_geometrie_geomidx"
  ON "ArbrePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "ArbrePCRS" IS
'Nom de la classe :
ArbrePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Arbre d''alignement

Définition :
Classe permettant de décrire les arbres régulièrement entretenus de la voirie du domaine
public.

Modélisation :
Point (GM_Point)
L''arbre est modélisé par un point levé en axe du tronc, à hauteur du terrain naturel hors
éventuel monticule au pied
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS

Regroupement :
Selon toutes essences et espèces d''arbres';

COMMENT ON COLUMN "ArbrePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "ArbrePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "ArbrePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "ArbrePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "ArbrePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "ArbrePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "ArbrePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "ArbrePCRS"."reference" IS
'';
COMMENT ON COLUMN "ArbrePCRS"."type" IS
'';

-- ---------------------------------
-- Classe : PilePontPCRS
-- ---------------------------------

-- Sequence: PilePontPCRS_idObjet_seq
--DROP INDEX if exists "PilePontPCRS_geometrie_geomidx";
--DROP TABLE if exists "PilePontPCRS";
--DROP SEQUENCE if exists "PilePontPCRS_idObjet_seq";

--CREATE SEQUENCE "PilePontPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: PilePontPCRS
--DROP TABLE if exists "PilePontPCRS";
CREATE TABLE "PilePontPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "geometrie" geometry(point,3946) NOT NULL,
  CONSTRAINT "PilePontPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilePontPCRS_geometrie_geomidx
--DROP INDEX if exists "PilePontPCRS_geometrie_geomidx";
CREATE INDEX "PilePontPCRS_geometrie_geomidx"
  ON "PilePontPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "PilePontPCRS" IS
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

COMMENT ON COLUMN "PilePontPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "PilePontPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "PilePontPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "PilePontPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "PilePontPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "PilePontPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "PilePontPCRS"."geometrie" IS
'Géométrie de type polygone';


-- ---------------------------------
-- Classe : AffleurantPCRS
-- ---------------------------------

-- Sequence: AffleurantPCRS_idAffleurant_seq
--DROP INDEX if exists "AffleurantPCRS_geometrie_geomidx";
--DROP TABLE if exists "AffleurantPCRS";
--DROP SEQUENCE if exists "AffleurantPCRS_idAffleurant_seq";

--CREATE SEQUENCE "AffleurantPCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: AffleurantPCRS
--DROP TABLE if exists "AffleurantPCRS";
CREATE TABLE "AffleurantPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "gestionnaire" character varying,
  "idSource" character varying,
  "nature" character varying(2) NOT NULL REFERENCES "NatureAffleurantPCRSType" (code),
  "reseau" character varying(8) NOT NULL REFERENCES "NatureReseauPCRSType" (code),
  "source" character varying,
  CONSTRAINT "AffleurantPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantPCRS_geometrie_geomidx
--DROP INDEX if exists "AffleurantPCRS_geometrie_geomidx";
--CREATE INDEX "AffleurantPCRS_geometrie_geomidx"
--  ON "AffleurantPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE "AffleurantPCRS" IS
'Nom de la classe :
AffleurantPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Affleurant du PCRS

Définition :
Classe abstraite permettant de décrire une partie d’un réseau existant visible depuis la
surface
IMPORTANT : un affleurant de réseau correspond à un objet métier géré non pas par la
collectivité gestionnaire du PCRS mais par l''opérateur gestionnaire du réseau. Il figure
toutefois dans la liste des objets susceptibles d''être échangés dans un PCRS de façon à
partager la localisation précise de tous les objets d''un réseau visibles depuis la surface.

Modélisation :
Selon les classes d''affleurant spécialisées, et représentées (de préférence) par une
représentation exhaustive et interopérable comme le polygone
AffleurantEnveloppePCRS, éventuellement complété par un habillage de type
HabillageLignesPCRS, néanmoins d''autres modélisation géométriques sont offertes afin
de ne pas perdre d''informations.
La modélisation géométrique est propre à chacune des classes d''affleurant spécialisées
AffleurantXXXPCRS du PCRS

Regroupement :
Bouches, avaloirs, regards, plaques, poteaux, coffrets...

Contraintes :
Classe essentielle du PCRS';

COMMENT ON COLUMN "AffleurantPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "AffleurantPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "AffleurantPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "AffleurantPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "AffleurantPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "AffleurantPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "AffleurantPCRS"."gestionnaire" IS
'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
COMMENT ON COLUMN "AffleurantPCRS"."idSource" IS
'Identifiant unique de l''affleurant';
COMMENT ON COLUMN "AffleurantPCRS"."nature" IS
'Nature de l''affleurant';
COMMENT ON COLUMN "AffleurantPCRS"."reseau" IS
'Nature du réseau';
COMMENT ON COLUMN "AffleurantPCRS"."source" IS
'Source des données d''affleurant dans le SI du gestionnaire de réseaux
Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';


-- ---------------------------------
-- Classe : AffleurantEnveloppePCRS
-- ---------------------------------

-- Sequence: AffleurantEnveloppePCRS_idAffleurant_seq
--DROP INDEX if exists "AffleurantEnveloppePCRS_geometrie_geomidx";
--DROP TABLE if exists "AffleurantEnveloppePCRS";
--DROP SEQUENCE if exists "AffleurantEnveloppePCRS_idAffleurant_seq";

--CREATE SEQUENCE "AffleurantEnveloppePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: AffleurantEnveloppePCRS
--DROP TABLE if exists "AffleurantEnveloppePCRS";
CREATE TABLE "AffleurantEnveloppePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "gestionnaire" character varying,
  "idSource" character varying,
  "nature" character varying(2) NOT NULL REFERENCES "NatureAffleurantPCRSType" (code),
  "reseau" character varying(8) NOT NULL REFERENCES "NatureReseauPCRSType" (code),
  "source" character varying,
  "geometrie" geometry(Polygon,3946) NOT NULL,
  CONSTRAINT "AffleurantEnveloppePCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantEnveloppePCRS_geometrie_geomidx
--DROP INDEX if exists "AffleurantEnveloppePCRS_geometrie_geomidx";
CREATE INDEX "AffleurantEnveloppePCRS_geometrie_geomidx"
  ON "AffleurantEnveloppePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "AffleurantEnveloppePCRS" IS
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

COMMENT ON COLUMN "AffleurantEnveloppePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "AffleurantEnveloppePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "AffleurantEnveloppePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "AffleurantEnveloppePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "AffleurantEnveloppePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "AffleurantEnveloppePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "AffleurantEnveloppePCRS"."gestionnaire" IS
'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
COMMENT ON COLUMN "AffleurantEnveloppePCRS"."idSource" IS
'Identifiant unique de l''affleurant';
COMMENT ON COLUMN "AffleurantEnveloppePCRS"."nature" IS
'Nature de l''affleurant';
COMMENT ON COLUMN "AffleurantEnveloppePCRS"."reseau" IS
'Nature du réseau';
COMMENT ON COLUMN "AffleurantEnveloppePCRS"."source" IS
'Source des données d''affleurant dans le SI du gestionnaire de réseaux
Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
COMMENT ON COLUMN "AffleurantEnveloppePCRS"."geometrie" IS
'Géométrie de type polygone';


-- ---------------------------------
-- Classe : AffleurantLignePCRS
-- ---------------------------------

-- Sequence: AffleurantLignePCRS_idAffleurant_seq
--DROP INDEX if exists "AffleurantLignePCRS_geometrie_geomidx";
--DROP TABLE if exists "AffleurantLignePCRS";
--DROP SEQUENCE if exists "AffleurantLignePCRS_idAffleurant_seq";

--CREATE SEQUENCE "AffleurantLignePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: AffleurantLignePCRS
--DROP TABLE if exists "AffleurantLignePCRS";
CREATE TABLE "AffleurantLignePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "gestionnaire" character varying,
  "idSource" character varying,
  "nature" character varying(2) NOT NULL REFERENCES "NatureAffleurantPCRSType" (code),
  "reseau" character varying(8) NOT NULL REFERENCES "NatureReseauPCRSType" (code),
  "source" character varying,
  "geometrie" geometry(MultiLinestring,3946) NOT NULL,
  CONSTRAINT "AffleurantLignePCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantLignePCRS_geometrie_geomidx
--DROP INDEX if exists "AffleurantLignePCRS_geometrie_geomidx";
CREATE INDEX "AffleurantLignePCRS_geometrie_geomidx"
  ON "AffleurantLignePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "AffleurantLignePCRS" IS
'Nom de la classe :
AffleurantLignePCRS

Sous-classe de :
AffleurantPCRS

Titre :
Affleurant du PCRS représenté par une ligne.

Définition :
Classe spécialisée permettant de décrire une partie d’un réseau existant visible depuis la
surface.

Modélisation :
Ensemble de courbes (GM_MultiCurve)
La géométrie de l''affleurant, est modélisée par un ensemble de courbes.

Regroupement :
Bouches, avaloirs, regards, plaques, poteaux, coffrets...

Contraintes :
La version actuelle du PCRS recommande plutot l''utilisation de la classe
<AffleurantEnveloppePCRS>, éventuellement complétée par un habillage
<HabillageLignesPCRS> pour le dessin de l''affleurant à l''intérieur de son enveloppe';

COMMENT ON COLUMN "AffleurantLignePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "AffleurantLignePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "AffleurantLignePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "AffleurantLignePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "AffleurantLignePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "AffleurantLignePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "AffleurantLignePCRS"."gestionnaire" IS
'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
COMMENT ON COLUMN "AffleurantLignePCRS"."idSource" IS
'Identifiant unique de l''affleurant';
COMMENT ON COLUMN "AffleurantLignePCRS"."nature" IS
'Nature de l''affleurant';
COMMENT ON COLUMN "AffleurantLignePCRS"."reseau" IS
'Nature du réseau';
COMMENT ON COLUMN "AffleurantLignePCRS"."source" IS
'Source des données d''affleurant dans le SI du gestionnaire de réseaux
Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
COMMENT ON COLUMN "AffleurantLignePCRS"."geometrie" IS
'Géométrie composée d''un ensemble de lignes';


-- ---------------------------------
-- Classe : AffleurantPointPCRS
-- ---------------------------------

-- Sequence: AffleurantPointPCRS_idAffleurant_seq
--DROP INDEX if exists "AffleurantPointPCRS_geometrie_geomidx";
--DROP TABLE if exists "AffleurantPointPCRS";
--DROP SEQUENCE if exists "AffleurantPointPCRS_idAffleurant_seq";

--CREATE SEQUENCE "AffleurantPointPCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: AffleurantPointPCRS
--DROP TABLE if exists "AffleurantPointPCRS";
CREATE TABLE "AffleurantPointPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "gestionnaire" character varying,
  "idSource" character varying,
  "nature" character varying(2) NOT NULL REFERENCES "NatureAffleurantPCRSType" (code),
  "reseau" character varying(8) NOT NULL REFERENCES "NatureReseauPCRSType" (code),
  "source" character varying,
  "geometrie" geometry(Point,3946) NOT NULL,
  CONSTRAINT "AffleurantPointPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantPointPCRS_geometrie_geomidx
--DROP INDEX if exists "AffleurantPointPCRS_geometrie_geomidx";
CREATE INDEX "AffleurantPointPCRS_geometrie_geomidx"
  ON "AffleurantPointPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "AffleurantPointPCRS" IS
'Nom de la classe :
AffleurantPointPCRS

Sous-classe de :
AffleurantPCRS

Titre :
Affleurant du PCRS représenté par un point.

Définition :
Classe spécialisée permettant de décrire une partie d’un réseau existant visible depuis la
surface.

Modélisation :
Ponctuel (GM_Point)
La géométrie de l''affleurant, est modélisée par un point représentant le centroide de
l''affleurant.

Regroupement :
Bouches, avaloirs, regards, plaques, poteaux, coffrets...

Contraintes :
La version actuelle du PCRS recommande plutot l''utilisation de la classe
<AffleurantEnveloppePCRS>, éventuellement complétée par un habillage
<HabillageLignesPCRS> pour le dessin de l''affleurant à l''intérieur de son enveloppe. La
représentation par un unique point sera donc utilisée faute d''informations suffisantes.';

COMMENT ON COLUMN "AffleurantPointPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "AffleurantPointPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "AffleurantPointPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "AffleurantPointPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "AffleurantPointPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "AffleurantPointPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "AffleurantPointPCRS"."gestionnaire" IS
'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
COMMENT ON COLUMN "AffleurantPointPCRS"."idSource" IS
'Identifiant unique de l''affleurant';
COMMENT ON COLUMN "AffleurantPointPCRS"."nature" IS
'Nature de l''affleurant';
COMMENT ON COLUMN "AffleurantPointPCRS"."reseau" IS
'Nature du réseau';
COMMENT ON COLUMN "AffleurantPointPCRS"."source" IS
'Source des données d''affleurant dans le SI du gestionnaire de réseaux
Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
COMMENT ON COLUMN "AffleurantPointPCRS"."geometrie" IS
'Géométrie de type point';


-- ---------------------------------
-- Classe : AffleurantSymbolePCRS
-- ---------------------------------

-- Sequence: AffleurantSymbolePCRS_idAffleurant_seq
--DROP INDEX if exists "AffleurantSymbolePCRS_geometrie_geomidx";
--DROP TABLE if exists "AffleurantSymbolePCRS";
--DROP SEQUENCE if exists "AffleurantSymbolePCRS_idAffleurant_seq";

--CREATE SEQUENCE "AffleurantSymbolePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: AffleurantSymbolePCRS
--DROP TABLE if exists "AffleurantSymbolePCRS";
CREATE TABLE "AffleurantSymbolePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "gestionnaire" character varying,
  "idSource" character varying,
  "nature" character varying(2) NOT NULL REFERENCES "NatureAffleurantPCRSType" (code),
  "reseau" character varying(8) NOT NULL REFERENCES "NatureReseauPCRSType" (code),
  "source" character varying,
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  "geometrie" geometry(Point,3946) NOT NULL,
  "largeur" decimal NOT NULL,
  "longueur" decimal NOT NULL,
  "reference" character varying NOT NULL,
  CONSTRAINT "AffleurantSymbolePCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS ("AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantSymbolePCRS_geometrie_geomidx
--DROP INDEX if exists "AffleurantSymbolePCRS_geometrie_geomidx";
CREATE INDEX "AffleurantSymbolePCRS_geometrie_geomidx"
  ON "AffleurantSymbolePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "AffleurantSymbolePCRS" IS
'Nom de la classe :
AffleurantSymbolePCRS

Sous-classe de :
AffleurantPCRS

Titre :
Affleurant du PCRS représenté par un symbole

Définition :
Classe spécialisée permettant de décrire une partie d’un réseau existant visible depuis la
surface.

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
enfin de déterminer l''angle de rotation utilisé pour orienter correctement le symbole
La représentation par symbole doit en outre être augmentée de la localisation des points
levés de façon à se prémunir des risques liés à une représentation incorrecte du symbole
de l''affleurant.

Regroupement :
Bouches, avaloirs, regards, plaques, poteaux, coffrets...

Contraintes :
Classe conservée pour compatibilité avec les PCRS v1.0
La version v2.0 recommande plutôt l''utilisation de la classe <AffleurantEnveloppePCRS>,
éventuellement complétée par un habillage <HabillageLignesPCRS> pour le dessin de
l''affleurant à l''intérieur de son enveloppe';

COMMENT ON COLUMN "AffleurantSymbolePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."gestionnaire" IS
'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."idSource" IS
'Identifiant unique de l''affleurant';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."nature" IS
'Nature de l''affleurant';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."reseau" IS
'Nature du réseau';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."source" IS
'Source des données d''affleurant dans le SI du gestionnaire de réseaux
Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."angleRotation" IS
'Angle utilisé uniquement pour l''orientation du symbole d''affleurant
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."largeur" IS
'Utilisé uniquement pour la mise à l''échelle Y du symbole de l''affleurant';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."longueur" IS
'Utilisé uniquement pour la mise à l''échelle X du symbole de l''affleurant';
COMMENT ON COLUMN "AffleurantSymbolePCRS"."reference" IS
'Désignation du symbole à utiliser pour la représentation de l''affleurant.';


-- ---------------------------------
-- Classe : RasterPCRS
-- ---------------------------------

-- Sequence: RasterPCRS_idPCRS_seq
--DROP INDEX if exists "RasterPCRS_geometrie_geomidx";
--DROP TABLE if exists "RasterPCRS";
DROP SEQUENCE if exists "RasterPCRS_idPCRS_seq";

CREATE SEQUENCE "RasterPCRS_idPCRS_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: RasterPCRS
--DROP TABLE if exists "RasterPCRS";
CREATE TABLE "RasterPCRS"
(
  "dateAcquisition" date NOT NULL,
  "dateRecette" date NOT NULL,
  "descriptionElementsQualite" character varying NOT NULL,
  "geometrie" geometry(Polygon,3946) NOT NULL,
  "idPCRS" character varying UNIQUE NOT NULL DEFAULT nextval('"RasterPCRS_idPCRS_seq"'::regclass),
  "nomImage" character varying NOT NULL,
  "precisionPlanimetriqueIN" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "precisionPlanimetriqueOUT" character varying(3) NOT NULL REFERENCES "CategoriePrecisionPCRSType" (code),
  "resolution" integer NOT NULL,
  "typeImage" character varying NOT NULL,
  CONSTRAINT "RasterPCRS_pkey" PRIMARY KEY ("idPCRS")
)
WITH (
  OIDS=FALSE
);


-- Index: RasterPCRS_geometrie_geomidx
--DROP INDEX if exists "RasterPCRS_geometrie_geomidx";
CREATE INDEX "RasterPCRS_geometrie_geomidx"
  ON "RasterPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE "RasterPCRS" IS
'Nom de la classe :
RasterPCRS

Titre :
Orthophotoplan du PCRS

Définition :
Classe abstraite permettant de décrire toutes les ortho-images utilisées dans le cadre du
PCRS qu’elles appartiennent ou non au PCRS. Elle sert principalement à définir les
caractéristiques, attributs et relations communs à tous.

Regroupement :
Les orthophotoplans du PCRS sont regroupés par classes de précision :
Les orthophotoplans entrant dans la classe A pour la totalité de la surface couverte
Les orthophotoplans entrant dans la classe A pour les seules régions couvertes par les
corps de rue et pouvant posséder une précision géométrique dégradée pour les autres
régions
Les orthophotoplans n’entrant pas dans la classe A et servant de fond de plan
informationnel pour les objets du PCRS rentrant dans la classe A.

Critères de sélection :
Ne sont de précision garantie sur une ortho-image que les objets effectivement modélisés
dans le modèle numérique d’élévation qui a servi à l’ortho-rectification de la collection de
clichés aériens. Les paramètres descriptifs du MNE utiles à la compréhension de la
qualité de l’ortho-image se trouvent dans le champ « description des éléments de qualité »
';

COMMENT ON COLUMN "RasterPCRS"."dateAcquisition" IS
'La date et l''heure à laquelle la photo aérienne a été prise /
la date à laquelle la mission aérienne a eu lieu (au détail du jour ou celui du mois voire l''année)';
COMMENT ON COLUMN "RasterPCRS"."dateRecette" IS
'La date à laquelle le maître d''ouvrage a intégré l''ortho-image dans le PCRS';
COMMENT ON COLUMN "RasterPCRS"."descriptionElementsQualite" IS
'Description des paramètres externes donnant les clés de compréhension de la qualité de l''otho-imagerie
Comprend la liste des éléments qui sont effectivement redressés dans le MNE qui a servi à l''ortho-rectification';
COMMENT ON COLUMN "RasterPCRS"."geometrie" IS
'Géométrie de type surfacique représentant l''emprise de l''image';
COMMENT ON COLUMN "RasterPCRS"."idPCRS" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN "RasterPCRS"."nomImage" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN "RasterPCRS"."precisionPlanimetriqueIN" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée aux informations photométriques sur l''orthophotoplan pour ce qui concerne
les surfaces couvertes pas les corps de rue';
COMMENT ON COLUMN "RasterPCRS"."precisionPlanimetriqueOUT" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée aux informations photométriques sur l''orthophotoplan pour ce qui concerne
les surfaces non couvertes pas les corps de rue';
COMMENT ON COLUMN "RasterPCRS"."resolution" IS
'La taille au sol d''un pixel de l''ortho-image en cm';
COMMENT ON COLUMN "RasterPCRS"."typeImage" IS
'Type de l''image
Les mime-types s''ils existent doivent être privilégiés';




-- ---------------------------------
-- Creation des tables "partenaires"
-- ---------------------------------


-- ---------------------------------
-- Creation des tables "relations n-m"
-- ---------------------------------


-- ---------------------------------
-- Classe : RoleActeurPCRSRelation
-- ---------------------------------
--DROP TABLE if exists "RoleActeurPCRSRelation";
CREATE TABLE "RoleActeurPCRSRelation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "acteur" character varying NOT NULL REFERENCES "ActeurPCRSType" ("code"),
  "role" character varying NOT NULL REFERENCES "RoleNiveau2PCRSType" ("code")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

INSERT INTO "RoleActeurPCRSRelation" ("acteur", "role") VALUES ('01', '02');
INSERT INTO "RoleActeurPCRSRelation" ("acteur", "role") VALUES ('02', '06');
INSERT INTO "RoleActeurPCRSRelation" ("acteur", "role") VALUES ('03', '06');
INSERT INTO "RoleActeurPCRSRelation" ("acteur", "role") VALUES ('04', '06');
INSERT INTO "RoleActeurPCRSRelation" ("acteur", "role") VALUES ('05', '02');
INSERT INTO "RoleActeurPCRSRelation" ("acteur", "role") VALUES ('05', '03');
INSERT INTO "RoleActeurPCRSRelation" ("acteur", "role") VALUES ('05', '06');
INSERT INTO "RoleActeurPCRSRelation" ("acteur", "role") VALUES ('06', '05');
INSERT INTO "RoleActeurPCRSRelation" ("acteur", "role") VALUES ('06', '06');
INSERT INTO "RoleActeurPCRSRelation" ("acteur", "role") VALUES ('07', '04');

-- ---------------------------------
-- Classe : EmpriseCommunePCRSRelation
-- ---------------------------------

-- Sequence: EmpriseCommunePCRSRelation_idRelation_seq
--DROP INDEX if exists "EmpriseCommunePCRSRelation_geometrie_geomidx";
--DROP TABLE if exists "EmpriseCommunePCRSRelation";
--DROP SEQUENCE if exists "EmpriseCommunePCRSRelation_idRelation_seq";

--CREATE SEQUENCE "EmpriseCommunePCRSRelation_idRelation_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1586
--  CACHE 1;

-- Table: EmpriseCommunePCRSRelation
--DROP TABLE if exists "EmpriseCommunePCRSRelation";
CREATE TABLE "EmpriseCommunePCRSRelation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "commune" character varying NOT NULL REFERENCES "Commune" ("codeINSEE"),
  "emprise" character varying NOT NULL REFERENCES "EmprisePCRS" ("idEmprise")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

-- Index: EmpriseCommunePCRSRelation_geometrie_geomidx
--DROP INDEX if exists "EmpriseCommunePCRSRelation_geometrie_geomidx";
--CREATE INDEX "EmpriseCommunePCRSRelation_geometrie_geomidx"
--  ON "EmpriseCommunePCRSRelation"
--  USING gist
--  (geometrie);

COMMENT ON TABLE "EmpriseCommunePCRSRelation" IS
'';

COMMENT ON COLUMN "EmpriseCommunePCRSRelation"."commune" IS
'';
COMMENT ON COLUMN "EmpriseCommunePCRSRelation"."emprise" IS
'';


-- ---------------------------------
-- Classe : EmpriseActeurPCRSRelation
-- ---------------------------------
--DROP TABLE if exists "EmpriseActeurPCRSRelation";
CREATE TABLE "EmpriseActeurPCRSRelation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "emprise" character varying NOT NULL REFERENCES "InitiativePCRS" ("idEmprise"),
  "acteur" character varying NOT NULL REFERENCES "ActeurPCRSType" ("code")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);


-- ---------------------------------
-- Classe : HabillageHabillagePCRSRelation
-- ---------------------------------
--DROP TABLE if exists "HabillageHabillagePCRSRelation";
CREATE TABLE "HabillageHabillagePCRSRelation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "habillage1" character varying NOT NULL REFERENCES "HabillagePCRS" ("idHabillage"),
  "habillage2" character varying NOT NULL REFERENCES "HabillagePCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);


-- ---------------------------------
-- Classe : ObjetVecteurPointLevePCRSRelation
-- ---------------------------------
--DROP TABLE if exists "ObjetVecteurPointLevePCRSRelation";
CREATE TABLE "ObjetVecteurPointLevePCRSRelation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "objet" character varying NOT NULL REFERENCES "ObjetVecteurPCRS" ("idObjet"),
  "pointLeve" character varying NOT NULL REFERENCES "PointLevePCRS" ("numeroPoint")
  --CONSTRAINT "ObjetVecteurPointLevePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);


-- ---------------------------------
-- Classe : AffleurantAffleurantPCRSRelation
-- ---------------------------------
--DROP TABLE if exists "AffleurantAffleurantPCRSRelation";
CREATE TABLE "AffleurantAffleurantPCRSRelation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurant" character varying NOT NULL REFERENCES "AffleurantPCRS" ("idObjet"),
  "autreRepresentation" character varying NOT NULL REFERENCES "AffleurantPCRS" ("idObjet")
)
WITH (
  OIDS=FALSE
);


-- ---------------------------------
-- Classe : AffleurantEnveloppeHabillageLignePCRSRelation
-- ---------------------------------
--DROP TABLE if exists "AffleurantEnveloppeHabillageLignePCRSRelation";
CREATE TABLE "AffleurantEnveloppeHabillageLignePCRSRelation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurant" character varying NOT NULL REFERENCES "AffleurantEnveloppePCRS" ("idObjet"),
  "habillage" character varying NOT NULL REFERENCES "HabillageLignesPCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);


-- ---------------------------------
-- Classe : RasterMasqueOpacitePCRSRelation
-- ---------------------------------
--DROP TABLE if exists "RasterMasqueOpacitePCRSRelation";
CREATE TABLE "RasterMasqueOpacitePCRSRelation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "raster" character varying NOT NULL REFERENCES "RasterPCRS" ("idPCRS"),
  "masque" character varying NOT NULL REFERENCES "MasqueOpacitePCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);
