!#/bin/bash

USERID=$(id -u)

if [ $USERID -gt 0 ]
THEN 
    echo "User didnt have req priviliges to run this script"
    exit 1
fi 

dnf installed mysql -y

if [ $? -ne 0 ]
THEN
    echo "Mysql is not installed yet, installing it now"
    exit 1

ELSE
    echo "Mysql is already installed , nothing to do"


fi 
