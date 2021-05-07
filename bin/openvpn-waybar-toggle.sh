#!/bin/bash

###################################################
# TOGGLE VPN CONNECTION
###################################################

# How to get ID: nmcli connection show | grep vpn
CONNECTION_ID=`nmcli connection show | grep vpn | head -1 | tr -s " " | cut -d " " -f 2`

CHECK_CONNECTION=`nmcli connection show | grep tun0`
CONNECTION_STATUS=$?

if [ ${CONNECTION_STATUS} -eq "0" ]; then
	sudo nmcli connection down ${CONNECTION_ID}
	notify-send -u low -t 3000 "VPN connected"
else
	sudo nmcli connection up ${CONNECTION_ID}
        notify-send -u low -t 3000 "VPN disconnected"
fi
