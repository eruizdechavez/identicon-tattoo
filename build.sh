#!/usr/bin/env bash
pwd=$PWD
cd src
docker build . -t identicon-tattoo:latest
cd $pwd
