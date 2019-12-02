#!/usr/bin/env bash

resolve_link() {
  $(type -p greadlink readlink | head -1) "$1"
}

abs_dirname() {
  local cwd="$(pwd)"
  local path="$1"

  while [ -n "$path" ]; do
    cd "${path%/*}"
    local name="${path##*/}"
    path="$(resolve_link "$name" || true)"
  done

  pwd
  cd "$cwd"
}

GOENV_GOGET_REHASH_ROOT="$(abs_dirname "$(abs_dirname "${BASH_SOURCE[0]}")/../../../..")"

if [ -x "${GOENV_GOGET_REHASH_ROOT}/libexec/${GOENV_COMMAND##*/}" ]; then
  GOENV_COMMAND_PATH="${GOENV_GOGET_REHASH_ROOT}/libexec/${GOENV_COMMAND##*/}"
  GOENV_BIN_PATH="${GOENV_GOGET_REHASH_ROOT}/libexec"
fi