FROM mariadb

# Change MYSQL user uid gid
# ENV MYSQL_UID 2005
# ENV MYSQL_GID 2005

# RUN usermod -u $MYSQL_UID mysql; groupmod -g $MYSQL_GID mysql;

# RUN chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

