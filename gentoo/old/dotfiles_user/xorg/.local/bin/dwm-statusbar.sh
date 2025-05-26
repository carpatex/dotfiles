#!/bin/sh
while true; do
	TIME=$(date +"%R")
	DATE=$(date +"%F")
	BATT_STATUS=$(cat /sys/class/power_supply/BAT0/status)
	BATT_LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)
	echo "Battery: $BATT_LEVEL% ($BATT_STATUS) | Date: $DATE | Time: $TIME" | ~/.local/bin/dwm-setstatus
	sleep 5
done
