
        INSERT INTO "init"."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-15-C-14' as "complement",
              date '2018-07-30' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1385020 5227200, 1385020 5227300, 1385160 5227300, 1385160 5227200, 1385020 5227200))', 3946)
                  ) as geometrie;