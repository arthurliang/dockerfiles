#
# Dockerfile for grafana
#

FROM grafana/grafana
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

RUN groupmod -g 1000 grafana \
    && usermod -u 1000 grafana \
    && usermod -g 1000 grafana \
    && chown -R grafana:grafana /var/lib/grafana


COPY ./init.sh /init.sh
COPY ./run.sh /run.sh

ENTRYPOINT ["/init.sh"]

CMD ["/run.sh"]
