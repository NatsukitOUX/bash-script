#! /bin/bash

IP_ADDRESSES=(192.168.1.1 192.168.1.2 192.168.1.3)

# to remove the item from the array
#unset IP_ADDRESSES[1]

# Print all elements in the array
echo "${IP_ADDRESSES[*]}"

# to swap the value of an ittem in the array
IP_ADDRESSES[0]="192.168.10"
echo "${IP_ADDRESSES}"


#print only the first ellement in the array

echo "${IP_ADDRESSES[0]}"

echo
sleep 10 &


