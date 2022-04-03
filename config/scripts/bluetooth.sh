#!/bin/sh

#if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
if [ "$(systemctl is-active "bluetooth.service")" = "inactive" ]; then
    echo " Bluetooth off"
else
    devices_paired=$(bluetoothctl paired-devices | grep Device | cut -d ' ' -f 2)
    counter=0
    foo=""

    for device in $devices_paired; do
    device_info=$(bluetoothctl info "$device")

    if echo "$device_info" | grep -q "Connected: yes"; then
	device_alias=$(echo "$device_info" | grep "Alias" | cut -d ' ' -f 2-)
        
	if [ $counter -gt 0 ]; then
	    foo="${foo}, $device_alias"
	else
	    foo="${foo} $device_alias"
        fi
        counter=$((counter + 1))
    fi
    done
    if [ $counter -gt 0 ]; then
	echo "${foo}"
    else
	echo " Bluetooth on"
    fi
fi
