#!/bin/bash

sed -i 's/\(__atomic_compare_exchange\)/\1_db/' src/dbinc/atomic.h


pushd build_unix
../dist/configure --prefix=/usr/local \
                  --enable-compat185  \
                  --enable-dbm        \
                  --disable-static    \
                  --enable-cxx
make
make install

popd
