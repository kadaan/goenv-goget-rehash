#!/bin/sh
# Usage: PREFIX=/usr/local ./install.sh
#
# Installs goenv-goget-rehash under $PREFIX.

set -e

cd "$(dirname "$0")"

if [ -z "${PREFIX}" ]; then
  PREFIX="/usr/local"
fi

ETC_PATH="${PREFIX}/etc/goenv.d"
LIBEXEC_PATH="${PREFIX}/libexec"

mkdir -p "$ETC_PATH"
mkdir -p "$LIBEXEC_PATH"

cp -RPp etc/goenv.d/* "$ETC_PATH"
install -p libexec/* "$LIBEXEC_PATH"