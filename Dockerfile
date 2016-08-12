#This is the base docker file for the demo
FROM couchbase
MAINTAINER David Maier <david.maier@couchbase.com>

RUN echo 'Using the following environment:'
ENV REPO https://github.com/dmaier-couchbase
ENV PROJECT cbl-syncgwint-demo
ENV WORKDIR $HOME
RUN env

RUN echo 'Downloading demo source code ...'
RUN sudo apt-get update
RUN sudo apt-get --assume-yes install git
RUN cd $WORKDIR;git clone $REPO/$PROJECT.git

RUN echo 'Executing demo setup ...'
RUN $WORKDIR/$PROJECT/pre-install.bash
RUN $WORKDIR/$PROJECT/install.bash
RUN $WORKDIR/$PROJECT/post-install.bash

RUN echo 'Starting demo ...'
RUN $WORKDIR/$PROJECT/run.bash
