
-- ---------------------------------
-- Initialisation du PCRS
-- ---------------------------------

-- Objets Commune, Initiative, EmpriseDisponibilité, EmpriseEchange


-- ---------------------------------
-- Remplissage : EmpriseEchangePCRS
-- ---------------------------------

truncate a_pcrs."EmpriseEchangePCRS" cascade;
DROP SEQUENCE if exists a_pcrs."EmpriseEchangePCRS_idEmpriseEchange_seq" cascade;
CREATE SEQUENCE a_pcrs."EmpriseEchangePCRS_idEmpriseEchange_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
DROP TABLE if exists a_pcrs."EmpriseEchangePCRS" cascade;
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
GRANT ALL ON TABLE a_pcrs."EmpriseEchangePCRS" TO "frederic.garel";
GRANT ALL ON TABLE a_pcrs."EmpriseEchangePCRS" TO pcrs;
GRANT ALL ON TABLE a_pcrs."EmpriseEchangePCRS" TO wvs_role;
INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA_PCRS_EXPORT' as "complement",
      date '2017-10-11' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1379300 5226000,
                                        1379400 5226050,
                                        1379425 5226165,
                                        1379450 5226155,
                                        1379435 5226080,
                                        1379475 5226060,
                                        1379490 5226105,
                                        1379510 5226100,
                                        1379555 5225980,
                                        1379305 5225950,
                                        1379300 5226000))', 3946)
          ) as geometrie;




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

INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-21-B-16' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1379700 5225600, 1379700 5225700, 1379840 5225700, 1379840 5225600, 1379700 5225600))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-21-B-11' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1379700 5225700, 1379700 5225800, 1379840 5225800, 1379840 5225700, 1379700 5225700))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-21-A-03' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1379280 5225900, 1379280 5226000, 1379420 5226000, 1379420 5225900, 1379280 5225900))', 3946)
          ) as geometrie;

INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-16-C-23' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1379280 5226000, 1379280 5226100, 1379420 5226100, 1379420 5226000, 1379280 5226000))', 3946)
          ) as geometrie;

INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-21-A-04' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1379420 5225900, 1379420 5226000, 1379560 5226000, 1379560 5225900, 1379420 5225900))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-16-C-24' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1379420 5226000, 1379420 5226100, 1379560 5226100, 1379560 5226000, 1379420 5226000))', 3946)
          ) as geometrie;

INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-16-C-19' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1379420 5226100, 1379420 5226200, 1379560 5226200, 1379560 5226100, 1379420 5226100))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-16-C-25' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1379560 5226000, 1379560 5226100, 1379700 5226100, 1379700 5226000, 1379560 5226000))', 3946)
          ) as geometrie;

INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-16-C-20' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1379560 5226100, 1379560 5226200, 1379700 5226200, 1379700 5226100, 1379560 5226100))', 3946)
          ) as geometrie;

INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-16-C-15' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1379560 5226200, 1379560 5226300, 1379700 5226300, 1379700 5226200, 1379560 5226200))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-24-B-25' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1377460 5225500, 1377460 5225600, 1377600 5225600, 1377600 5225500, 1377460 5225500))', 3946)
          ) as geometrie;



INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-25-A-21' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1377600 5225500, 1377600 5225600, 1377740 5225600, 1377740 5225500, 1377600 5225500))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-25-A-16' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1377600 5225600, 1377600 5225700, 1377740 5225700, 1377740 5225600, 1377600 5225600))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-25-A-11' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1377600 5225700, 1377600 5225800, 1377740 5225800, 1377740 5225700, 1377600 5225700))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-25-A-06' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1377600 5225800, 1377600 5225900, 1377740 5225900, 1377740 5225800, 1377600 5225800))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-25-A-12' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1377740 5225700, 1377740 5225800, 1377880 5225800, 1377880 5225700, 1377740 5225700))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-25-A-07' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1377740 5225800, 1377740 5225900, 1377880 5225900, 1377880 5225800, 1377740 5225800))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-25-A-02' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1377740 5225900, 1377740 5226000, 1377880 5226000, 1377880 5225900, 1377740 5225900))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-20-C-22' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1377740 5226000, 1377740 5226100, 1377880 5226100, 1377880 5226000, 1377740 5226000))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-18-A-16' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1374800 5226600, 1374800 5226700, 1374940 5226700, 1374940 5226600, 1374800 5226600))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-18-A-11' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1374800 5226700, 1374800 5226800, 1374940 5226800, 1374940 5226700, 1374800 5226700))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00196-01045-18-A-23' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1375080 5226500, 1375080 5226600, 1375220 5226600, 1375220 5226500, 1375080 5226500))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-22-D-07' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1381240 5225300, 1381240 5225400, 1381380 5225400, 1381380 5225300, 1381240 5225300))', 3946)
          ) as geometrie;

INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-22-D-02' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1381240 5225400, 1381240 5225500, 1381380 5225500, 1381380 5225400, 1381240 5225400))', 3946)
          ) as geometrie;

INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-22-D-08' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1381380 5225300, 1381380 5225400, 1381520 5225400, 1381520 5225300, 1381380 5225300))', 3946)
          ) as geometrie;

INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-22-D-03' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1381380 5225400, 1381380 5225500, 1381520 5225500, 1381520 5225400, 1381380 5225400))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01044-02-B-03' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1381380 5224900, 1381380 5225000, 1381520 5225000, 1381520 5224900, 1381380 5224900))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-22-D-23' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1381380 5225000, 1381380 5225100, 1381520 5225100, 1381520 5225000, 1381380 5225000))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01044-02-B-04' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1381520 5224900, 1381520 5225000, 1381660 5225000, 1381660 5224900, 1381520 5224900))', 3946)
          ) as geometrie;

INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-22-D-24' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1381520 5225000, 1381520 5225100, 1381660 5225100, 1381660 5225000, 1381520 5225000))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01044-02-B-05' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1381660 5224900, 1381660 5225000, 1381800 5225000, 1381800 5224900, 1381660 5224900))', 3946)
          ) as geometrie;


INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                            complement,
                            "datePublication",
                            gestionnaire,
                            type,
                            geometrie)
    select
      'CDA-46-00197-01045-22-D-25' as "complement",
      date '2017-10-02' as "datePublication",
      '05' as "gestionnaire",
      '03' as "type",
      st_multi(
              st_geomfromtext('POLYGON((1381660 5225000, 1381660 5225100, 1381800 5225100, 1381800 5225000, 1381660 5225000))', 3946)
          ) as geometrie;


