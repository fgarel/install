



-- ---------------------------------
-- Remplissage : EmpriseEchangePCRS
-- ---------------------------------

truncate a_pcrs."EmpriseEchangePCRS" cascade;
--DROP VIEW if exists a_pcrs."EmpriseEchangePCRS";
--DROP TABLE if exists a_pcrs."EmpriseEchangePCRS" cascade;

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

DROP VIEW if exists a_pcrs."Commune" cascade;
DROP TABLE if exists a_pcrs."Commune" cascade;

CREATE VIEW a_pcrs."Commune" as
select c_insee.cdalr_communes.code_insee as "codeINSEE",
       st_setsrid(st_multi(c_insee.cdalr_communes.shape),3946) as "geometrie",
       c_insee.cdalr_communes.nom_commun as "nom",
       c_ignf.bdtopo_commune.id as "reference"
from c_insee.cdalr_communes, c_ignf.bdtopo_commune
where c_insee.cdalr_communes.code_insee = c_ignf.bdtopo_commune.code_insee;


-- ---------------------------------
-- Remplissage : Initiative
-- ---------------------------------

truncate a_pcrs."InitiativePCRS" cascade;
--DROP VIEW if exists a_pcrs."InitiativePCRS";
--DROP TABLE if exists a_pcrs."InitiativePCRS" cascade;

--CREATE VIEW a_pcrs."InitiativePCRS" as
INSERT INTO a_pcrs."InitiativePCRS"
select
  nextval('a_pcrs."InitiativePCRS_idInitiative_seq"'::regclass) as "idInitiative",
  'PCRS_CDA_LR' as description,
  '05' as gestionnaire,
  st_setsrid(st_multi(st_union(c_insee.cdalr_communes.shape)),3946) as geometrie
from c_insee.cdalr_communes;


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
CREATE VIEW a_pcrs."InitiativeActeurPCRS17" as
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

--DROP VIEW if exists a_pcrs."EmpriseDisponibilitePCRS";
--DROP TABLE if exists a_pcrs."EmpriseDisponibilitePCRS" cascade;


truncate a_pcrs."EmpriseDisponibilitePCRS" cascade;
INSERT INTO a_pcrs."EmpriseDisponibilitePCRS"
(
"dateActualite",
"initiative",
"calendrier",
"geometrie")
select
  date '2017-10-30'::date as "dateActualite",
  a_pcrs."InitiativePCRS"."idInitiative" as "initiative",
  '03'::varchar(2) as calendrier,
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



---------------------
---------------------
---------------------
select layer from a_rtge.tmp_ligne
group by layer;

select * from a_pcrs."CategorieThematiquePCRSType";

-- ---------------------------------
-- Remplissage : HabillageLignesPCRS
-- ---------------------------------

-- pieces à decouper = SIGH_L_LIGNE ; EV_L_NATVEG ; FDP_L_HAIE ; ...
-- destination = HabillageLignesPCRS


DROP SEQUENCE if exists a_pcrs."HabillagePCRS_idHabillage_seq" cascade;
CREATE SEQUENCE a_pcrs."HabillagePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;


DROP TABLE if exists a_pcrs."HabillageLignesPCRS" cascade;
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

