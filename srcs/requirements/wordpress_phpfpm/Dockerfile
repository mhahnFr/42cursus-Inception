FROM alpine:3.16.2

RUN apk update \
 && apk upgrade \
 && apk add php8-fpm          php8-common php8-mysqli  php8-xml     php8-curl     php8-gd      \
            php8-pecl-imagick php8-cli    php8-dev     php8-imap    php8-mbstring php8-opcache \
            php8-redis        php8-soap   php8-zip     php8-phar    curl          mysql-client

RUN rm -rf /etc/php8/php-fpm.d/www.conf

COPY ./www.conf /etc/php8/php-fpm.d/www.conf

RUN mkdir /run/php

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
 && chmod +x wp-cli.phar \
 && mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www/html

RUN ln `which php8` /usr/local/bin/php

EXPOSE 9000

COPY ./entry.sh /usr/local/bin/entry.sh

RUN chmod +x /usr/local/bin/entry.sh

ENTRYPOINT ["/usr/local/bin/entry.sh"]
