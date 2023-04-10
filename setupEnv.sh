#!/usr/bin/env sh

set -e

apt-get update
apt-get install pwgen

export GHOST_DB_ROOT_PASSWORD=$(pwgen -c 25 -n 1)
export NPM_DB_PASSWORD=$(pwgen -c 25 -n 1)
export NPM_DB_ROOT_PASSWORD=$(pwgen -c 25 -n 1)