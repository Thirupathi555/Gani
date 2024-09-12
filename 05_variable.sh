#!/bin/bash
USERID=$(id -u)
#echo "user ID is: $USERID"
if [ $USERID -ne 0 ]
then 
	echo "please run this script with root priviliges"
	exit 1
fi
dnf install git -y
if [ $?-ne 0 ]

then
	echo "Git is not installed,going to install it.."
	dnf install git -y
	if [ $? -ne 0 ]
	then
		echo "git installation not success..check it.."
		exit 1
	else
		echo "git installation success"
	fi

else
	echo "Git is already installed, nothing to do.."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
	echo "mysql in not installed..going to install"
	dnf install mysql -y
	if [$? -ne 0 ]
	then
		echo "mysql installation is success"
	fi
else
	echo "mysql is already installed...nothing to do!"
fi




