#!/bin/bash
bat_files="/sys/class/power_supply/BAT0"

bat_status=$(cat "${bat_files}/status")
capacity=$(cat "${bat_files}/capacity")

if [[ "${bat_status}" == "Discharging" -a ${capacity} -le 20 ]]; then
	notify-send \
		-i "/usr/local/share/icons/low_battery.png" \
		"Low battery -- ${bat_status}" \
		"Only ${capacity}% battery remaining"
elif [[ ${bat_status} == "fully-charged" && ${capacity} -ge 95 ]]; then
	notify-send\
		-i "/usr/local/share/icons/full_battery.png" \
		"Battery is full ! (${capacity})" \
		"Please unplug the laptop."
fi

