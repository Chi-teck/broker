ARG PHP_VERSION

FROM attr/dev-apache-php:$PHP_VERSION

COPY example.conf example-ssl.conf /etc/apache2/sites-available/
RUN a2ensite example.conf example-ssl.conf

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

# -- Sendmail path (uncomment if you have mailpit service)
# ARG PHP_VERSION
# RUN echo "sendmail_path = 'mhsendmail --smtp-addr=mailpit:1025'" >> /etc/php/$PHP_VERSION/apache2/conf.d/30-local.ini && \
    echo "sendmail_path = 'mhsendmail --smtp-addr=mailpit:1025'" >> /etc/php/$PHP_VERSION/cli/conf.d/30-local.ini
