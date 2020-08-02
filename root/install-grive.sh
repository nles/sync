#!/bin/bash
sudo apt-get install -y git cmake build-essential libgcrypt20-dev libyajl-dev \
     libboost-all-dev libcurl4-openssl-dev libexpat1-dev libcppunit-dev binutils-dev \
     debhelper zlib1g-dev dpkg-dev pkg-config

git clone https://github.com/vitalif/grive2.git
dpkg-buildpackage -j4 --no-sign
