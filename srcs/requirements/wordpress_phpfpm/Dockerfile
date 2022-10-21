FROM alpine:edge

RUN apk update \
 && apk upgrade \
 && apk add php8-fpm          php8-common php8-mysqlnd php8-xml     php8-curl     php8-gd      \
            php8-pecl-imagick php8-cli    php8-dev     php8-imap    php8-mbstring php8-opcache \
            php8-redis        php8-soap   php8-zip     curl

COPY ./conf /etc/php/8.1/fpm/pool.d/www.conf
COPY ./ini  /etc/php/8.1/fpm/php.ini

RUN php-fpm8 -t

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
 && chmod +x wp-cli.phar \
 && mv wp-cli.phar /usr/local/bin/wp

ENTRYPOINT ["php-fpm8"]
