## Pull the mysql:5.7 image
FROM mysql:5.7

## The maintainer name and email
MAINTAINER Roy Corella <corellasanchez@gmail.com>

# database = test and password for root = password
ENV MYSQL_DATABASE=tm_listing \
    MYSQL_ROOT_PASSWORD=password

# when container will be started, we'll have `test` database created with this schema
COPY ./config/test-dump.sql /docker-entrypoint-initdb.d/
