FROM php:7.0.4-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev git nano zip unzip \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install mcrypt pdo_mysql pdo mbstring

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www
COPY composer.json .
RUN composer create-project laravel/laravel blog 5.1 --prefer-dist
COPY .env /var/www/blog 
WORKDIR /var/www/blog
CMD php artisan serve --host=0.0.0.0 --port=8181
EXPOSE 8181
