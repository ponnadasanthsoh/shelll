#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "please run this with root user"
else 
    echo "You are root user"
    fi