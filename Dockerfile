# This is the base docker file for the demo
FROM couchbase
MAINTAINER David Maier <david.maier@couchbase.com>
RUN ./scripts/pre-install.bash
RUN ./scripts/install.bash
RUN ./scripts/post-install.bash
