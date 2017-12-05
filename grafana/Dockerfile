#
# Dockerfile for ubuntu
#

FROM grafana/grafana
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

RUN groupmod -g 1000 grafana \
    && usermod -u 1000 grafana \
    #&& `find / -user 104 -exec chown -h 1000 {} \;` \
    #&& `find / -group 107 -exec chgrp -h 1000 {} \;` \
    && usermod -g 1000 grafana \
    && chown -R grafana:grafana /var/lib/grafana
