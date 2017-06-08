#!/bin/bash -e

. /opt/bitnami/base/functions
. /opt/bitnami/base/helpers

PACKAGE=nginx-1.12.0-1-linux-x64-debian-8

tar xzf /$PACKAGE.tar.gz 
nami unpack $PACKAGE

print_welcome_page
check_for_updates &

if [[ "$1" == "nami" && "$2" == "start" ]] || [[ "$1" == "/run.sh" ]]; then
  nami_initialize nginx
  info "Starting nginx... "
fi

exec tini -- "$@"
