FROM php:8.2-apache
RUN a2dismod mpm_event mpm_worker 2>/dev/null || true \
    && a2enmod mpm_prefork

RUN docker-php-ext-install pdo pdo_mysql

COPY frontend/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
CMD ["sh", "-c", "a2dismod mpm_event mpm_worker 2>/dev/null; a2enmod mpm_prefork; apache2-foreground"]
