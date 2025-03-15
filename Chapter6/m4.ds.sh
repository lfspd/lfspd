#!/bin/bash

# Exit on error
set -e

# Configure the build with custom CFLAGS
echo "Configuring the build..."
CFLAGS=-Wno-error ./configure \
  --prefix=/usr \
  --host=$LFS_TGT \
  --build=$(build-aux/config.guess)

# Build the software
echo "Building the software..."
make

# Install the software
echo "Installing the software..."
make DESTDIR=$LFS install

echo "Installation complete!"
