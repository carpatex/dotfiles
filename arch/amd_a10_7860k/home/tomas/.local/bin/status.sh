#!/bin/sh
while true; do
	TIME=$(date +"%R")
	DATE=$(date +"%F")
	echo "Battery: Date: $DATE | Time: $TIME"
	sleep 5
done
