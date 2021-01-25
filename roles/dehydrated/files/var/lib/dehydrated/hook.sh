#!/bin/bash

if [ ${1} == "deploy_cert" ]; then
    echo " + Hook: Reload nginx..."
    /usr/sbin/nginx -s reload
else
    echo " + Hook: Nothing to do..."
fi
