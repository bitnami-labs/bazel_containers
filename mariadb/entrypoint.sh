#!/bin/bash -e

. /opt/bitnami/base/functions
. /opt/bitnami/base/helpers

print_welcome_page
check_for_updates &

PACKAGE=mariadb-10.1.24-0-linux-x64-debian-8

tar xzf /$PACKAGE.tar.gz 
nami unpack $PACKAGE

if [[ "$1" == "nami" && "$2" == "start" ]] || [[ "$1" == "/run.sh" ]]; then
  . /init.sh
  nami_initialize mariadb
  info "Starting mariadb... "
fi

exec tini -- "$@"
