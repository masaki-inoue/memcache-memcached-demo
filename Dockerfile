FROM php:7.3-fpm-alpine

RUN apk update \
  && apk add \
  autoconf \
  libmemcached-dev \
  zlib-dev \
  gcc \
  g++ \
  make \
  && pecl install memcache-4.0.5.2

RUN echo "extension=memcache.so" >> /usr/local/etc/php/conf.d/memcached.ini

COPY ./lib /var/www/html