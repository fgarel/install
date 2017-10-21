#!/usr/bin/env python3
# coding=utf8
# the above tag defines encoding for this document and is for Python 2.x compatibility

u"""
Export et import des données avec fiona.
"""

import re
import fiona


#DBHOST=VLR6180Y
#DBHOST=localhost
DBHOST=172.17.150.6
DBPORT=5432
#DBUSER=fred
DBUSER=frederic.garel
#DBPASS=fred
#DBPASS=fred
#DBNAME=pcrs
DBNAME=sig
#DBSCHEMA=private
DBSCHEMA=a_pcrs


# Register format drivers with a context manager

with fiona.drivers():

    # Open a file for reading. We'll call this the "source."

    with fiona.open('tests/data/coutwildrnp.shp') as source:

        # The file we'll write to, the "sink", must be initialized
        # with a coordinate system, a format driver name, and
        # a record schema.  We can get initial values from the open
        # collection's ``meta`` property and then modify them as
        # desired.

        meta = source.meta
        meta['schema']['geometry'] = 'Point'

        # Open an output file, using the same format driver and
        # coordinate reference system as the source. The ``meta``
        # mapping fills in the keyword parameters of fiona.open().

        with fiona.open('test_write.shp', 'w', **meta) as sink:

            # Process only the records intersecting a box.
            for f in source.filter(bbox=(-107.0, 37.0, -105.0, 39.0)):

                # Get a point on the boundary of the record's
                # geometry.

                f['geometry'] = {
                    'type': 'Point',
                    'coordinates': f['geometry']['coordinates'][0][0]}

                # Write the record out.

                sink.write(f)

    # The sink's contents are flushed to disk and the file is
    # closed when its ``with`` block ends. This effectively
    # executes ``sink.flush(); sink.close()``.

# At the end of the ``with fiona.drivers()`` block, context
# manager exits and all drivers are de-registered.
