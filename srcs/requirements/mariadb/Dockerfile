FROM alpine:edge
RUN apk update && apk upgrade && apk add mariadb mariadb-common mysql mysql-client
VOLUME /var/lib/mysql
#RUN echo du arsch > /var/lib/mysql/soemarsches && cat /var/lib/mysql/soemarsches
#RUN cat /var/lib/mysql/soemarsches
#RUN mysqld --initialize --user=mysql --basedir=/usr --datadir=/var/lib/mysql
RUN mkdir /run/mysqld && mysql_install_db --user=mysql --datadir=/var/lib/mysql
EXPOSE 3306
ENTRYPOINT ["mysqld_safe"]