--DROP VIEW if exists a_pcrs."HabillageLignesPCRS" cascade;
--CREATE VIEW a_pcrs."HabillageLignesPCRS" as
INSERT INTO a_pcrs."HabillageLignesPCRS"
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" || '-' ||
  nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass) as "idObjet",
  CASE
    WHEN a_rtge."tmp_ligne".layer = 'TERRAIN_HAUT_TALUS' THEN '01'::varchar(2) -- Topographie
    WHEN a_rtge."tmp_ligne".layer = 'SIGH_L_LIGNE' THEN '03'::varchar(2) -- Voirie
    WHEN a_rtge."tmp_ligne".layer = 'SIGH _L_LIGNE' THEN '03'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'SIGH_L_CEDEZ' THEN '03'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'SIGNA_HORIZONTALE' THEN '03'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'MOB_L_OBSBARRF' THEN '03'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'EV_L_NATVEG' THEN '05'::varchar(2)  -- Cloture
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_HAIE' THEN '05'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_CLOT' THEN '05'::varchar(2)
    ELSE '00'::varchar(2) -- A déterminer
  END as "thematique",
  --st_asewkt(st_multi(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie))) as geometrie--,
  st_multi(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and (a_rtge."tmp_ligne".layer = 'TERRAIN_HAUT_TALUS'
    or a_rtge."tmp_ligne".layer = 'SIGH_L_LIGNE'
    or a_rtge."tmp_ligne".layer = 'SIGH _L_LIGNE'
    or a_rtge."tmp_ligne".layer = 'SIGH_L_CEDEZ'
    or a_rtge."tmp_ligne".layer = 'SIGNA_HORIZONTALE'
    or a_rtge."tmp_ligne".layer = 'MOB_L_OBSBARRF'
    or a_rtge."tmp_ligne".layer = 'EV_L_NATVEG'
    or a_rtge."tmp_ligne".layer = 'FDP_L_HAIE'
    or a_rtge."tmp_ligne".layer = 'FDP_L_CLOT')
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA_PCRS_EXPORT';



-- ---------------------------------
-- Remplissage : ObjetGeneriquePCRS
-- ---------------------------------

-- exemple concret d'emporte-piece pour initialiser le pcrs
-- emporte-piece = case
-- pieces à decouper = CDA_L_BATI ; CAD_L_PARCELLE ;  ;  ; ...
-- destination = ObjetGeneriquePCRS


--truncate a_pcrs."ObjetGeneriquePCRS" cascade;

DROP SEQUENCE if exists a_pcrs."ObjetVecteurPCRS_idObjet_seq" cascade;
CREATE SEQUENCE a_pcrs."ObjetVecteurPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;



DROP TABLE if exists a_pcrs."ObjetGeneriquePCRS" cascade;
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
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'GEOMETRY'::text OR geometrytype("geometrie") = 'MULTIPOLYGON'::text OR geometrytype("geometrie") = 'POLYGON'::text  OR geometrytype("geometrie") = 'MULTILINESTRING'::text OR geometrytype("geometrie") = 'LINESTRING'::text  OR geometrytype("geometrie") = 'MULTIPOINT'::text OR geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);

