#
# Dockerfile for redis cluster tools
#

FROM ruby:2.4.1-alpine3.6
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

ARG BIN_DIR=/usr/local/bin
ENV DOCKERIZE_VERSION v0.5.0
ENV REDIS_TRIB_VERSION 4.0.2
ENV RCM_VERSION v0.7.5

RUN apk add --no-cache openssl

RUN wget https://github.com/jwilder/dockerize/releases/download/${DOCKERIZE_VERSION}/dockerize-alpine-linux-amd64-${DOCKERIZE_VERSION}.tar.gz \
    && tar -C ${BIN_DIR} -xzvf dockerize-alpine-linux-amd64-${DOCKERIZE_VERSION}.tar.gz \
    && rm dockerize-alpine-linux-amd64-${DOCKERIZE_VERSION}.tar.gz

ADD https://raw.githubusercontent.com/antirez/redis/${REDIS_TRIB_VERSION}/src/redis-trib.rb ${BIN_DIR}/redis-trib.rb
ADD https://github.com/maiha/rcm.cr/releases/download/${RCM_VERSION}/rcm ${BIN_DIR}/rcm

RUN gem install redis \
    && chmod +x ${BIN_DIR}/redis-trib.rb \
    && chmod +x ${BIN_DIR}/rcm

COPY init.sh /init.sh

ENTRYPOINT ["/init.sh"]
