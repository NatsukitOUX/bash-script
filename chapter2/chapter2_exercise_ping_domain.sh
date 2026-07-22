#! /bin/bash

NAME="${1}"
TARGET_DOMAIN="${2}"
OUTPUT_FILE="results.csv"
# the following code exit if the user did not provide any arguments

if [[ -z "${NAME}" || -z "${TARGET_DOMAIN}" ]]; then

    echo "No argument was provided. Exiting..."
    exit 1
fi

if [[ ! -f "${OUTPUT_FILE}" ]]; then
    echo "Status,Name,Domain,TimeStamp" >> "${OUTPUT_FILE}"
fi

if ping -c1 ${TARGET_DOMAIN} &> /dev/null; then
    echo "The ping command was seccesfull!"
    status="Success"
    echo "${status},${NAME},${TARGET_DOMAIN},$(date +"%Y-%m-%d %H:%M:%S")" >> "${OUTPUT_FILE}"
else
    echo "The ping command did not run!"
    status="Failure"
    echo "${status},${NAME},${TARGET_DOMAIN},$(date +"%Y-%m-%d %H:%M:%S")" >> "${OUTPUT_FILE}"
fi

    