
        INSERT INTO "init"."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-16-D-16' as "complement",
              date '2019-08-09' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379700 5226100, 1379700 5226200, 1379840 5226200, 1379840 5226100, 1379700 5226100))', 3946)
                  ) as geometrie;