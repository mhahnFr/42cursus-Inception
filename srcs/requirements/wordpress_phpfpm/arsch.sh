#!/bin/sh

echo $DB_NAME

cd /var/www/html \
 && wp core download --allow-root \
 && wp config create --dbname=${DB_NAME} \
                     --dbuser=${DB_USER_NAME} \
                     --dbpass=${DB_USER_PWD} \
                     --dbhost=${DB_HOST} \
                     --locale=en_GER \
                     --allow-root \
 && wp core install --url=${DOMAIN_NAME} \
                    --title=${BLOG_TITLE} \
                    --admin_user=${WP_ROOT_USER} \
                    --admin_password=${WP_ROOT_PWD} \
                    --admin_email=${WP_ROOT_MAIL} \
                    --allow-root \
 && wp user create ${WP_USER} ${WP_USER_MAIL} --role=administrator --user_pass=${WP_USER_PWD} --allow-root

php-fpm8 -F
