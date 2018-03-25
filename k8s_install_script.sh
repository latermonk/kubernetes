#!/bin/bash
#echo "Hello world"

#swapoff  -a

echo hello
if [ $?  != 0 ]
then 
	echo "not ok"
else
	echo "sucess !"
fi


