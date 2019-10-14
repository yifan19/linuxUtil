#!/bin/bash 

device="wlan0"
ip_addr="192.168.0.201"
def_gw="192.168.0.1"
dns_server="1.1.1.1"
dns_resolv_conf="/etc/resolv.conf"
echo "removing all previous wpa_supplicant deamons"
killall wpa_supplicant

wpa_supplicant -i ${device} -c wpa_supplicant.conf -B -d
sleep 3

echo "[DEBUG] connection should be established"
ip addr add ${ip_addr}/24 dev ${device}
# hardcoding the address
route add default gw ${def_gw} ${device}
echo "nameserver ${dns_server}" > ${dns_resolv_conf}