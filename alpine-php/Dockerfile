# Build nginx and php container

FROM alpine:3.8

RUN apk update
RUN apk upgrade
RUN apk add --no-cache nginx \
    php7 \
    php7-fpm \
    php7-gd \
    php7-zlib \
    php7-curl \
    php7-openssl \
    php7-sqlite3 \
    php7-gmp \
    php7-pdo_mysql \
    php7-imagick \
    php7-mysqlnd \
    php7-redis \
    php7-mbstring \
    php7-pdo_sqlite \
    php7-session \
    php7-iconv \
    php7-sockets \
    php7-simplexml \
    php7-pdo

RUN mkdir /www
RUN echo '<?php phpinfo();' > /www/index.php
RUN rm -rfv /var/cache/apk/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx-default.conf /etc/nginx/conf.d/default.conf
COPY start.sh /start.sh

CMD ["sh", "/start.sh"]

EXPOSE 80
