FROM attr/web-base

ARG USER_NAME
ARG USER_UID
ARG USER_GID

ENV PHP_VERSION=8.1

# @see https://github.com/Chi-teck/docker-web-base for the list of available playbooks.
RUN playbook user dev-tools nginx mariadb php-fpm phpmyadmin mailhog
