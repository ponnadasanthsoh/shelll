#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "please run this with root user"
    exit 1 # u can give other than 0, if not root user this one will end here 
else 
    echo "You are root user"
fi # fi means reverse of if indicating condtion end 

yum install mysqlll -y

if [ $? -ne 0 ]
then
    echo "mysqlinstallation is failed"
    exit 1
else
    echo "installation is sucess"