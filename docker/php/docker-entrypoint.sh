#!/bin/sh
set -e

composer install --prefer-dist --no-progress --no-interaction

set -- php-fpm "$@"
exec docker-php-entrypoint "$@"