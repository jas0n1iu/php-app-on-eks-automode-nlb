FROM php:8.2-fpm
RUN docker-php-ext-install mysqli
RUN mkdir /app
COPY index.php /app