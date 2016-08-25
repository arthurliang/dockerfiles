#
# Dockerfile for ProxyChain
#

FROM ubuntu:14.04
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
       supervisor \
       haproxy \
       polipo \
       python-pip \
       jq \
    && pip install shadowsocks \
    && apt-get remove -y python-pip \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /opt/proxychain

COPY shadowsocks.json /opt/proxychain/
COPY haproxy.cfg /opt/proxychain/
COPY polipo.conf /opt/proxychain/
COPY supervisord.conf /etc/supervisor/
COPY services.conf /etc/supervisor/conf.d/

VOLUME /opt/proxychain
EXPOSE 1080 8123 9001

CMD supervisord -n -c /etc/supervisor/supervisord.conf
