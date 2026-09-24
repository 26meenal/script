#!/bin/bash

read -p "Enter the password :" password


sudo useradd -m "$username"
echo -e "$password\n$password" |sudo passwd "$username"


echo "=========Creation of user completed========"
   
sudo userdel $username
echo "=========Deletion of User completed========"
cat /etc/passwd | grep $username | wc
echo "as wc is 0 the user is deleted"
