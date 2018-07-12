
        INSERT INTO "a_pcrs"."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-11-C-19' as "complement",
              date '2017-12-29' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379420 5227100, 1379420 5227200, 1379560 5227200, 1379560 5227100, 1379420 5227100))', 3946)
                  ) as geometrie;