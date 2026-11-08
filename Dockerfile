FROM php:8.2-apache

# Pastikan hanya satu MPM (prefork) yang aktif
RUN rm -f /etc/apache2/mods-enabled/mpm_*.load /etc/apache2/mods-enabled/mpm_*.conf \
    && ln -s /etc/apache2/mods-available/mpm_prefork.load /etc/apache2/mods-enabled/mpm_prefork.load \
    && ln -s /etc/apache2/mods-available/mpm_prefork.conf /etc/apache2/mods-enabled/mpm_prefork.conf

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html/
EXPOSE 80
