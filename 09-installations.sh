#!/bin/bash

USERID=$(id -u)

if [ $USERID -gt 0 ]
then 
    echo "User didnt have req priviliges to run this script"
    exit 1
fi

dnf installed mysql -y

if [ $? -ne 0 ];
    then
        echo "Mysql is not installed yet, installing it now"
        dnf install mysql
        exit 1
    else
        echo "Mysql is already installed , nothing to do"
fi 
