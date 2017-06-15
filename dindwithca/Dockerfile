#
# Dockerfile for docker-in-docker with CA file in it
#

FROM docker:dind
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

RUN mkdir -p /etc/docker/certs.d/$REGISTRY_URL \
    && curl -SL $CAFILELOCATION /tmp/ca.crt \
    && cat /tmp/ca.crt >> /etc/ssl/certs/ca-certificates.crt \
    && cat /tmp/ca.crt >> /etc/docker/certs.d/$REGISTRY_URL/ca.crt \
    && rm /tmp/ca.crt

VOLUME /var/lib/docker
EXPOSE 2375

ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD []
