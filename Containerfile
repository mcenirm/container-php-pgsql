ARG FROM_IMAGE=docker.io/php
ARG FROM_TAG=7.4-apache

FROM ${FROM_IMAGE}:${FROM_TAG}

COPY --from=docker.io/mlocati/php-extension-installer@sha256:38d22534ae3298e3d36f715b728b017079bdf54d8f6db9661f24c3bfebc2b678 /usr/bin/install-php-extensions /usr/bin/
RUN install-php-extensions pgsql pdo_pgsql
