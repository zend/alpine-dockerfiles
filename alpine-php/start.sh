#!/bin/sh

echo 'Starting web server...'
php-fpm7

# Run nginx in foreground
nginx
