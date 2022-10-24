FROM alpine:edge

RUN apk update \
 && apk upgrade \
 && apk add php8-fpm          php8-common php8-mysqlnd php8-xml     php8-curl     php8-gd      \
            php8-pecl-imagick php8-cli    php8-dev     php8-imap    php8-mbstring php8-opcache \
            php8-redis        php8-soap   php8-zip     php8-phar    curl          mysql-client

COPY ./conf /etc/php/8.1/fpm/pool.d/www.conf

RUN php-fpm8 -t

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
 && chmod +x wp-cli.phar \
 && mv wp-cli.phar /usr/local/bin/wp

ARG DB_NAME
ARG DB_USER_NAME
ARG DB_USER_PWD
ARG DB_HOST

ARG DOMAIN_NAME
ARG BLOG_TITLE
ARG WP_ROOT_USER
ARG WP_ROOT_PWD
ARG WP_ROOT_MAIL

ARG WP_USER
ARG WP_USER_MAIL
ARG WP_USER_PWD

RUN mkdir -p /var/www/html

RUN ln `which php8` /usr/local/bin/php

EXPOSE 9000

COPY ./arsch.sh /usr/local/bin/arsch.sh
RUN chmod +x /usr/local/bin/arsch.sh
ENTRYPOINT ["/usr/local/bin/arsch.sh"]