--DROP VIEW if exists a_pcrs."ObjetGeneriquePCRS" cascade;
--CREATE VIEW a_pcrs."ObjetGeneriquePCRS" as
INSERT INTO a_pcrs."ObjetGeneriquePCRS"
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_voirie."vo_emprise"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '999'::varchar(3) as "precisionAltimetrique",
  '040'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '03'::varchar(2) as thematique, -- Voirie
  --st_asewkt(st_intersection(st_setsrid(a_voirie."vo_emprise".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(a_voirie."vo_emprise".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from
     a_voirie."vo_emprise",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_voirie."vo_emprise".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_voirie."vo_emprise".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA_PCRS_EXPORT'
)
union
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  c_cadastre."bati"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '999'::varchar(3) as "precisionAltimetrique",
  '040'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '02'::varchar(2) as "thematique",-- Batiment
  --st_asewkt(st_intersection(st_setsrid(c_cadastre."bati".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(c_cadastre."bati".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from
     c_cadastre."bati",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(c_cadastre."bati".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(c_cadastre."bati".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA_PCRS_EXPORT'
)
union
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  c_cadastre."parcelle"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '999'::varchar(3) as "precisionAltimetrique",
  '040'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '05'::varchar(2) as "thematique",-- cloture
  --st_asewkt(st_intersection(st_setsrid(c_cadastre."parcelle".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(c_cadastre."parcelle".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from
     c_cadastre."parcelle",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(c_cadastre."parcelle".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(c_cadastre."parcelle".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA_PCRS_EXPORT'
)
union
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  CASE
    WHEN a_rtge."tmp_ligne".layer = 'DIVERS_OUVRAGE' THEN '999'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_BATI' THEN '999'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_BATI' THEN '040'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_PARCELLE' THEN '999'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_PARCELLE' THEN '040'::varchar(3)
    ELSE '005'::varchar(3)
  END as "precisionAltimetrique",
  CASE
    WHEN a_rtge."tmp_ligne".layer = 'DIVERS_OUVRAGE' THEN '040'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_BATI' THEN '040'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_BATI' THEN '010'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_PARCELLE' THEN '040'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_PARCELLE' THEN '010'::varchar(3)
    ELSE '005'::varchar(3)
  END as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  CASE
    WHEN a_rtge."tmp_ligne".layer = 'DIVERS_OUVRAGE' THEN '02'::varchar(2) -- A Determiner
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_BATI' THEN '02'::varchar(2) -- Batiment
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_BATI' THEN '02'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_PARCELLE' THEN '05'::varchar(2) -- Cloture
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_PARCELLE' THEN '05'::varchar(2)
    ELSE '00'::varchar(2) -- A déterminer
  END as "thematique",
  --a_rtge."tmp_ligne".layer,
  --st_asewkt(st_setsrid(a_rtge."tmp_ligne".shape,3946)) as geometrie
  --st_asewkt(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from
     a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and (a_rtge."tmp_ligne".layer = 'DIVERS_OUVRAGE'
    or a_rtge."tmp_ligne".layer = 'CAD_L_BATI'
    or a_rtge."tmp_ligne".layer = 'FDP_L_BATI'
    or a_rtge."tmp_ligne".layer = 'CAD_L_PARCELLE'
    or a_rtge."tmp_ligne".layer = 'FDP_L_PARCELLE')
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA_PCRS_EXPORT'
  --order by a_rtge."tmp_ligne".layer
);




-- ---------------------------------
-- Remplissage : LimiteVoiriePCRS
-- ---------------------------------

-- exemple concret d'emporte-piece pour initialiser le pcrs
-- emporte-piece = case
-- pieces à decouper = VOIE_L_BORDREV ; VOIE_L_BORDURE ; VOIE_L_CHANREV ; ...
-- destination = LimiteVoiriePCRS

DROP SEQUENCE if exists a_pcrs."ObjetVecteurPCRS_idObjet_seq" cascade;
CREATE SEQUENCE a_pcrs."ObjetVecteurPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

DROP TABLE if exists a_pcrs."LimiteVoiriePCRS" cascade;
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

--DROP VIEW if exists a_pcrs."LimiteVoiriePCRS" cascade;
--CREATE VIEW a_pcrs."LimiteVoiriePCRS" as
INSERT INTO a_pcrs."LimiteVoiriePCRS"
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '005'::varchar(3) as "precisionAltimetrique",
  '005'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '03'::varchar(2) as thematique,
  --st_asewkt(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and (a_rtge."tmp_ligne".layer = 'VOIE_L_BORDREV'
    or a_rtge."tmp_ligne".layer = 'VOIE_L_BORDURE'
    or a_rtge."tmp_ligne".layer = 'VOIE_L_CHANREV'
    or a_rtge."tmp_ligne".layer = 'VOIRIE_LIMITE_REVETEMENT'
    or a_rtge."tmp_ligne".layer = 'VORIE_BORDURE'
    or a_rtge."tmp_ligne".layer = 'VORIE_CC1')
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA_PCRS_EXPORT';


-- ---------------------------------
-- Remplissage : FacadePCRS
-- ---------------------------------

-- pieces à decouper = FDP_L_BATI
-- destination = FacadePCRS

DROP SEQUENCE if exists a_pcrs."ObjetVecteurPCRS_idObjet_seq" cascade;
CREATE SEQUENCE a_pcrs."ObjetVecteurPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

--DROP TABLE if exists a_pcrs."FacadePCRS" cascade;
DROP TABLE if exists a_pcrs."FacadePCRS" cascade;
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


--DROP VIEW if exists a_pcrs."FacadePCRS" cascade;
--CREATE VIEW a_pcrs."FacadePCRS" as
INSERT INTO a_pcrs."FacadePCRS"
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '040'::varchar(3) as "precisionAltimetrique",
  '010'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '02'::varchar(2) as thematique,
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and ST_NumGeometries(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) is null
  and (a_rtge."tmp_ligne".layer = 'FDP_L_BATI'
    --or a_rtge."tmp_ligne".layer = 'FDP_L_MURPLEIN'
    )
  and st_length(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) >= 0.21
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA_PCRS_EXPORT'
)
union
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '040'::varchar(3) as "precisionAltimetrique",
  '010'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '02'::varchar(2) as thematique,
  --st_asewkt(ST_GeometryN(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie), n)) as text_geometrie,
  ST_GeometryN(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie), n) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
  CROSS JOIN generate_series(1,100) n
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and n <= ST_NumGeometries(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie))
  and (a_rtge."tmp_ligne".layer = 'FDP_L_BATI'
    --or a_rtge."tmp_ligne".layer = 'FDP_L_MURPLEIN'
    )
  and st_length(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) >= 0.21
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA_PCRS_EXPORT'
);


-- ---------------------------------
-- Remplissage : SeuilPCRS
-- ---------------------------------

-- pieces à decouper = FDP_L_MURPLEIN
-- destination = SeuilPCRS

DROP SEQUENCE if exists a_pcrs."ObjetVecteurPCRS_idObjet_seq" cascade;
CREATE SEQUENCE a_pcrs."ObjetVecteurPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

--truncate a_pcrs."SeuilPCRS";

DROP TABLE if exists a_pcrs."SeuilPCRS" cascade;
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

--DROP VIEW if exists a_pcrs."SeuilPCRS" cascade;
--CREATE VIEW a_pcrs."SeuilPCRS" as
INSERT INTO a_pcrs."SeuilPCRS"
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '005'::varchar(3) as "precisionAltimetrique",
  '005'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '02'::varchar(2) as thematique,
  --st_asewkt(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie,
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and (a_rtge."tmp_ligne".layer = 'FDP_L_MURPLEIN')
  and st_length(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) < 0.21
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA_PCRS_EXPORT';






-- ---------------------------------
-- Remplissage : MurPCRS
-- ---------------------------------

-- pieces à decouper = FDP_L_MURPLEIN ; FDP_L_MURBAHUT
-- destination = MurPCRS


DROP SEQUENCE if exists a_pcrs."ObjetVecteurPCRS_idObjet_seq" cascade;
CREATE SEQUENCE a_pcrs."ObjetVecteurPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
--truncate a_pcrs."MurPCRS";

DROP TABLE if exists a_pcrs."MurPCRS" cascade;
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

--DROP VIEW if exists a_pcrs."MurPCRS" cascade;
--CREATE VIEW a_pcrs."MurPCRS" as
INSERT INTO a_pcrs."MurPCRS"
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '005'::varchar(3) as "precisionAltimetrique",
  '005'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '05'::varchar(2) as thematique,
  --st_asewkt(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie,
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie,
  CASE WHEN a_rtge."tmp_ligne".layer = 'FDP_L_MURPLEIN' THEN '01'::varchar(2)
       WHEN a_rtge."tmp_ligne".layer = 'FDP_L_MURBAHUT' THEN '03'::varchar(2)
       ELSE '01'::varchar(2)
  END as "typeMur"
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and ST_NumGeometries(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) is null
  and (a_rtge."tmp_ligne".layer = 'FDP_L_MURPLEIN'
    or a_rtge."tmp_ligne".layer = 'FDP_L_MURBAHUT'
    )
  and st_length(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) >= 0.21
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA_PCRS_EXPORT'
)
union
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '005'::varchar(3) as "precisionAltimetrique",
  '005'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '05'::varchar(2) as thematique,
  --st_asewkt(ST_GeometryN(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie), n)) as text_geometrie,
  ST_GeometryN(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie), n) as geometrie,
  CASE WHEN a_rtge."tmp_ligne".layer = 'FDP_L_MURPLEIN' THEN '01'::varchar(2)
       WHEN a_rtge."tmp_ligne".layer = 'FDP_L_MURBAHUT' THEN '03'::varchar(2)
       ELSE '01'::varchar(2)
  END as "typeMur"
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
  CROSS JOIN generate_series(1,100) n
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and n <= ST_NumGeometries(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie))
  and (a_rtge."tmp_ligne".layer = 'FDP_L_MURPLEIN'
    or a_rtge."tmp_ligne".layer = 'FDP_L_MURBAHUT'
    )
  and st_length(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) >= 0.21
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA_PCRS_EXPORT'
);
