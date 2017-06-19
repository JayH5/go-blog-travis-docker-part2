#!/usr/bin/env bash
set -e

self="$(basename "$0")"
usage() {
  cat <<-EOU
usage: $self TAG_IN TAG_OUT...
   ie: $self myimage myimage:latest myimage:0.3.2
EOU
}
eusage() {
  echo >&2 "error: $1"
  usage >&2
  exit 1
}

TAG_IN="$1"; shift || eusage 'missing TAG_IN'
[ $# -gt 0 ] || eusage 'missing TAG_OUT'

for tag in "$@"; do docker tag "$TAG_IN" "$tag"; done
for tag in "$@"; do docker push "$tag"; done
