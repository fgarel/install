-- ---------------------------------
-- DROP
-- ---------------------------------
DROP TABLE if exists "EmprisePublicationPCRS" cascade;
DROP TABLE if exists "TronconVoiriePCRS" cascade;
DROP TABLE if exists "HabillagePCRS" cascade;
DROP TABLE if exists "SymboleHabillagePCRS" cascade;
DROP TABLE if exists "TexteHabillagePCRS" cascade;
DROP TABLE if exists "NomVoiriePCRS" cascade;
DROP TABLE if exists "NumeroVoiriePCRS" cascade;
DROP TABLE if exists "PointLevePCRS" cascade;
DROP TABLE if exists "ObjetGeneriquePCRS" cascade;
DROP TABLE if exists "PointCanevasPCRS" cascade;
DROP TABLE if exists "BordurePCRS" cascade;
DROP TABLE if exists "ChangementRevetementPCRS" cascade;
DROP TABLE if exists "MarcheEscalierPCRS" cascade;
DROP TABLE if exists "FacadePCRS" cascade;
DROP TABLE if exists "ProeminenceBatiPCRS" cascade;
DROP TABLE if exists "SeuilPCRS" cascade;
DROP TABLE if exists "MurPCRS" cascade;
DROP TABLE if exists "PilierRegulierPCRS" cascade;
DROP TABLE if exists "PilierParticulierPCRS" cascade;
DROP TABLE if exists "RailPCRS" cascade;
DROP TABLE if exists "HaieEspaceVertPCRS" cascade;
DROP TABLE if exists "ArbreAlignementPCRS" cascade;
DROP TABLE if exists "PilePontPCRS" cascade;
DROP TABLE if exists "AffleurantSymbolePCRS" cascade;
DROP TABLE if exists "AffleurantEnveloppePCRS" cascade;



DROP TABLE if exists "pcrs_type_objet" cascade;
DROP TABLE if exists "pcrs_t" cascade;
DROP TABLE if exists "pcrs_p" cascade;
DROP TABLE if exists "pcrs_l" cascade;
DROP TABLE if exists "pcrs_s" cascade;


-- ---------------------------------
-- Creation des tables "liste de valeurs / énumérations"
-- ---------------------------------

-- ---------------------------------
-- Classe : CalendrierPCRS
-- ---------------------------------

