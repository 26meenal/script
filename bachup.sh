#!/bin/bash

<<help 
This is a shell script to take backups
can also be used with cron
help

<<info
This shell scripts will take periodic changes

eg.
./backup.sh <source> <test>

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')
zip -r "$dest/backup-$timestamp.zip" $src

aws s3 "$dest" s3://tws-backups-m1

echo "backup completed"

