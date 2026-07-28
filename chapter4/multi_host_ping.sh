#! /bin/bash
FILE="${1}"

while read -r host; do
    if ping -c 1 -W 1 -w 1 "${host}" &> /dev/null; then
        echo "${host} is up."
    fi
done < "${FILE}"

# we can achieve the same output by using the -sn option in nmap.
# nmap -sn 172.16.10.0/24 | grep "Nmap scan" | awk -F'report for ' '{print $2}'