-- Table: CalendrierPCRS
DROP TABLE if exists "CalendrierPCRS" cascade;
CREATE TABLE "CalendrierPCRS"
(
  code character varying(2) unique,
  libelle character varying(24),
  CONSTRAINT "CalendrierPCRS_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CalendrierPCRS" (code, libelle) VALUES ('01', 'Livré, Mis A Disposition');
INSERT INTO "CalendrierPCRS" (code, libelle) VALUES ('02', 'Actualisation En Cours');
INSERT INTO "CalendrierPCRS" (code, libelle) VALUES ('03', 'En Projet, Planifié');
INSERT INTO "CalendrierPCRS" (code, libelle) VALUES ('04', 'Non Planifié');

-- ---------------------------------
-- Classe : ClassePrecisionPCRS
-- ---------------------------------

-- Table: ClassePrecisionPCRS
DROP TABLE if exists "ClassePrecisionPCRS" cascade;
CREATE TABLE "ClassePrecisionPCRS"
(
  code character varying(3) unique,
  libelle character varying(17),
  CONSTRAINT "ClassePrecisionPCRS_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "ClassePrecisionPCRS" (code, libelle) VALUES ('002', 'moins de 2 cm');
INSERT INTO "ClassePrecisionPCRS" (code, libelle) VALUES ('005', 'de 2 à 5 cm');
INSERT INTO "ClassePrecisionPCRS" (code, libelle) VALUES ('010', 'de 5 à 10 cm');
INSERT INTO "ClassePrecisionPCRS" (code, libelle) VALUES ('040', 'de 10 à 40 cm');
INSERT INTO "ClassePrecisionPCRS" (code, libelle) VALUES ('150', 'de 40 à 150 cm');
INSERT INTO "ClassePrecisionPCRS" (code, libelle) VALUES ('999', 'au delà de 150 cm');


-- ---------------------------------
-- Classe : CodeCouleurAffleurant
-- ---------------------------------

-- Table: CodeCouleurAffleurant
DROP TABLE if exists "CodeCouleurAffleurant" cascade;
CREATE TABLE "CodeCouleurAffleurant"
(
  code character varying(6) unique,
  libelle character varying(80),
  CONSTRAINT "CodeCouleurAffleurant_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CodeCouleurAffleurant" (code, libelle) VALUES ('Rouge', 'Electricité BT, HTA ou HTB, éclairage, signalisation routière et feux tricolores');
INSERT INTO "CodeCouleurAffleurant" (code, libelle) VALUES ('Jaune', 'Gaz combustible (transport ou distribution) et Hydrocarbures');
INSERT INTO "CodeCouleurAffleurant" (code, libelle) VALUES ('Orange', 'Produits chimiques');
INSERT INTO "CodeCouleurAffleurant" (code, libelle) VALUES ('Bleu', 'Eau potable');
INSERT INTO "CodeCouleurAffleurant" (code, libelle) VALUES ('Marron', 'Assainissement et Pluvial');
INSERT INTO "CodeCouleurAffleurant" (code, libelle) VALUES ('Violet', 'Chauffage et Climatisation');
INSERT INTO "CodeCouleurAffleurant" (code, libelle) VALUES ('Vert', 'Communications électroniques et électricité TBT');
INSERT INTO "CodeCouleurAffleurant" (code, libelle) VALUES ('Rose', 'Emprise multi-réseaux');
INSERT INTO "CodeCouleurAffleurant" (code, libelle) VALUES ('Blanc', 'Non-défini');


-- ---------------------------------
-- Classe : CotationPCRS
-- ---------------------------------

-- Table: CotationPCRS
DROP TABLE if exists "CotationPCRS" cascade;
CREATE TABLE "CotationPCRS"
(
  code character varying(2) unique,
  libelle character varying(38),
  CONSTRAINT "CotationPCRS_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CotationPCRS" (code, libelle) VALUES ('01', 'Non Utilisable Pour Coter');
INSERT INTO "CotationPCRS" (code, libelle) VALUES ('02', 'Cotation Planimetrique Uniquement');
INSERT INTO "CotationPCRS" (code, libelle) VALUES ('03', 'Cotation Planimetrique Et Altimetrique');

-- ---------------------------------
-- Classe : EmprisePCRSType
-- ---------------------------------

-- Table: EmprisePCRSType
DROP TABLE if exists "EmprisePCRSType" cascade;
CREATE TABLE "EmprisePCRSType"
(
  code character varying(2) unique,
  libelle character varying(21),
  CONSTRAINT "EmprisePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "EmprisePCRSType" (code, libelle) VALUES ('01', 'Couloir');
INSERT INTO "EmprisePCRSType" (code, libelle) VALUES ('02', 'Opération');
INSERT INTO "EmprisePCRSType" (code, libelle) VALUES ('03', 'Carreau');
INSERT INTO "EmprisePCRSType" (code, libelle) VALUES ('04', 'Limite Administrative');
INSERT INTO "EmprisePCRSType" (code, libelle) VALUES ('05', 'Raster');


-- ---------------------------------
-- Classe : Gestionnaire
-- ---------------------------------

-- Table: Gestionnaire
DROP TABLE if exists "Gestionnaire" cascade;
CREATE TABLE "Gestionnaire"
(
  gestionnaire character varying unique,
  CONSTRAINT "Gestionnaire_pkey" PRIMARY KEY (gestionnaire)
)
WITH (
  OIDS=FALSE
);


-- ---------------------------------
-- Classe : NatureAffleurant
-- ---------------------------------

-- Table: NatureAffleurant
DROP TABLE if exists "NatureAffleurant" cascade;
CREATE TABLE "NatureAffleurant"
(
  code character varying(2) unique,
  libelle character varying(23),
  CONSTRAINT "NatureAffleurant_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "NatureAffleurant" (code, libelle) VALUES ('00', 'Non défini');
INSERT INTO "NatureAffleurant" (code, libelle) VALUES ('01', 'Avaloir');
INSERT INTO "NatureAffleurant" (code, libelle) VALUES ('02', 'Boîte, Coffret, Armoire');
INSERT INTO "NatureAffleurant" (code, libelle) VALUES ('03', 'Tampon');
INSERT INTO "NatureAffleurant" (code, libelle) VALUES ('04', 'Bouche à clé');
INSERT INTO "NatureAffleurant" (code, libelle) VALUES ('05', 'Bouche, Poteau incendie');
INSERT INTO "NatureAffleurant" (code, libelle) VALUES ('06', 'Poteau');
INSERT INTO "NatureAffleurant" (code, libelle) VALUES ('07', 'Borne d éclairage');



-- ---------------------------------
-- Classe : PlacementPCRS
-- ---------------------------------

-- Table: PlacementPCRS
DROP TABLE if exists "PlacementPCRS" cascade;
CREATE TABLE "PlacementPCRS"
(
  code character varying(2) unique,
  libelle character varying(40),
  CONSTRAINT "PlacementPCRS_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "PlacementPCRS" (code, libelle) VALUES ('00', 'Sans Repositionnement');
INSERT INTO "PlacementPCRS" (code, libelle) VALUES ('01', 'Repositionnement Gestionnaire de Réseaux');
INSERT INTO "PlacementPCRS" (code, libelle) VALUES ('02', 'Positionnement Axe Voirie');
INSERT INTO "PlacementPCRS" (code, libelle) VALUES ('03', 'Positionnement Limite Voirie');
INSERT INTO "PlacementPCRS" (code, libelle) VALUES ('04', 'Positionnement Hors Voirie');
INSERT INTO "PlacementPCRS" (code, libelle) VALUES ('05', 'Positionnement Parcelle');


-- ---------------------------------
-- Classe : ProprieteEspace
-- ---------------------------------

-- Table: ProprieteEspace
DROP TABLE if exists "ProprieteEspace" cascade;
CREATE TABLE "ProprieteEspace"
(
  code character varying(2) unique,
  libelle character varying(13),
  CONSTRAINT "ProprieteEspace_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "ProprieteEspace" (code, libelle) VALUES ('01', 'Espace Public');
INSERT INTO "ProprieteEspace" (code, libelle) VALUES ('02', 'Espace Privé');
INSERT INTO "ProprieteEspace" (code, libelle) VALUES ('03', 'Indéfini');

-- ---------------------------------
-- Classe : QualiteCategorisation
-- ---------------------------------

-- Table: QualiteCategorisation
DROP TABLE if exists "QualiteCategorisation" cascade;
CREATE TABLE "QualiteCategorisation"
(
  code character varying(2) unique,
  libelle character varying(29),
  CONSTRAINT "QualiteCategorisation_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "QualiteCategorisation" (code, libelle) VALUES ('01', 'Conforme PCRS');
INSERT INTO "QualiteCategorisation" (code, libelle) VALUES ('02', 'Import ERDF');
INSERT INTO "QualiteCategorisation" (code, libelle) VALUES ('03', 'Selon CCTP avant 2015 PVRC v1');


-- ---------------------------------
-- Classe : TexteJustification
-- ---------------------------------

-- Table: TexteJustification
DROP TABLE if exists "TexteJustification" cascade;
CREATE TABLE "TexteJustification"
(
  code character varying(1) unique,
  libelle character varying(6),
  CONSTRAINT "TexteJustification_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "TexteJustification" (code, libelle) VALUES ('G', 'Gauche');
INSERT INTO "TexteJustification" (code, libelle) VALUES ('C', 'Centre');
INSERT INTO "TexteJustification" (code, libelle) VALUES ('D', 'Droite');

-- ---------------------------------
-- Classe : ThematiquePCRS
-- ---------------------------------

-- Table: ThematiquePCRS
DROP TABLE if exists "ThematiquePCRS" cascade;
CREATE TABLE "ThematiquePCRS"
(
  code character varying(2) unique,
  libelle character varying(13),
  CONSTRAINT "ThematiquePCRS_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "ThematiquePCRS" (code, libelle) VALUES ('00', 'A déterminer');
INSERT INTO "ThematiquePCRS" (code, libelle) VALUES ('01', 'Topographie');
INSERT INTO "ThematiquePCRS" (code, libelle) VALUES ('02', 'Bâti');
INSERT INTO "ThematiquePCRS" (code, libelle) VALUES ('03', 'Voirie');
INSERT INTO "ThematiquePCRS" (code, libelle) VALUES ('04', 'Ferroviaire');
INSERT INTO "ThematiquePCRS" (code, libelle) VALUES ('05', 'Clôture');
INSERT INTO "ThematiquePCRS" (code, libelle) VALUES ('06', 'Végétal');
INSERT INTO "ThematiquePCRS" (code, libelle) VALUES ('07', 'Ouvrage d Art');
INSERT INTO "ThematiquePCRS" (code, libelle) VALUES ('08', 'Hydrographie');
INSERT INTO "ThematiquePCRS" (code, libelle) VALUES ('09', 'Orographie');
INSERT INTO "ThematiquePCRS" (code, libelle) VALUES ('99', 'Non définie');


-- ---------------------------------
-- Classe : TypeBordurePCRS
-- ---------------------------------

-- Table: TypeBordurePCRS
DROP TABLE if exists "TypeBordurePCRS" cascade;
CREATE TABLE "TypeBordurePCRS"
(
  code character varying(2) unique,
  libelle character varying(7),
  CONSTRAINT "TypeBordurePCRS_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "TypeBordurePCRS" (code, libelle) VALUES ('01', 'Bordure');
INSERT INTO "TypeBordurePCRS" (code, libelle) VALUES ('02', 'Quai');


-- ---------------------------------
-- Classe : TypeMurPCRS
-- ---------------------------------

-- Table: TypeMurPCRS
DROP TABLE if exists "TypeMurPCRS" cascade;
CREATE TABLE "TypeMurPCRS"
(
  code character varying(2) unique,
  libelle character varying(22),
  CONSTRAINT "TypeMurPCRS_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "TypeMurPCRS" (code, libelle) VALUES ('01', 'Mur');
INSERT INTO "TypeMurPCRS" (code, libelle) VALUES ('02', 'Mur de soutènement');
INSERT INTO "TypeMurPCRS" (code, libelle) VALUES ('03', 'Mur bahut');
INSERT INTO "TypeMurPCRS" (code, libelle) VALUES ('04', 'Mur bahut avec clôture');
INSERT INTO "TypeMurPCRS" (code, libelle) VALUES ('05', 'Parapet');


-- ---------------------------------
-- Classe : TypePilierPCRS
-- ---------------------------------

-- Table: TypePilierPCRS
DROP TABLE if exists "TypePilierPCRS" cascade;
CREATE TABLE "TypePilierPCRS"
(
  code character varying(2) unique,
  libelle character varying(31),
  CONSTRAINT "TypePilierPCRS_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "TypePilierPCRS" (code, libelle) VALUES ('01', 'Pilier carré');
INSERT INTO "TypePilierPCRS" (code, libelle) VALUES ('02', 'Pilier rectangulaire');
INSERT INTO "TypePilierPCRS" (code, libelle) VALUES ('03', 'Pilier circulaire');
INSERT INTO "TypePilierPCRS" (code, libelle) VALUES ('04', 'Pilier à autre forme de section');
INSERT INTO "TypePilierPCRS" (code, libelle) VALUES ('99', 'Pilier à autre forme de section');



-- ---------------------------------
-- Creation des tables, pour la gestion interne, "objets géographiques du PCRS"
-- ---------------------------------

-- ---------------------------------
-- Creation des tables "liste de valeurs / énumérations"
-- ---------------------------------

-- ---------------------------------
-- Classe : pcrs_type_objet
-- ---------------------------------

-- Table: pcrs_type_objet
DROP TABLE if exists "pcrs_type_objet";
CREATE TABLE "pcrs_type_objet"
(
  code character varying(2) unique,
  libelle character varying(24),
  CONSTRAINT "pcrs_type_objet_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);


INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('01', 'EmprisePublicationPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('02', 'TronconVoiriePCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('03', 'HabillagePCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('04', 'SymboleHabillagePCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('05', 'TexteHabillagePCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('06', 'NomVoiriePCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('07', 'NumeroVoiriePCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('08', 'PointLevePCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('09', 'ObjetGeneriquePCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('10', 'PointCanevasPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('11', 'BordurePCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('12', 'ChangementRevetementPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('13', 'MarcheEscalierPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('14', 'FacadePCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('15', 'ProeminenceBatiPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('16', 'SeuilPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('17', 'MurPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('18', 'PilierRegulierPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('19', 'PilierParticulierPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('20', 'RailPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('21', 'HaieEspaceVertPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('22', 'ArbreAlignementPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('23', 'PilePontPCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('24', 'AffleurantSymbolePCRS');
INSERT INTO "pcrs_type_objet" (code, libelle) VALUES ('25', 'AffleurantEnveloppePCRS');


-- ---------------------------------
-- Classe : pcrs_t
-- ---------------------------------

-- Sequence: pcrs_t_id_seq
DROP INDEX if exists "pcrs_t_geometrie_geomidx";
DROP TABLE if exists "pcrs_t";
DROP SEQUENCE if exists "pcrs_t_id_seq";

CREATE SEQUENCE "pcrs_t_id_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: pcrs_t
--DROP TABLE if exists "pcrs_t";
CREATE TABLE "pcrs_t"
(
  "id" character varying UNIQUE NOT NULL DEFAULT nextval('"pcrs_t_id_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  "type_objet" character varying(2) NOT NULL REFERENCES "pcrs_type_objet" (code),          -- Type Objet
  calque character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  --"precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  --"utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Geometry,3946) NOT NULL,
  --identification character varying,

  "positionnement" character varying(2) REFERENCES "PlacementPCRS" (code),                 -- Habillage Texte
  "libelle" character varying NOT NULL,                                                    -- Habillage Texte
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360), -- Habillage Texte
  justification character varying(1) NOT NULL REFERENCES "TexteJustification" (code),      -- Habillage Texte
  taille decimal NOT NULL,                                                                 -- Habillage Texte


  CONSTRAINT "pcrs_t_pkey" PRIMARY KEY ("id")
)
WITH (
  OIDS=FALSE
);

-- Index: pcrs_t_geometrie_geomidx
--DROP INDEX if exists "pcrs_t_geometrie_geomidx";
CREATE INDEX "pcrs_t_geometrie_geomidx"
  ON "pcrs_t"
  USING gist
  (geometrie);



-- ---------------------------------
-- Classe : pcrs_p
-- ---------------------------------

-- Sequence: pcrs_p_id_seq
DROP INDEX if exists "pcrs_p_geometrie_geomidx";
DROP TABLE if exists "pcrs_p";
DROP SEQUENCE if exists "pcrs_p_id_seq";

CREATE SEQUENCE "pcrs_p_id_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: pcrs_p
--DROP TABLE if exists "pcrs_p";
CREATE TABLE "pcrs_p"
(
  "id" character varying UNIQUE NOT NULL DEFAULT nextval('"pcrs_p_id_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  "type_objet" character varying(2) NOT NULL REFERENCES "pcrs_type_objet" (code),          -- Type Objet
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Geometry,3946) NOT NULL,

  identification character varying,                                                        -- Objet Générique
  "numeroPoint" character varying NOT NULL,                                                -- Point Levé
  horodatage date,                                                                         -- Point Levé
  canevas character varying,                                                               -- Point Canevas
  immatriculation character varying,                                                       -- Point Canevas
  "dateCreation" date,                                                                     -- Point Canevas
  fiche character varying,                                                                 -- Point Canevas
  "precisionXY" integer NOT NULL,                                                          -- Point Levé, Point Canevas,
  "precisionZ" integer,                                                                    -- Point Levé, Point Canevas,
  "positionnement" character varying(2) REFERENCES "PlacementPCRS" (code),                 -- Symbole Habillage
  section character varying(2) NOT NULL REFERENCES "TypePilierPCRS" (code),                -- Pilier Regulier
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360), -- Symbole Habillage, Pilier Regulier, Affleurant Symbole
  longueur decimal NOT NULL,                                                               -- Symbole Habillage, Pilier Regulier, Affleurant Symbole
  largeur decimal NOT NULL,                                                                -- Symbole Habillage, Pilier Regulier, Affleurant Symbole
  "reference" character varying NOT NULL,                                                  -- Symbole Habillage, Arbre Alignement, Affleurant Symbole

  gestionnaire character varying REFERENCES "Gestionnaire",                                -- Affleurant Symbole
  nature character varying(2) NOT NULL REFERENCES "NatureAffleurant" (code),               -- Affleurant Symbole
  "codeCouleur" character varying(6) NOT NULL REFERENCES "CodeCouleurAffleurant" (code),   -- Affleurant Symbole
  source character varying,                                                                -- Affleurant Symbole
  "idSource" character varying,                                                            -- Affleurant Symbole

  CONSTRAINT "pcrs_p_pkey" PRIMARY KEY ("id")
)
WITH (
  OIDS=FALSE
);

-- Index: pcrs_p_geometrie_geomidx
--DROP INDEX if exists "pcrs_p_geometrie_geomidx";
CREATE INDEX "pcrs_p_geometrie_geomidx"
  ON "pcrs_p"
  USING gist
  (geometrie);



-- ---------------------------------
-- Classe : pcrs_l
-- ---------------------------------

-- Sequence: pcrs_l_id_seq
DROP INDEX if exists "pcrs_l_geometrie_geomidx";
DROP TABLE if exists "pcrs_l";
DROP SEQUENCE if exists "pcrs_l_id_seq";

CREATE SEQUENCE "pcrs_l_id_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

DROP SEQUENCE if exists "pcrs_l_reference_seq";

CREATE SEQUENCE "pcrs_l_reference_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: pcrs_l
--DROP TABLE if exists "pcrs_l";
CREATE TABLE "pcrs_l"
(
  "id" character varying UNIQUE NOT NULL DEFAULT nextval('"pcrs_l_id_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  "type_objet" character varying(2) NOT NULL REFERENCES "pcrs_type_objet" (code),          -- Type Objet
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Geometry,3946) NOT NULL,

  identification character varying,                                                        -- Objet Générique
  source character varying NOT NULL,                                                       -- Troncon Voirie
  "reference" character varying UNIQUE NOT NULL DEFAULT nextval('"pcrs_l_reference_seq"'::regclass),  -- Troncon Voirie  !! cf id ????
  propriete character varying(2) REFERENCES "ProprieteEspace" (code),                      -- Troncon Voirie
  nature character varying(2) REFERENCES "TypeBordurePCRS" (code),                         -- Bordure

  CONSTRAINT "pcrs_l_pkey" PRIMARY KEY ("id")
)
WITH (
  OIDS=FALSE
);

-- Index: pcrs_l_geometrie_geomidx
--DROP INDEX if exists "pcrs_l_geometrie_geomidx";
CREATE INDEX "pcrs_l_geometrie_geomidx"
  ON "pcrs_l"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : pcrs_s
-- ---------------------------------

-- Sequence: pcrs_s_id_seq
DROP INDEX if exists "pcrs_s_geometrie_geomidx";
DROP TABLE if exists "pcrs_s";
DROP SEQUENCE if exists "pcrs_s_id_seq";

CREATE SEQUENCE "pcrs_s_id_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: pcrs_s
--DROP TABLE if exists "pcrs_s";
CREATE TABLE "pcrs_s"
(
  "id" character varying UNIQUE NOT NULL DEFAULT nextval('"pcrs_s_id_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  "type_objet" character varying(2) NOT NULL REFERENCES "pcrs_type_objet" (code),          -- Type Objet
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Geometry,3946) NOT NULL,

  identification character varying,                                                        -- Objet Generique
  calendrier character varying(2) REFERENCES "CalendrierPCRS" (code),                      -- Emprise
  "datePublication" date NOT NULL,                                                         -- Emprise
  "typeEmprise" character varying(2) NOT NULL REFERENCES "EmprisePCRSType" (code),         -- Emprise
  complement character varying,                                                            -- Emprise
  raster character varying,                                                                -- Emprise
  "gabaritPrecision" character varying(2),                                                 -- Emprise

  nature character varying(2) NOT NULL REFERENCES "NatureAffleurant" (code),               -- Affleurant Enveloppe
  "codeCouleur" character varying(6) NOT NULL REFERENCES "CodeCouleurAffleurant" (code),   -- Affleurant Enveloppe
  source character varying,                                                                -- Affleurant Enveloppe
  "idSource" character varying,                                                            -- Affleurant Enveloppe

  gestionnaire character varying REFERENCES "Gestionnaire",                                -- Emprise, Affleurant Enveloppe

  CONSTRAINT "pcrs_s_pkey" PRIMARY KEY ("id")
)
WITH (
  OIDS=FALSE
);

-- Index: pcrs_s_geometrie_geomidx
--DROP INDEX if exists "pcrs_s_geometrie_geomidx";
CREATE INDEX "pcrs_s_geometrie_geomidx"
  ON "pcrs_s"
  USING gist
  (geometrie);
