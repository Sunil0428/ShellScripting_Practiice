
USERID=$(id -u)
R="\e[31m"
B="\e[32m"
N="\e[0m"

CHECKUSER()
{
    if [ $1 -ne 0 ]
    then    
        echo -e "$R Please use the root access to run this script $N"
        exit 1
    fi
}

VALIDATE()
{
    if [ $1 -ne 0 ]
    then    
        echo -e "$R there is a problem in installing $2 $N"
    else
        echo -e "$B $2 installation is complete $N"
    fi
}

CHECKUSER $USERID

for package in $@
{
    $package --version
    if [ $? -ne 0 ]
    then  
        echo -e "$R $package is not there in the system, so installing it $N"
        dnf install $package
        VALIDATE $? $package
    else
        echo -e "$B $package is already there in the system, nothing to do $N"
    fi
}

