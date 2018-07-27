
        INSERT INTO "init"."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-21-A' as "complement",
              date '2018-07-27' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379000 5225500, 1379000 5226000, 1379700 5226000, 1379700 5225500, 1379000 5225500))', 3946)
                  ) as geometrie;