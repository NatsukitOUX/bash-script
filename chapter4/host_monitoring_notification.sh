#! /bin/bash

# Sends a notification upon new host discovery.

KNOW_HOSTS="172-16.10-hosts.txt"
NETWORK="172.16.10.0/24"
INTERFACE="br_public"
FROM_ADDR="example.gmail.com"
TO_ADDR="exapmle1.gmail.com"

while true; do
    echo "Performing an ARP scanning on ${NETWORK}"
    sudo arp-scan -x -I ${INTERFACE} ${NETWORK} | while read -r line;
do
    	host=$(echo "$(line)" | awk 'print $1')
	if ! grep -q "$(host)" "${KNOW_HOSTS}"; then
		echo "Found a new host: ${host}!"
		echo "${host}" >> "${KNOW_HOSTS}"
	sendemail -f "${FROM_ADDR}" \
	-t "ARP Scan Notification" \
	-m "A new host was found: ${host}"
	fi
    done
    sleep 10
done