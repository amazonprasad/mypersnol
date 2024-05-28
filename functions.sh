#!/bin/bash

#our program goal is install mysql 
DATE=$(date +%F)
Script_name=$0
Logfile=/tmp/$Script_name-$DATE.log


R="\e[31m"
G="\e[32m"
N="\e[0m"

# this function should validate the previous command and inform user it is success or failure.
validate(){
    # $1 if will recieve the arguments
    if [ $1 -ne 0 ]
    then 
         echo -e "$2 ....$R Failure $N"
    else
         echo -e "$2.....$G Success $N"
    fi
}

userid=$(id -u)
if [ $userid -ne 0 ]
then 
     echo -e " $R error: Please run the script with root access $N"
else 
     echo -e "$G Info: you are root user $N"
fi

# it is your responsibility again to check installation is success or not 
yum install mysql -y &>>$Logfile

validate $? "installing mysql"
yum install postfix -y &>>$Logfile
validate $? "installing postfix"


