# getting started with tm-listing

Running a nodejs application with mysql database using docker and microservice architecture

### Prerequisite

- must have docker set up and running on your system

- Clone this repo.

- docker network create tm-network

- docker-compose up -d --force-recreate --build



### Actualizar base de datos 
- Borra el contenido de la carpeta mysql/data
- Baje los contenedores: docker-compose down
- Corra docker-compose up -d --force-recreate --build
- docker exec -it tm_mysql bash /opt/data/mysql_refresh.sh tm tm.sql
Donde tm es la base de datos y tm.sql es el archivo sql a ejecutar en esa base de datos.
(todos los archivos estaran en mysql/backups/)

### Instalar datos de prueba
docker exec -it tm_mysql bash /opt/data/mysql_refresh.sh tm test_data.sql





