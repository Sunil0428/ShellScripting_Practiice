
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
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then  
        echo -e "$package is not there in the system, $R installing it $N"
        dnf install $package -y
        VALIDATE $? $package
    else
        echo -e "$package is already there in the system $B nothing to do $N"
    fi
done

