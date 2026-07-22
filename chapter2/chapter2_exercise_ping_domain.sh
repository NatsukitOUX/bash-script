#! /bin/bash

NAME="${1}"
TARGET_DOMAIN="${2}"

# the following code exit if the user did not provide any arguments

if [[ -z "${NAME}" && -z "${TARGET_DOMAIN}" ]]; then

    echo "No argument was provided. Exiting..."
    exit 1
fi

if ping -c1 ${TARGET_DOMAIN}; then
    echo "The ping command was seccesfull!"
    awk '{print $0, $NAME , $TARGET_DOMAIN , }'
else
    echo "The ping command did not run!"
fi

    