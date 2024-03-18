#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "please run this with root user"
    exit 1
else 
    echo "You are root user"
fi # fi means reverse of if indicating condtion end 

yum install mysql -y