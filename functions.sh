#!/bin/bash

<<info
This is an explanation of function
info

function create_user {
	read -p "Enter the username :" username
	sudo useradd -m $username
	echo "user created successfully"
}
create_user
create_user
