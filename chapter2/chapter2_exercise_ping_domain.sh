#! /bin/bash

NAME="${1}"
TARGET_DOMAIN="${2}"
OUTPUT_FILE="results.csv"
# the following code exit if the user did not provide any arguments

if [[ -z "${NAME}" || -z "${TARGET_DOMAIN}" ]]; then

    echo "No argument was provided. Exiting..."
    exit 1
fi


if ping -c1 ${TARGET_DOMAIN} &> /dev/null; then
    echo "The ping command was seccesfull!"
    status="Success"
    echo "${DOMAIN},${TARGET_DOMAIN},status,${date}" >> "${OUTPUT_FILE}"
else
    echo "The ping command did not run!"
    status="Failure"
    
fi

    