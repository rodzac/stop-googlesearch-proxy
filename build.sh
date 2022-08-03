#!/bin/bash

VERSION=$1

mkdir -p dist
zip dist/stop-googlesearch-proxy-$VERSION.zip manifest.json core.js icons/128-logo.png icons/64-logo.png icons/32-logo.png