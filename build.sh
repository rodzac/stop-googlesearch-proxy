#!/bin/bash

VERSION=$1

mkdir build
cp -r core.js icons build

mkdir -p dist/firefox
cp -r firefox/manifest.json build
(cd build && zip -r - .) > dist/firefox/stop-googlesearch-proxy-$VERSION.zip


mkdir -p dist/chrome
cp -r chrome/manifest.json build
(cd build && zip -r - .) > dist/chrome/stop-googlesearch-proxy-$VERSION.zip