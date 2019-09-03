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



### Launching mysql in a container




### Testing our complete app 

If everything is good so far then congratulations :smile: You have a complete app running with two microservices. To test this you can use CURL command from your host machine

1. Get homepage of your app `curl -X GET localhost:4000`

2. Get list of all students from test database `curl -X POST 192.168.43.147:4000/get-students`
Here 192.168.43.147 is my host IpAddress `ifconfig | grep inet`

3. Add a new student to your test db `curl --header "Content-Type: application/json" -d '{"rollNo": 1130360, "name": "Abhishek Goswami"}' -X POST localhost:4000/add-student`

4. Again fetch all students to see updated results `curl -X POST 192.168.43.147:4000/get-students`

5. Modify source code of nodejs app, build image, run container and test again.

### Queries/Comments

You can contact me at varunon9@gmail.com or create github issues.