#
# Dockerfile for redis cluster tools
#

FROM ruby:2.4.1-alpine3.6
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

RUN gem install redis
ADD https://github.com/antirez/redis/blob/unstable/src/redis-trib.rb /redis-trib.rb
ADD https://github.com/maiha/rcm.cr/releases/download/v0.7.5/rcm /rcm
COPY init.sh /init.sh

ENTRYPOINT ["/init.sh"]
