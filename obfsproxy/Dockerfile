#
# Dockerfile for obfsproxy
#

FROM ubuntu:14.04
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
       build-essential \
       curl \
       python \
       python-dev \
    && curl https://bootstrap.pypa.io/get-pip.py | python \
    && pip install obfsproxy \
    && apt-get purge -y build-essential python-dev \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

ENV LOG_MIN_SEVERITY info
ENV DATA_DIR /var/lib/obfsproxy
ENV TRANSPORTS obfs3
ENV DEST_ADDR openvpn
ENV DEST_PORT 1194
ENV RUN_MODE server
ENV LISTEN_ADDR 0.0.0.0
ENV LISTEN_PORT 4911

CMD obfsproxy --log-min-severity=$LOG_MIN_SEVERITY \
              --data-dir=$DATA_DIR \
              $TRANSPORTS \
              --dest=$DEST_ADDR:$DEST_PORT \
              $RUN_MODE \
              $LISTEN_ADDR:$LISTEN_PORT