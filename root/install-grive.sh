#!/bin/bash
set -e

sudo apt-get update
sudo apt-get install -y git cmake build-essential libgcrypt20-dev libyajl-dev \
     libboost-all-dev libcurl4-openssl-dev libexpat1-dev libcppunit-dev binutils-dev \
     debhelper zlib1g-dev dpkg-dev pkg-config

git clone https://github.com/vitalif/grive2.git

cd grive2

mkdir build
cd build
cmake ..
make -j4
sudo make install

sudo mv /usr/bin/grive /usr/bin/grive2

sudo rm -rf grive2
