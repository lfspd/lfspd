#!/bin/bash

#MAKEFLAGS=-j$(nproc)

sed -i 's:\\\${:\\\$\\{:' intltool-update.in

./configure --prefix=/usr

make && make install
