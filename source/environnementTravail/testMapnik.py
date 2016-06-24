#!/usr/bin/env python

import mapnik

# mapnik avec xml
# ===============
print "1. lecture d'un fichier xml"
m = mapnik.Map(256,256)
mapnik.load_map(m, "testMapnik.xml")
m.zoom_all()
mapnik.render_to_file(m, "testMapnik.png")
print "rendered image to 'testMapnik.png'"

# mapnik avec style dans python
# =============================
# https://github.com/mapnik/mapnik/wiki/GettingStartedInPython
#
print "2. instructions en python"
# Create a Map
m = mapnik.Map(600,300) # create a map with a given width and height in pixels
# note: m.srs will default to '+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs'
# the 'map.srs' is the target projection of the map and can be whatever you wish
m.background = mapnik.Color('steelblue') # set background colour to 'steelblue'.

# Create a Style
s = mapnik.Style() # style object to hold rules
r = mapnik.Rule() # rule object to hold symbolizers
# to fill a polygon we create a PolygonSymbolizer
#polygon_symbolizer = mapnik.PolygonSymbolizer(mapnik.Color('#f2eff9'))
#print(mapnik.Color('#f2eff9'))
#print(mapnik.Color('steelblue'))
#polygon_symbolizer = mapnik.PolygonSymbolizer(mapnik.Color('steelblue'))
polygon_symbolizer = mapnik.PolygonSymbolizer()
#polygon_symbolizer.fill = mapnik.Color(250, 190, 183);
polygon_symbolizer.fill = mapnik.Color('#f2eff9');
r.symbols.append(polygon_symbolizer) # add the symbolizer to the rule object
# to add outlines to a polygon we create a LineSymbolizer
#line_symbolizer = mapnik.LineSymbolizer(mapnik.Color('rgb(50%,50%,50%)'),0.1)
line_symbolizer = mapnik.LineSymbolizer()
line_symbolizer.stroke = mapnik.Color('rgb(50%,50%,50%)')
#line_symbolizer.stroke-width = "1.0"
r.symbols.append(line_symbolizer) # add the symbolizer to the rule object
s.rules.append(r) # now add the rule to the style and we're done
m.append_style('My Style',s) # Styles are given names only as they are applied to the map

# Create a Datasource
ds = mapnik.Shapefile(file='ne_110m_admin_0_countries.shp')

# Create a Layer
layer = mapnik.Layer('world') # new layer called 'world' (we could name it anything)
# note: layer.srs will default to '+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs'
layer.datasource = ds
layer.styles.append('My Style')

# Prepare the Map for rendering
m.layers.append(layer)
m.zoom_all()

# Write the data to a png image called world.png in the current directory
mapnik.render_to_file(m,'testMapnik2.png', 'png')
print "rendered image to 'testMapnik2.png'"
print ""
print "display testMapnik.png && display testMapnik2.png &"
