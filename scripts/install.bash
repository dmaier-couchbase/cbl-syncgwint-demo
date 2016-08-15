#!/bin/bash

## Add all installation steps for your demo here!
echo Installing demo ...

export WORKDIR=$HOME
export TMP=$HOME/tmp
export PKG_DEB=couchbase-sync-gateway-enterprise_1.3.0-274_x86_64.deb
sudo dpkg -i $TMP/$PKG_DEB
