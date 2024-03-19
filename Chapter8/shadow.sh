#!/bin/bash

sed -i 's/groups$(EXEEXT) //' src/Makefile.in
find man -name Makefile.in -exec sed -i 's/groups\.1 / /'   {} \;
find man -name Makefile.in -exec sed -i 's/getspnam\.3 / /' {} \;
find man -name Makefile.in -exec sed -i 's/passwd\.5 / /'   {} \;

sed -e 's:#ENCRYPT_METHOD DES:ENCRYPT_METHOD YESCRYPT:' \
    -e 's:/var/spool/mail:/var/mail:'                   \
    -e '/PATH=/{s@/sbin:@@;s@/bin:@@}'                  \
    -i etc/login.defs


 touch /usr/bin/passwd
 ./configure --sysconfdir=/etc   \
             --disable-static    \
             --with-{b,yes}crypt \
             --with-group-name-max-length=32

 make
 make exec_prefix=/usr install

 pwconv
 grpconv

 mkdir -p /etc/default
 useradd -D --gid 999
