#!/bin/bash

# The yaml package contains a C library for parsing                                                                                                     2 # and emitting YAML (YAML Ain't Markup Language) code.

PKG="libyaml"
PKG_VERSION="0.2"
PKG_BUILD="5"
PKG_FULL=${PKG}-${PKG_VERSION}.${PKG_BUILD}
PKG_FILE="${PKG_FULL}.tar.gz"
URL="https://github.com/yaml/libyaml/releases/download/${PKG_VERSION}.${PKG_BUILD}/${PKG_FILE}"
MD5="bb15429d8fb787e7d3f1c83ae129a999"

./configure --prefix=/usr/local --disable-static
make
make install

