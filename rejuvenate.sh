#!/bin/bash

apt-get update

apt-get upgrade

apt-get autoremove

rm -rf /tmp/*

rm -rf /var/tmp/*

apt-get clean -y 

rm -rf ~/.cache/thumbnails
