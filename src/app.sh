#!/usr/bin/env bash

node app.mjs

montage /tmp/identicon-tattoo/*.png \
  -background none \
  -tile ${COLS:-2}x \
  -geometry +0+0 \
  /tmp/identicon-tattoo/tattoo.png

montage /tmp/identicon-tattoo/tattoo.png \
  -background none \
  -border ${BORDER:-100} \
  -bordercolor none \
  -tile 1x \
  -geometry +0+0 \
  ./data/tattoo.png
