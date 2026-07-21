#! /bin/bash

NAME="${1}"
TARGET_DOMAIN="${2}"

if [[ -z "${NAME}" && -z "${TARGET_DOMAIN}" ]]; then

    echo "No argument was provided. Exiting..."
    exit 1
    
fi

