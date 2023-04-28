#!/bin/bash
# prerequisites: need to have docker and pack installed
# https://buildpacks.io/docs/tools/pack/

BASEDIR="$( cd "$( dirname "$0" )" && pwd )"
cd $BASEDIR
echo Building OCI container image using buildpacks. Building in $BASEDIR

pack build test/frontend-nginx \
 --clear-cache \
 --builder paketobuildpacks/builder:base \
 --env BP_WEB_SERVER=nginx \
 --env BP_DISABLE_SBOM=true \
 --env BP_NODE_VERSION="18.16"
