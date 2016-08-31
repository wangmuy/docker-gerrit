#!/usr/bin/env sh
set -e

set_gerrit_config() {
  gosu ${GERRIT_USER} git config -f "${GERRIT_SITE}/etc/gerrit.config" "$@"
}

[ -n "${GERRIT_BASEPATH}" ] && \
([ ! -d ${GERRIT_BASEPATH} ] && gosu ${GERRIT_USER} mkdir -p ${GERRIT_BASEPATH} || true) && \
echo "setting basePath to ${GERRIT_BASEPATH}" && set_gerrit_config gerrit.basePath "${GERRIT_BASEPATH}"
exec /gerrit-start2.sh
