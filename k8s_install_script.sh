#!/bin/bash


# test echo 
echo "Hello world"
echo hello
if [ $?  != 0 ]
then 
	echo "not ok"
else
	echo "sucess !"
fi

# if root user ?
root=$(id -u)

if [ "$root" -ne 0 ] ;then

    echo "must run as root"

    exit 1

fi



# start script

# 关闭swap
swapoff  -a





