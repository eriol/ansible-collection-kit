#!/bin/bash

set -e

[ "${1}" = "deploy_cert" ] || exit 0

/usr/sbin/nginx -s reload
