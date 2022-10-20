FROM alpine:edge
RUN apk update && apk upgrade && apk add mysql mysql-client
#VOLUME /var/lib/mysql
#RUN mkdir /run/mysqld && mysql_install_db --user=mysql --datadir=/var/lib/mysql

RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql --basedir=/usr

# ???
COPY ./config.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

ARG MARIADB_NAME
ARG MARIADB_USER
ARG MARIADB_PWD

#RUN cd /usr ; mysqld_safe --user=mysql --datadir=/var/lib/mysql ;          \
RUN mysqld_safe --user=mysql --datadir=/var/lib/mysql & \
 && mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MARIADB_NAME}"                                 \
 && mysql -u root -e "CREATE USER IF NOT EXISTS '${MARIADB_USER}'@'' IDENTIFIED BY '${MARIADB_PWD}'" \
 && mysql -u root -e "GRANT ALL PRIVILEGES ON ${MARIADB_NAME}.* TO '${MARIADB_USER}'@''"             \
 && mysql -u root -e "FLUSH PRIVILEGES"

#RUN cd /usr ; mysqld_safe --datadir=/var/lib/mysql \
#    && mysqladmin -u root password "$MARIADB_ROOT_PWD" \
#    && mysql -u root -p"$MARIADB_ROOT_PWD" -e "UPDATE mysql.user SET Password=PASSWORD('$MARIADB_ROOT_PWD') WHERE User='root'" \
#    && mysql -u root -p"$MARIADB_ROOT_PWD" -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1')" \
#    && mysql -u root -p"$MARIADB_ROOT_PWD" -e "DELETE FROM mysql.user WHERE User=''" \
#    && mysql -u root -p"$MARIADB_ROOT_PWD" -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%'" \
#    && mysql -u root -p"$MARIADB_ROOT_PWD" -e "FLUSH PRIVILEGES"
EXPOSE 3306
ENTRYPOINT ["mysqld_safe"]
#CMD ["mysqld_safe"]
