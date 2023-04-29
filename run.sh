#!/usr/bin/env bash
docker run --rm -it -v $PWD/out:/app/out -v $PWD/data.mjs:/app/data.mjs identicon-tattoo $@
