#!/bin/bash

#############################################################
# GET OPENVPN CONNECTION STATUS FOR WAYBAR
#############################################################

CONNECTION_STATUS=`nmcli connection show | grep tun0`

if [ $? -eq 0 ]; then
	echo '{ "tooltip": "Connected", "text": "Connected", "class": "connected", "percentage": 100 }'
else
 	echo '{ "tooltip": "Disconnected", "text": "Disconnected", "class": "disconnected", "percentage": 0 }'
fi
