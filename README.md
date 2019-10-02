# getting started with tm-listing

Running a nodejs application with mysql database using docker and microservice architecture

### Prerequisite

- must have docker set up and running on your system

- Clone this repo.

- Inside the repo folder run cd node

- npm install

- cd ..

- docker network create tm-network

- docker-compose up -d --force-recreate --build



### Actualizar base de datos 
- Baje los contenedores: docker-compose down
- Corra docker-compose up -d --force-recreate --build
- docker exec -it tm_mysql bash -x /opt/data/mysql_refresh.sh tm tm.sql
Donde tm es la base de datos y tm.sql es el archivo sql a ejecutar en esa base de datos.
(todos los archivos estaran en mysql/backups/)





