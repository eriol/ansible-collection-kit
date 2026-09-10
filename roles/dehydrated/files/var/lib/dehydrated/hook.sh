#!/bin/bash

HOOK_DIR="$(dirname "$(readlink -f "${0}")")/hook.d"

rc=0

for hook in "${HOOK_DIR}"/*.sh; do
    [ -x "${hook}" ] || continue
    echo " + Hook: Running $(basename "${hook}") for ${1}..."
    "${hook}" "$@" || rc=${?}
done

exit ${rc}
