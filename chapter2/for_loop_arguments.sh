#! /bin/bash

# for ip_addresses in "$@"; do
#     echo " Taking some action on IP address ${ip_addresses} "
# done

# Iterating through files in the current directory

for file in $(ls .); do
    echo "File:${file}"
done