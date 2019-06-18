#!/bin/sh

# https://wiki.openstreetmap.org/wiki/ECW#Howto_install_gdal_with_ECW_support
# https://adamogrady.id.au/ops/ecw-gdal-ubuntu/

# wget http://mirror.ovh.net/gentoo-distfiles/distfiles/libecwj2-3.3-2006-09-06.zip
wget https://s3-ap-southeast-2.amazonaws.com/adamogradybackups/libecwj2-3.3-2006-09-06.zip
unzip libecwj2-3.3-2006-09-06.zip
wget http://trac.osgeo.org/gdal/raw-attachment/ticket/3162/libecwj2-3.3-msvc90-fixes.patch
patch -p0 < libecwj2-3.3-msvc90-fixes.patch
wget http://osgeo-org.1560.x6.nabble.com/attachment/5001530/0/libecwj2-3.3-wcharfix.patch
wget http://trac.osgeo.org/gdal/raw-attachment/ticket/3366/libecwj2-3.3-NCSPhysicalMemorySize-Linux.patch
cd libecwj2-3.3/
patch -p0 < ../libecwj2-3.3-NCSPhysicalMemorySize-Linux.patch
patch -p1 < ../libecwj2-3.3-wcharfix.patch
