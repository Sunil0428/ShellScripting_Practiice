#!/bin/bash
LOGPATH="/var/log/Shell-scripting"
LOGFILENAME=$( echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S" ) 
LOGFILE="$LOGPATH/$LOGFILENAME-$TIMESTAMP"

mkdir -p $LOGPATH


USERID=$(id -u)
R="\e[31m"
B="\e[32m"
N="\e[0m"

CHECKUSER()
{
    if [ $1 -ne 0 ]
    then    
        echo -e "$R Please use the root access to run this script $N" &>> $LOGFILE
        exit 1
    fi
}

VALIDATE()
{
    if [ $1 -ne 0 ]
    then    
        echo -e "$R there is a problem in installing $2 $N" &>> $LOGFILE
    else
        echo -e "$B $2 installation is complete $N" &>> $LOGFILE
    fi
}
USAGE()
{
    if [ $1 -eq 0 ]
    then
        echo "USAGE::sh 11-Logfile.sh package 1 package2 package3 ......" 
}

CHECKUSER $USERID

USAGE $#

for package in $@
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then  
        echo -e "$package is not there in the system, $R installing it $N" &>> $LOGFILE
        dnf install $package -y
        VALIDATE $? $package
    else
        echo -e "$package is already there in the system $B nothing to do $N" &>> $LOGFILE
    fi
done

