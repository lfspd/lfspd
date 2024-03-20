#! /usr/bash

./configure --prefix=/usr --enable-shared --enable-optimizations
# --without-ensurepip
make 
make install

ln -sv /bin/python3 /bin/python
ln -sv /bin/pip3 /bin/pip
