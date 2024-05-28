#!/bin/bash

number=$1
 
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ $1 -gt 100 ]
then
     echo -e  " $R $number is gt 100 $N"
else 
     echo -e "$G $number is not gt 100 $N"

fi 