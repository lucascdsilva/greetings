FROM php:8.1-fpm as php_app


WORKDIR /var/www/app

FROM nginx:1.21.6 as nginx_app

WORKDIR /var/www/app