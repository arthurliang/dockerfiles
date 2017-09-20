#
# Dockerfile for redis cluster tools
#

FROM ruby:2.4.1-alpine3.6
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

ARG BIN_DIR=/usr/local/bin

ADD https://raw.githubusercontent.com/antirez/redis/unstable/src/redis-trib.rb ${BIN_DIR}/redis-trib.rb
ADD https://github.com/maiha/rcm.cr/releases/download/v0.7.5/rcm ${BIN_DIR}/rcm

RUN gem install redis \
    && chmod +x ${BIN_DIR}/redis-trib.rb \
    && chmod +x ${BIN_DIR}/rcm

COPY init.sh /init.sh

ENTRYPOINT ["/init.sh"]
