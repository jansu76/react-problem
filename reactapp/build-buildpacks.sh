#!/bin/bash
# prerequisites: need to have docker and pack installed
# https://buildpacks.io/docs/tools/pack/

BASEDIR="$( cd "$( dirname "$0" )" && pwd )"
cd $BASEDIR
echo Building OCI container image using buildpacks. Building in $BASEDIR

pack build ilta/frontend-nginx \
 --clear-cache \
 --builder paketobuildpacks/builder:base \
 --env BP_NODE_RUN_SCRIPTS=build \
 --env BP_WEB_SERVER=nginx \
 --env BP_INCLUDE_FILES='build/*:nginx.conf:sbom-output/*' \
 --env BP_DISABLE_SBOM=true \
 --env BP_WEB_SERVER_ROOT=build \
 --env BP_NODE_VERSION="18.14.2"
