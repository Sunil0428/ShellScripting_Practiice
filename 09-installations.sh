#!/bin/bash
USERID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[33m"

CHECKUSER()
{
    if [ $1 -ne 0 ]
    then 
        echo "$R please use the root access for running the script $N"
        exit 1
    fi
}

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo "$R there is an issue with $2 intallation $N "
        exit 1
    else
        echo "$G $2 installation is success $N"
    fi
}

CHECKUSER $USERID

dnf install mysql -y

if [ $? -ne 0 ];
    then
        echo "$R Mysql is not installed yet, installing it now $N"
        dnf install mysql
        VALIDATE $? "mysql"
         exit 1
    else
        echo "$G Mysql is already installed , nothing to do $N "
fi 
