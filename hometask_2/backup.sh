#!/bin/bash

if [ -d $2 ]
then
	echo "Starting copying"
else
	mkdir $2
fi

if [ -d `$2/"$(date +"%d-%m-%Y")"`]
then
	echo "Folder with date made"
else
	mkdir $2/"$(date +"%d-%m-%Y")"
fi

for filez in $(find $1 -mtime -1)
do
	cp -r $filez $2/"$(date +"%d-%m-%Y")" 
done
