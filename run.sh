#!/usr/bin/env bash
docker run --rm -it \
  -e COLS=${COLS:-2} \
  -e BORDER=${BORDER:-100} \
  -v $PWD/data:/app/data \
  identicon-tattoo $@
