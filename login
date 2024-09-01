#!/bin/bash
login(username,password){
select * from user where user='user name' and password='password'
if ($? -eq 0)
then
	echo "login succuses"
else
	echo "login failed"
fi
}
