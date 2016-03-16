#!/bin/bash -eu

[ "${LANG-}" ] && locale-gen $LANG

exec /usr/bin/supervisord
