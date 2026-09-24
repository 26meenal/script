#!/bin/bash

<<info

This script will install new package
that you pass into the arguements

eg ./package.sh nginx
./package.sh docker.io
./package.sh unzip
info

echo "Installing $1"

sudo apt-get update
sudo apt-get install $1 -y

echo "installation completed"



