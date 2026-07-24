#! /bin/bash

# Generate IP addresses from a given range.

for ip in $(seq 1 254); do 
    echo "172.16.10.${ip}" >> 172.16.10-hosts.txt

done

#  Acheving the same output using the echo command 
#  echo 10.1.0.{1..254} | sed 's/ /\n/g'
# the s flag mean to find and replace the space '/ /' 
# In our case the space will be replaced with a new line '\n'
# g The global flag, meaning do this for every match on the line, not just the first one

# Alternatively we can use printf. While using the printf command we will not need to use sed 
# printf "10.1.0.%d\n" {1..254}

# The %d is an integer placeholder, which will be swapped with the numbers defined in the brace expansion