FROM php:7.3-apache

RUN pecl install redis && docker-php-ext-enable redis

COPY ./src /var/www/html/

FROM redis:latest

VOLUME /data

EXPOSE 6379

CMD ["redis-server"]
