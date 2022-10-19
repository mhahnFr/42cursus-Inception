FROM alpine:edge
RUN apk update && apk upgrade && apk add mariadb mariadb-common mysql mysql-client
VOLUME /var/lib/mysql
RUN mkdir /run/mysqld && mysql_install_db --user=mysql --datadir=/var/lib/mysql
EXPOSE 3306
# TODO: Networking stuff
CMD ["mysqld_safe"]
