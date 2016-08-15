#!/bin/bash

## Add all pre-installation steps here!
echo Preparing setup of the demo ...

export WORKDIR=$HOME
export TMP=$HOME/tmp
export PKG_REPO=http://packages.couchbase.com/releases
export PKG_DEB=couchbase-sync-gateway/1.3.0/couchbase-sync-gateway-enterprise_1.3.0-274_x86_64.deb

echo Downloading SyncGW ...
mkdir -p $TMP
wget $PKG_REPO/$PKG_DEB -P $WORKDIR /
