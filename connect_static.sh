#!/bin/bash 

if $1
device="wlan0"
ip_addr="192.168.0.201"
def_gw="192.168.0.1"
dns_server="1.1.1.1"

wpa_supplicant -i ${device} -c wpa_supplicant.conf -B
ip addr add ${ip_addr} dev ${device}
# hardcoding the address
route add default gw ${def_gw} ${device}
echo "nameserver ${dns_server}" 
