#!/bin/sh

if [ "$(systemctl is-active "bluetooth")" = "active" ]; then
    sudo systemctl stop bluetooth.service
else
    sudo systemctl start bluetooth.service
fi
