ARG PHP_VERSION

FROM attr/dev-php-fpm:${PHP_VERSION}

# -- Xdebug
# ARG XDEBUG=0
# RUN $XDEBUG == true && phpenmod xdebug || phpdismod xdebug

# -- Configure user
# ARG USER_NAME
# ARG USER_GID
# ARG USER_UID
# ARG USER_PASSWORD
# RUN userdel wb && \
#     groupadd -g $USER_GID $USER_NAME && \
#     useradd $USER_NAME -m -u $USER_UID -g $USER_GID -Gsudo -s /bin/bash && \
#     echo $USER_NAME:$USER_PASSWORD | chpasswd

# -- Change PHP-FPM user
# ARG PHP_VERSION
# RUN sed -i "s/user = www-data/user = ${USER_NAME}/g" /etc/php/${PHP_VERSION}/fpm/pool.d/www.conf && \
#     sed -i "s/group = www-data/group = ${USER_NAME}/g" /etc/php/${PHP_VERSION}/fpm/pool.d/www.conf

# -- Sendmail path (uncomment if you have mailpit service)
# RUN echo "sendmail_path = 'mhsendmail --smtp-addr=mailpit:1025'" >> /etc/php/$PHP_VERSION/fpm/conf.d/30-local.ini && \
#     echo "sendmail_path = 'mhsendmail --smtp-addr=mailpit:1025'" >> /etc/php/$PHP_VERSION/cli/conf.d/30-local.ini
