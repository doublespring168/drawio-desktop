#!/usr/bin/env bash



source ~/cg/sh/common_util.sh

cd ../

file="$(dirname $PWD)/electron-builder-linux.json"

logh "packaging, config file [$file]..."

electron-builder --config $file



logh "packaged successfully，copying files to download directory，files："

mv dist ~/Downloads/

ll -h dist

cd ~/Downloads/

open




