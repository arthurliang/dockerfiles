#
# Dockerfile for meteordevel
#

FROM ubuntu:16.04
MAINTAINER Arthur Liang <arthurnreply@outlook.com>

# build arguments
ARG APP_PACKAGES="locales \
                  bsdtar \
                  curl \
                  git \
                  build-essential \
                  python \
                  libssl-dev \
                  chrpath \
                  libssl-dev \
                  libxft-dev \
                  libfreetype6-dev \
                  libfreetype6 \
                  libfontconfig1-dev \
                  libfontconfig1 \
                  rsync"
ARG APP_LOCALE=en_US
ARG APP_CHARSET=UTF-8
ARG APP_USER=meteorapp
ARG APP_USER_DIR=/home/${APP_USER}

# run environment
ENV APP_PORT=${APP_PORT:-3000}
ENV APP_TEST_PORT=${APP_TEST_PORT:-5000}
ENV APP_ROOT=${APP_ROOT:-/home/meteorapp}

# install tools
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    ${APP_PACKAGES} \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# set the locale (required by Meteor)
RUN localedef ${APP_LOCALE}.${APP_CHARSET} -i ${APP_LOCALE} -f ${APP_CHARSET}

# avoid tar fail when build on hub.docker.com
RUN export tar='bsdtar'

# install Meteor
RUN curl -sL https://install.meteor.com | sed s/--progress-bar/-sL/g | /bin/sh

# create a non-root user that can write to /usr/local (required by Meteor)
RUN useradd -mUd ${APP_USER_DIR} ${APP_USER}
RUN chown -Rh ${APP_USER} /usr/local
USER ${APP_USER}

# We call the "meteor" command for the first time which will install the Meteor binaries in ~/.meteor.
RUN meteor --help

# run Meteor from the app directory
WORKDIR ${APP_ROOT}

# exposed ports and volumes
EXPOSE $APP_PORT
EXPOSE $APP_TEST_PORT
VOLUME /app

COPY init.sh /init.sh

ENTRYPOINT [ "/init.sh" ]
CMD ["meteor"]