-- ---------------------------------
-- Remplissage (dans l'ordre du PCRS)
-- ---------------------------------


-- ---------------------------------
-- Remplissage : Commune
-- ---------------------------------

--DROP TABLE if exists a_pcrs."Commune" cascade;
DROP VIEW if exists a_pcrs."Commune" cascade;
CREATE OR REPLACE VIEW a_pcrs."Commune" as
select a_habillage.communes_emprises.st_layer as "codeINSEE",
       st_setsrid(st_multi(a_habillage.communes_emprises.shape),3946) as "geometrie",
       a_habillage.communes_emprises.st_name as "nom",
       c_ignf.bdtopo_commune.id as "reference"
from a_habillage.communes_emprises, c_ignf.bdtopo_commune
where a_habillage.communes_emprises.st_layer = c_ignf.bdtopo_commune.code_insee;


-- ---------------------------------
-- Remplissage : Initiative
-- ---------------------------------

truncate a_pcrs."InitiativePCRS" cascade;
DROP SEQUENCE if exists a_pcrs."InitiativePCRS_idInitiative_seq" cascade;
CREATE SEQUENCE a_pcrs."InitiativePCRS_idInitiative_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

INSERT INTO a_pcrs."InitiativePCRS"
select
  nextval('a_pcrs."InitiativePCRS_idInitiative_seq"'::regclass) as "idInitiative",
  'PCRS_CDA_LR' as description,
  '05' as gestionnaire,
  st_setsrid(st_multi(st_union(a_habillage.communes_emprises.shape)),3946) as geometrie
from a_habillage.communes_emprises;


-- ---------------------------------
-- Remplissage : InitiativeActeurPCRS17Relation
-- ---------------------------------

truncate a_pcrs."InitiativeActeurPCRS17Relation";
INSERT INTO a_pcrs."InitiativeActeurPCRS17Relation" (initiative, acteur, "roleNiveau1", "roleNiveau2")
values (
  (select
  a_pcrs."InitiativePCRS"."idInitiative"
  from a_pcrs."InitiativePCRS"),
  '01',
  '02',
  '02');
INSERT INTO a_pcrs."InitiativeActeurPCRS17Relation" (initiative, acteur, "roleNiveau1", "roleNiveau2")
values (
  (select
  a_pcrs."InitiativePCRS"."idInitiative"
  from a_pcrs."InitiativePCRS"),
  '02',
  '03',
  '06');
INSERT INTO a_pcrs."InitiativeActeurPCRS17Relation" (initiative, acteur, "roleNiveau1", "roleNiveau2")
values (
  (select
  a_pcrs."InitiativePCRS"."idInitiative"
  from a_pcrs."InitiativePCRS"),
  '03',
  '03',
  '06');
INSERT INTO a_pcrs."InitiativeActeurPCRS17Relation" (initiative, acteur, "roleNiveau1", "roleNiveau2")
values (
  (select
  a_pcrs."InitiativePCRS"."idInitiative"
  from a_pcrs."InitiativePCRS"),
  '04',
  '03',
  '06');
INSERT INTO a_pcrs."InitiativeActeurPCRS17Relation" (initiative, acteur, "roleNiveau1", "roleNiveau2")
values (
  (select
  a_pcrs."InitiativePCRS"."idInitiative"
  from a_pcrs."InitiativePCRS"),
  '05',
  '03',
  '03');
INSERT INTO a_pcrs."InitiativeActeurPCRS17Relation" (initiative, acteur, "roleNiveau1", "roleNiveau2")
values (
  (select
  a_pcrs."InitiativePCRS"."idInitiative"
  from a_pcrs."InitiativePCRS"),
  '05',
  '03',
  '06');
INSERT INTO a_pcrs."InitiativeActeurPCRS17Relation" (initiative, acteur, "roleNiveau1", "roleNiveau2")
values (
  (select
  a_pcrs."InitiativePCRS"."idInitiative"
  from a_pcrs."InitiativePCRS"),
  '05',
  '03',
  '08');
INSERT INTO a_pcrs."InitiativeActeurPCRS17Relation" (initiative, acteur, "roleNiveau1", "roleNiveau2")
values (
  (select
  a_pcrs."InitiativePCRS"."idInitiative"
  from a_pcrs."InitiativePCRS"),
  '06',
  '03',
  '05');
INSERT INTO a_pcrs."InitiativeActeurPCRS17Relation" (initiative, acteur, "roleNiveau1", "roleNiveau2")
values (
  (select
  a_pcrs."InitiativePCRS"."idInitiative"
  from a_pcrs."InitiativePCRS"),
  '06',
  '03',
  '06');
INSERT INTO a_pcrs."InitiativeActeurPCRS17Relation" (initiative, acteur, "roleNiveau1", "roleNiveau2")
values (
  (select
  a_pcrs."InitiativePCRS"."idInitiative"
  from a_pcrs."InitiativePCRS"),
  '07',
  '03',
  '04');


-- Creation d'une vue InitiativeActeurPCRS17
DROP VIEW if exists a_pcrs."InitiativeActeurPCRS17";
CREATE OR REPLACE VIEW a_pcrs."InitiativeActeurPCRS17" as
select
  a_pcrs."InitiativePCRS".description as initiative,
  a_pcrs."ActeurPCRS17Type".valeur as acteur,
  a_pcrs."RoleNiveau1PCRS17Type".valeur as role1,
  a_pcrs."RoleNiveau2PCRS17Type".valeur as role2
from a_pcrs."InitiativePCRS",
     a_pcrs."InitiativeActeurPCRS17Relation",
     a_pcrs."ActeurPCRS17Type",
     a_pcrs."RoleNiveau1PCRS17Type",
     a_pcrs."RoleNiveau2PCRS17Type"
where a_pcrs."InitiativePCRS"."idInitiative" = a_pcrs."InitiativeActeurPCRS17Relation".initiative
  and a_pcrs."InitiativeActeurPCRS17Relation".acteur = a_pcrs."ActeurPCRS17Type".code
  and a_pcrs."InitiativeActeurPCRS17Relation"."roleNiveau1" = a_pcrs."RoleNiveau1PCRS17Type".code
  and a_pcrs."InitiativeActeurPCRS17Relation"."roleNiveau2" = a_pcrs."RoleNiveau2PCRS17Type".code;


-- ---------------------------------
-- Remplissage : InitiativeCommunePCRS17Relation
-- ---------------------------------

truncate a_pcrs."InitiativeCommunePCRS17Relation";
INSERT INTO a_pcrs."InitiativeCommunePCRS17Relation"
select
  a_pcrs."Commune"."codeINSEE" as "commune",
  a_pcrs."InitiativePCRS"."idInitiative" as "initiative"
from a_pcrs."InitiativePCRS",
     a_pcrs."Commune"
where a_pcrs."InitiativePCRS".geometrie && a_pcrs."Commune".geometrie
  and st_intersects(a_pcrs."InitiativePCRS".geometrie, a_pcrs."Commune".geometrie);

-- Creation d'une vue InitiativeCommunePCRS17
DROP VIEW if exists a_pcrs."InitiativeCommunePCRS17";
CREATE VIEW a_pcrs."InitiativeCommunePCRS17" as
select
  a_pcrs."InitiativePCRS".description as initiative,
  a_pcrs."Commune".nom as commune
from a_pcrs."InitiativePCRS",
     a_pcrs."InitiativeCommunePCRS17Relation",
     a_pcrs."Commune"
where a_pcrs."InitiativePCRS"."idInitiative" = a_pcrs."InitiativeCommunePCRS17Relation".initiative
  and a_pcrs."InitiativeCommunePCRS17Relation".commune = a_pcrs."Commune"."codeINSEE";

-- ---------------------------------
-- Remplissage : EmpriseDisponibilitePCRS
-- ---------------------------------

truncate a_pcrs."EmpriseDisponibilitePCRS" cascade;
DROP SEQUENCE if exists a_pcrs."EmpriseDisponibilitePCRS_idEmpriseDisponibilite_seq" cascade;
CREATE SEQUENCE a_pcrs."EmpriseDisponibilitePCRS_idEmpriseDisponibilite_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
DROP TABLE if exists a_pcrs."EmpriseDisponibilitePCRS" cascade;
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
GRANT ALL ON TABLE a_pcrs."EmpriseDisponibilitePCRS" TO "frederic.garel";
GRANT ALL ON TABLE a_pcrs."EmpriseDisponibilitePCRS" TO pcrs;
GRANT ALL ON TABLE a_pcrs."EmpriseDisponibilitePCRS" TO wvs_role;

INSERT INTO a_pcrs."EmpriseDisponibilitePCRS"
(
"dateActualite",
"initiative",
"calendrier",
"geometrie")
select
  date '2017-10-11'::date as "dateActualite",
  a_pcrs."InitiativePCRS"."idInitiative" as "initiative",
  '03'::varchar(2) as calendrier,
  st_setsrid(st_multi(st_union(a_habillage.communes_emprises.shape)),3946) as geometrie
from
  a_habillage.communes_emprises,
  a_pcrs."InitiativePCRS"
where
  a_habillage.communes_emprises.st_layer in
    ('17028',
    '17190',
    '17200',
    '17274',
    '17291',
    '17300')
group by
  a_pcrs."InitiativePCRS"."idInitiative";



-- ---------------------------------
-- Remplissage : EmpriseDisponibiliteCommunePCRS17Relation
-- ---------------------------------

truncate a_pcrs."EmpriseDisponibiliteCommunePCRS17Relation";
INSERT INTO a_pcrs."EmpriseDisponibiliteCommunePCRS17Relation"
select
  a_pcrs."Commune"."codeINSEE" as "commune",
  a_pcrs."EmpriseDisponibilitePCRS"."idEmpriseDisponibilite" as "empriseDisponibilite"
from a_pcrs."EmpriseDisponibilitePCRS",
   a_pcrs."Commune"
where a_pcrs."EmpriseDisponibilitePCRS".geometrie && a_pcrs."Commune".geometrie
and st_intersects(a_pcrs."EmpriseDisponibilitePCRS".geometrie, a_pcrs."Commune".geometrie)
and st_intersection(a_pcrs."EmpriseDisponibilitePCRS".geometrie, a_pcrs."Commune".geometrie) = a_pcrs."Commune".geometrie;

-- Creation d'une vue EmpriseDisponibiliteCommunePCRS17
DROP VIEW if exists a_pcrs."EmpriseDisponibiliteCommunePCRS17";
CREATE VIEW a_pcrs."EmpriseDisponibiliteCommunePCRS17" as
select
  a_pcrs."InitiativePCRS".description as "initiative",
  a_pcrs."EmpriseDisponibilitePCRS"."dateActualite" as "dateActualite",
  a_pcrs."Commune".nom as commune
from
  a_pcrs."EmpriseDisponibiliteCommunePCRS17Relation"
    inner join a_pcrs."EmpriseDisponibilitePCRS"
      on a_pcrs."EmpriseDisponibiliteCommunePCRS17Relation"."empriseDisponibilite" = a_pcrs."EmpriseDisponibilitePCRS"."idEmpriseDisponibilite"
      inner join a_pcrs."InitiativePCRS"
        on a_pcrs."EmpriseDisponibilitePCRS"."initiative" = a_pcrs."InitiativePCRS"."idInitiative"
    inner join a_pcrs."Commune"
      on a_pcrs."EmpriseDisponibiliteCommunePCRS17Relation".commune = a_pcrs."Commune"."codeINSEE";


-- ---------------------------------
-- Remplissage : EmpriseEchangeCommunePCRS17Relation
-- ---------------------------------

truncate a_pcrs."EmpriseEchangeCommunePCRS17Relation";
INSERT INTO a_pcrs."EmpriseEchangeCommunePCRS17Relation"
select
  a_pcrs."Commune"."codeINSEE" as "commune",
  a_pcrs."EmpriseEchangePCRS"."idEmpriseEchange" as "empriseEchange"
from a_pcrs."EmpriseEchangePCRS",
   a_pcrs."Commune"
where a_pcrs."EmpriseEchangePCRS".geometrie && a_pcrs."Commune".geometrie
and st_intersects(a_pcrs."EmpriseEchangePCRS".geometrie, a_pcrs."Commune".geometrie);


-- Creation d'une vue EmpriseEchangeCommunePCRS17
DROP VIEW if exists a_pcrs."EmpriseEchangeCommunePCRS17";
CREATE VIEW a_pcrs."EmpriseEchangeCommunePCRS17" as
select
  --a_pcrs."InitiativePCRS".description as "initiative",
  a_pcrs."EmpriseEchangePCRS".complement as "echange",
  a_pcrs."EmpriseEchangePCRS"."datePublication" as "datePublication",
  a_pcrs."Commune".nom as commune
from
  a_pcrs."EmpriseEchangeCommunePCRS17Relation"
    inner join a_pcrs."EmpriseEchangePCRS"
      on a_pcrs."EmpriseEchangeCommunePCRS17Relation"."empriseEchange" = a_pcrs."EmpriseEchangePCRS"."idEmpriseEchange"
      --inner join a_pcrs."InitiativePCRS"
      --  on a_pcrs."EmpriseDisponibilitePCRS"."initiative" = a_pcrs."InitiativePCRS"."idInitiative"
    inner join a_pcrs."Commune"
      on a_pcrs."EmpriseEchangeCommunePCRS17Relation".commune = a_pcrs."Commune"."codeINSEE";
