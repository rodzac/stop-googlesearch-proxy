#!/bin/bash

VERSION=$1

if [ -z "$VERSION" ]; then
    exit 1
fi

mkdir build
cp -r core.js icons build

mkdir -p dist/firefox
cp firefox/manifest.json build
(cd build && zip -r - .) > dist/firefox/stop-googlesearch-proxy-$VERSION.zip


mkdir -p dist/chrome
cp chrome/manifest.json build
(cd build && zip -r - .) > dist/chrome/stop-googlesearch-proxy-$VERSION.zip