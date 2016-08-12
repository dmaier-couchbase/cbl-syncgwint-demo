#This is the base docker file for the demo
FROM couchbase
MAINTAINER David Maier <david.maier@couchbase.com>

RUN echo "Using the following environment:"
ENV REPO https://github.com/dmaier-couchbase
ENV PROJECT cbl-syncgwint-demo
ENV WORKDIR $HOME
RUN env

RUN echo "Downloading source code ..."
RUN sudo apt-get update
RUN sudo apt-get install git
RUN git clone $REPO/$PROJECT.git
