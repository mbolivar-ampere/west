#!/bin/bash

# This is the top-level test script that runs in the host.

HERE=$(dirname "$0")

[ -d "$HERE/outdir" ] && rm -r "$HERE/outdir"

set -e
mkdir "$HERE/outdir"
export MY_UID=$(id -u)
export MY_GID=$(id -g)
export WEST_IN_HOST=$(realpath "$HERE/..")
docker-compose up --force-recreate --build
