
        INSERT INTO a_pcrs."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              'CDA-46-00197-01045-21-A-18' as "complement",
              date '2017-12-28' as "datePublication",
              '05' as "gestionnaire",
              '03' as "type",
              st_multi(
                      st_geomfromtext('POLYGON((1379280 5225600, 1379280 5225700, 1379420 5225700, 1379420 5225600, 1379280 5225600))', 3946)
                  ) as geometrie;