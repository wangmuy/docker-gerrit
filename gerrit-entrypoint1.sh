#!/usr/bin/env sh
set -e

echo GERRIT_USER=${GERRIT_USER} && \
[ -n "${MYUID}" ] && echo "uid to ${MYUID}" && UIDPARAM="-u ${MYUID}" && \
[ -n "${MYGID}" ] && echo "gid to ${MYGID}" && GIDPARAM="-g ${MYGID}" || true && \
deluser ${GERRIT_USER} && echo "uidparam=${UIDPARAM}, gidparam=${GIDPARAM}" && \
adduser -D -h "${GERRIT_HOME}" ${UIDPARAM} ${GIDPARAM} -s /sbin/nologin "${GERRIT_USER}"

id ${GERRIT_USER}

/gerrit-entrypoint.sh "$@"
