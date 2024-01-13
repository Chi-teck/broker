ARG PHP_VERSION

FROM attr/dev-apache-php:$PHP_VERSION

COPY example.conf example-ssl.conf /etc/apache2/sites-available/
RUN a2ensite example.conf example-ssl.conf
