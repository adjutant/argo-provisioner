#!/bin/bash

PKG_INDEX_DIR="/etc/pacpurge/pkg.index/"

echo "Checking for packages that was not installed"
pacman -Q $(cat ${PKG_INDEX_DIR}/* | grep -v "#") | grep "error:"

echo "Filtering orphaned packages"
pacman -D --asdeps $(pacman -Qeq) >> /dev/null
pacman -D --asexplicit $(cat ${PKG_INDEX_DIR}/* | grep -v "#") >> /dev/null

echo "List of orphaned packages..."
pacman -Qdttq

exit 0
