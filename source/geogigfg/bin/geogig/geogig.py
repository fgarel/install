#!/usr/bin/env python
# -*- coding: utf-8 -*-

# script pour la creation d'une base de données :

# installation de geogig-py
# https://github.com/boundlessgeo/geogig-py
# sudo -H pip3 install geogig-py

import geogigpy
from geogigpy.cliconnector import CLIConnector


class Geogig(object):

    u""" Cette classe correspond à un depot """

    def __init__(self):
        u""" Fonction lancée au moment de l'instanciation. """
        print("__init__")
        self.foo = 'bar'
        self.repo = '../../data/repo'
        self.username = 'Fréderic Garel'
        self.usermail = 'frederic.garel@ville-larochelle.fr'

    def pullAndExport(self):
        u""" """
        pass

    def editAddCommitPullPushAndExport(self):
        u""" """
        pass

    def depotCentralExport(self):
        u""" """
        pass

    def createRepo(self):
        # Create repo
        repo = geogigpy.Repository(self.repo, connector=CLIConnector , init=True)

        # Configure
        repo.config(geogigpy.USER_NAME, self.username)
        repo.config(geogig.USER_EMAIL, self.usermail)

    # # Add some data and create a snapshot
    # repo.importshp('myshapefile.shp')
    # repo.addandcommit('first import')
    #
    # # Create a branch to work on it
    # repo.createbranch(repo.head, "mybranch", checkout = True)
    #
    # # Take a feature and modify its geometry
    # feature = repo.feature(geogig.HEAD, 'parks/1')
    # geom = feature.geom
    # attributes = feature.attributes
    # newgeom = geom.buffer(5.0)
    # attributes[feature.geomfieldname] = newgeom
    #
    # # insert the modified geometry and create a new snapshot with the changes
    # repo.insertfeature(feature.path, attributes)
    # repo.addandcommit("modified parks/1 (buffer computed)")
    #
    # # Bring changes to master branch
    # # [...] There might be changes in the master branch as well
    #
    # repo.checkout(geogig.MASTER)
    # try:
    #         repo.merge("mybranch")
    #         print "No merge conflicts"
    # except GeoGigConflictException, e:
    #         print "There are merge conflicts"



def main():
    u""" Fonction principale. """
    print("main")
    monGeogig = Geogig()
    print("{}".format(monGeogig.foo))
    print(geogigpy)
    monGeogig.createRepo()
    print(geogigpy)


if __name__ == '__main__':
    main()
