#!/bin/bash

if [ ! -f "/keymap/keymap.c" ]; then
  echo "No keymap.c found!"
  exit 1
fi

cd /firmware/src

make

cp -f firmware.hex /keymap
cp -f firmware.epp /keymap
