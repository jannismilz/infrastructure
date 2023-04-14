#!/usr/bin/env sh

set -e

apt-get update
apt-get install pwgen openssl

export GHOST_DB_ROOT_PASSWORD=$(pwgen -c 25 -n 1)
export NPM_DB_PASSWORD=$(pwgen -c 25 -n 1)
export NPM_DB_ROOT_PASSWORD=$(pwgen -c 25 -n 1)
export PLAUSIBLE_DB_PASSWORD=$(pwgen -c 25 -n 1)
export PLAUSIBLE_SECRET_KEY=${openssl rand -base64 64 | tr -d '\n'}

echo "GHOST_DB_ROOT_PASSWORD: $GHOST_DB_ROOT_PASSWORD"
echo "NPM_DB_PASSWORD: $NPM_DB_PASSWORD"
echo "NPM_DB_ROOT_PASSWORD: $NPM_DB_ROOT_PASSWORD"
echo "PLAUSIBLE_DB_PASSWORD: $PLAUSIBLE_DB_PASSWORD"
echo "PLAUSIBLE_SECRET_KEY: $PLAUSIBLE_SECRET_KEY"