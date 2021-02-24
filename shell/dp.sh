#!/usr/bin/env bash




source ~/cg/sh/common_util.sh

cd ../

file="$PWD/electron-builder-linux.json"

logh "packaging, config file [$file]..."

electron-builder --config $file

logh "packaged successfully，copying files to download directory，files："

cp -r dist ~/Downloads/

rm -rf dist

cd ~/Downloads/dist

ls -h ./

nohup dde-file-manager . >/dev/null 2>&1 &





