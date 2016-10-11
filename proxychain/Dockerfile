#
# Dockerfile for ProxyChain
#

FROM ubuntu:16.04
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        supervisor \
        git \
        haproxy \
        polipo \
        jq \
    && rm -rf /var/lib/apt/lists/* \
    && cd /opt \
    && git clone -b manyuser https://github.com/breakwa11/shadowsocks.git \
    && mkdir -p /opt/proxychain


COPY init.sh /init.sh
COPY shadowsocks.json /opt/proxychain/
COPY haproxy.cfg /opt/proxychain/
COPY polipo.conf /opt/proxychain/
COPY supervisord.conf /etc/supervisor/
COPY services.conf /etc/supervisor/conf.d/

EXPOSE 1080 8123 9001

ENTRYPOINT ["/init.sh", "/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]
