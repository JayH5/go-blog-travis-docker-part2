#!/usr/bin/env bash
set -e

self="$(basename "$0")"
usage_error() {
	cat <<-EOU
		error: $1
		usage: $self <tag_in> <tag_out>...
		   ie: $self myimage myimage:latest myimage:0.3.2
	EOU
	exit 1
}

tag_in="$1"; shift || usage_error 'missing tag_in'
[ $# -gt 0 ] || usage_error 'missing tag_out'

for tag_out in "$@"; do docker tag "$tag_in" "$tag_out"; done
for tag_out in "$@"; do docker push "$tag_out"; done
