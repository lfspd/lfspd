#!/bin/bash

# Creares file lfspd.10.tar.gz with distribution image in $LFS/dist directory

# 1. Enter "chroot jail" by sudo ./chroot.sh $LFS
# 2. Run /sources/create_distros.sh


/sources/strip-all.sh

file=lfspd.10.tar.gz

cp /sources/.bash* /sources/setenv.sh /root/

mkdir -p /Distro
cd /Distro
tar -czf ${file} {/bin,/boot,/etc,/home,/lib,/lib64,/media,/opt,/root,/run,/sbin,/sources,/srv,/tmp,/usr,/var}
