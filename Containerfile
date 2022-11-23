ARG FROM_IMAGE=docker.io/php
ARG FROM_TAG=7.4-apache

FROM ${FROM_IMAGE}:${FROM_TAG}

COPY --from=docker.io/mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
RUN install-php-extensions pgsql pdo_pgsql
