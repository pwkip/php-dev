FROM php:8-fpm

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN pecl install xdebug-3.1.3 \
    && docker-php-ext-enable xdebug
