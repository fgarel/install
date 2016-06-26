#!/usr/bin/env python
"""
Read and write graphs.
"""
# Author: Aric Hagberg (hagberg@lanl.gov)

#    Copyright (C) 2004-2016 by
#    Aric Hagberg <hagberg@lanl.gov>
#    Dan Schult <dschult@colgate.edu>
#    Pieter Swart <swart@lanl.gov>
#    All rights reserved.
#    BSD license.

from networkx import *
import sys


#GAG=graph_atlas_g()
#G123=GAG[123]
G=grid_2d_graph(2, 2)  # 5x5 grid

G=complete_graph(4)
try: # Python 2.6+
    write_adjlist(G,sys.stdout) # write adjacency list to screen
except TypeError: # Python 3.x
    write_adjlist(G,sys.stdout.buffer) # write adjacency list to screen
# write edgelist to grid.edgelist
write_edgelist(G,path="grid.edgelist",delimiter=":")
# read edgelist from grid.edgelist
H=read_edgelist(path="grid.edgelist",delimiter=":")
write_adjlist(H,sys.stdout.buffer) # write adjancy list to screen
write_edgelist(H,sys.stdout.buffer) # write edge list to screen
