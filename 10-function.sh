#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
then
    echo "ERROR:: $2 ...FAILED"
    exit 1 # u can give other than 0, if not root user this one will end here 
else 
    echo "$2 .... SUCESS"
fi # fi means reverse of if indicating condtion end 
}


if [ $ID -ne 0 ]
then
    echo "Please run with root user"
    exit 1
else
    echo "you are root user"
    fi

    yum install mysql -y

    VALIDATE $? "Installing MySql"

    yum install git -y

    VALIDATE $? "Installing Git"

