#!/usr/bin/env sh

set -e

apt-get update
apt-get install pwgen

export GHOST_DB_ROOT_PASSWORD=$(pwgen -c 25 -n 1)
export NPM_DB_PASSWORD=$(pwgen -c 25 -n 1)
export NPM_DB_ROOT_PASSWORD=$(pwgen -c 25 -n 1)

echo "GHOST_DB_ROOT_PASSWORD: $GHOST_DB_ROOT_PASSWORD"
echo "NPM_DB_PASSWORD: $NPM_DB_PASSWORD"
echo "NPM_DB_ROOT_PASSWORD: $NPM_DB_ROOT_PASSWORD"