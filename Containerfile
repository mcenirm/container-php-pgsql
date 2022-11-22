FROM docker.io/php:7.4-apache
COPY --from=docker.io/mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
RUN install-php-extensions pgsql pdo_pgsql
