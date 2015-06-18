#!/bin/sh

# Licensed by The Unlicense
# Vidur Gupta
# 18 June 2015


export build=~/devtools
mkdir -p $build

cd $build
curl -OL http://ftpmirror.gnu.org/autoconf/autoconf-latest.tar.gz
tar xzf autoconf-latest.tar.gz
cd autoconf-latest
./configure --prefix=$build/autotools-bin
make
make install
export PATH=$PATH:$build/autotools-bin/bin

cd $build
curl -OL http://ftpmirror.gnu.org/automake/automake-1.15.tar.gz
tar xzf automake-1.15.tar.gz
cd automake-1.15
./configure --prefix=$build/autotools-bin
make
make install

cd $build
curl -OL http://ftpmirror.gnu.org/libtool/libtool-2.4.tar.gz
tar xzf libtool-2.4.tar.gz
cd libtool-2.4
./configure --prefix=$build/autotools-bin
make
make install
