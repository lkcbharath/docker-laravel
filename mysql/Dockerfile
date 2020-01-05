FROM mysql/mysql-server:5.7

ENV MYSQL_DATABASE=test_schema \
    MYSQL_ROOT_HOST=% \
    MYSQL_ROOT_PASSWORD=123

ADD schema.sql /docker-entrypoint-initdb.d

EXPOSE 3306