#!/bin/bash
bat_files="/sys/class/power_supply/BAT0"

bat_status=$(cat "${bat_files}/status")
capacity=$(cat "${bat_files}/capacity")

if [[ "${bat_status}" == "Discharging" && ${capacity} -le 20 ]]; then
	notify-send \
		-i "battery-low" \
		"Low battery -- ${bat_status}" \
		"Only ${capacity}% battery remaining"
elif [[ ${bat_status} == "Charging" && ${capacity} -ge 95 ]]; then
	notify-send\
		-i "battery-full" \
		"Battery is full ! (${capacity})" \
		"Please unplug the laptop."
fi
