#
# Dockerfile for redis (cluster)
#

FROM redis:4.0.2-alpine
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

RUN mkdir -p /usr/local/etc/redis
COPY redis.conf /usr/local/etc/redis/redis.conf
COPY init.sh /init.sh

ENTRYPOINT ["/init.sh"]
