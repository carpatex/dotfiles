BATT_STATUS=$(cat /sys/class/power_supply/BAT0/status)
BATT_LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)
echo "$BATT_LEVEL% ($BATT_STATUS)" 
