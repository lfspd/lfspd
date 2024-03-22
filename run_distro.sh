#!/bin/bash

#set -x 

# save lfspd dir location == this script location
cd "$(dirname "$0")"
lfspd="$(pwd)"

# chroot dir default location is ~/tmp/lfspd
export chroot="$HOME/tmp/lfspd"

# one can specify it's own location
if [ $# -eq 1 ]
then
  chroot=$1
fi

if [ ! -d "$chroot" ]; then
  echo "$chroot doesn't exist - create it!"
  mkdir -p "$chroot"
fi

if [ ! -d "$chroot/sources" ]; then
  tar -xf Distros/lfspd.10.tar -C $chroot
fi

sudo ./preparechroot.sh $chroot
sudo ./chroot.sh $chroot




