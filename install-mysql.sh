#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"
logfile=/tmp/muni.log


userid=$(id -u)
if [ $userid -ne 0 ]
then 
     echo -e " $R Error: please run this script with root acces $N"
else 
     echo -e " $G Info: you are a root user $N"
fi

    yum install mysql -y &>>$logfile