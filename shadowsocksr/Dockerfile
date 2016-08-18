#
# Dockerfile for ProxyChain
#

FROM ubuntu:16.04
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

ENV SERVER_PORT 8388
ENV METHOD      aes-256-cfb
ENV PASSWORD    mpd
ENV PROTO       auth_sha1_v2_compatible
ENV OBF         tls1.2_ticket_auth_compatible

RUN apt-get update && apt-get install -y --no-install-recommends \
       git \
    && rm -rf /var/lib/apt/lists/* \
    && cd /opt \
    && git clone -b manyuser https://github.com/breakwa11/shadowsocks.git \
    && cp /opt/shadowsocks/config.json /opt/shadowsocks/user-config.json

EXPOSE $SERVER_PORT/tcp

CMD python /opt/shadowsocks/shadowsocks/server.py \
          -p "$SERVER_PORT" \
          -k "$PASSWORD" \
          -m "$METHOD" \
          -p "$PROTO" \
          -o "$OBF"

