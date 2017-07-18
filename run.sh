#! /bin/bash

DATABASE=mydb                                                            
USER=myuser
PASSWORD=password
ROOTPASS=rootpass
docker run -d                        \
    -e MYSQL_USER=$USER              \
    -e MYSQL_PASSWORD=$PASSWORD      \
    -e MYSQL_DATABASE=$DATABASE      \
    -e MYSQL_ROOT_PASSWORD=$ROOTPASS \
    --name=mariadb mariadb:quads
sleep 1
docker run --link=mariadb:db -d --name wordpress -p 80:80 wordpress:quads
