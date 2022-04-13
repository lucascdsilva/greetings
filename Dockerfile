FROM php:8.1-fpm as php_app

RUN apt update

RUN apt-get install -y git zip

COPY --from=composer:2.3.4 /usr/bin/composer /usr/bin/composer

COPY ./docker/php/docker-entrypoint.sh /usr/local/bin/docker-entrypoint

RUN chmod +x /usr/local/bin/docker-entrypoint

VOLUME [ "/var/www/app/var" ]

WORKDIR /var/www/app


ENTRYPOINT ["docker-entrypoint"]

FROM nginx:1.21.6 as nginx_app

WORKDIR /var/www/app