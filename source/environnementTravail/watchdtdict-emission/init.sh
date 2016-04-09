#!/bin/sh

links2 www.google.com
sudo mount -a

sudo service watchdtdict-emission stop
sudo service watchdtdict-emission status
sudo service watchdtdict-emission start
sudo service watchdtdict-emission status
#/home/fred/bin/watchdtdict_emission.py
