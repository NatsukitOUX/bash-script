#! /bin/bash

DOMAIN="${1}"
FILE="${2}"

# Read the file from standard input and echo the full domain.

while read -r subdomain; do
    echo "${subdomain}.${DOMAIN}"
done < "${FILE}"

# We can use sed to write content to the end of each line in a file.
# sed 's/$/.example.com/g' subdomains-1000.txt