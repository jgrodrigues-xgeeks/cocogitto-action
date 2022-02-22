#!/bin/sh

CUR_DIR=$(pwd)
VERSION=4.1.0
TAR="cocogitto-$VERSION-x86_64-unknown-linux-musl.tar.gz"
BIN_DIR="$INSTALL_DIR"

mkdir -p "$BIN_DIR"
cd "$BIN_DIR" || exit
curl -OL https://github.com/cocogitto/cocogitto/releases/download/"$VERSION"/"$TAR"
tar xfz $TAR
cd "$CUR_DIR" || exit