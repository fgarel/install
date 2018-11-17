
        INSERT INTO "init"."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-21-C-09' as "complement",
              date '2018-08-17' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379420 5225300, 1379420 5225400, 1379560 5225400, 1379560 5225300, 1379420 5225300))', 3946)
                  ) as geometrie;