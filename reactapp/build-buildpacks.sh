#!/bin/bash
# prerequisites: need to have docker and pack installed
# https://buildpacks.io/docs/tools/pack/

BASEDIR="$( cd "$( dirname "$0" )" && pwd )"
cd $BASEDIR
echo Building OCI container image using buildpacks. Building in $BASEDIR

pack build test/frontend-nginx \
 --clear-cache \
 --builder paketobuildpacks/builder:base \
 --buildpack paketobuildpacks/ca-certificates:3.6.1 \
 --buildpack paketobuildpacks/node-engine:1.4.1 \
 --buildpack paketobuildpacks/npm-install:1.1.0 \
 --buildpack paketobuildpacks/node-run-script:1.0.4 \
 --buildpack paketobuildpacks/nginx:0.13.2 \
 --buildpack paketobuildpacks/source-removal:0.2.0 \
 --env BP_NODE_RUN_SCRIPTS=build \
 --env BP_WEB_SERVER=nginx \
 --env BP_DISABLE_SBOM=true \
 --env BP_WEB_SERVER_ROOT=build \
 --env BP_NODE_VERSION="18.14.2"

