#
# Dockerfile for redis cluster tools
#

FROM ruby:2.4.1-alpine3.6
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

RUN gem install redis
COPY redis-trib.rb /redis-trib.rb
