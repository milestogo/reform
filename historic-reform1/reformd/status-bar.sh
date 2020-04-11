#!/bin/bash

read -r temp < /sys/class/thermal/thermal_zone0/temp
temp=$((temp / 1000))

IFS=$',\r'
read -r timestamp bat_capacity bat_volts bat_amps lid </var/log/reformd

bat_amps=$(echo "scale=2;-($bat_amps/1000.0)" | bc)
bat_percent=$(echo "scale=2;$bat_capacity/10000.0*100" | bc)
bat_volts=$(echo "scale=2;$bat_volts/1000.0" | bc)

echo "🔋$bat_percent% ${bat_amps}A ${bat_volts}V $temp°C"

