#!/bin/bash

INTERFACE=$1

if [[ -z "$INTERFACE" ]] || [[ "$#" -gt "1" ]]; then
    echo "Usage: spoofMAC [interface]"
    exit 1
fi

echo -e "Spoofing MAC address for interface $INTERFACE\n"
 
sudo ifconfig $INTERFACE down
sudo macchanger -A $INTERFACE
sudo service network-manager restart
echo
ifconfig $INTERFACE
