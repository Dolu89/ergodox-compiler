#!/bin/bash

if [ ! -f "/keymap/keymap.c" ]; then
  echo "No keymap.c found!"
  exit 1
fi

cp /keymap/keymap.c /firmware/src/keyboard/ergodox/layout/keymap.c
cp /keymap/keymap.h /firmware/src/keyboard/ergodox/layout/keymap.h

cd /firmware/src

make

rm /firmware/src/keyboard/ergodox/layout/keymap.c
rm /firmware/src/keyboard/ergodox/layout/keymap.h

cp -f firmware.hex /keymap
cp -f firmware.eep /keymap
