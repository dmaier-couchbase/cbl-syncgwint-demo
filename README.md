# Sync Gateway Integration Demo

## Demo

The demo shows how to integrate with the Sync Gateway REST API. Why is this necessary?

* Integrate Web Applications into your Couchbase Mobile landscape
* Access data via SycGateway from embedded devices those might not have enough horse power in order to run Couchbase Lite

The following is part of the demo:

* Load some documents by synchronizing via Couchbase Lite
* Get all documents via the SyncGW REST API
* Update some documents via the SyncGW REST API
* Retrieve the changes feed

## Setup

```
cd $HOME
git clone https://github.com/dmaier-couchbase/cbl-syncgwint-demo.git
docker build cbl-syncgwint-demo/
```
