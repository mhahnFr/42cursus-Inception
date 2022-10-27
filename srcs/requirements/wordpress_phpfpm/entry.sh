#!/bin/sh

cd /var/www/wordpress

wp core download --allow-root

wp config create --dbname=${MARIADB_NAME} \
                 --dbuser=${MARIADB_USER} \
                 --dbpass=${MARIADB_PWD} \
                 --dbhost=${MARIADB_HOST} \
                 --locale=en_GER \
                 --allow-root

wp core install --url=${DOMAIN_NAME} \
                --title=${WP_BLOG_TITLE} \
                --admin_user=${WP_ROOT_USER} \
                --admin_password=${WP_ROOT_PWD} \
                --admin_email=${WP_ROOT_MAIL} \
                --allow-root

wp user create ${WP_USER} ${WP_USER_MAIL} --role=administrator \
                                          --user_pass=${WP_USER_PWD} \
                                          --allow-root

php-fpm8 -F
