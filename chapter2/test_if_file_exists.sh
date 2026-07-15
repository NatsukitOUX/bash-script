#! /bin/bash

FILE_NAME="${1}"
if [ -f "${FILE_NAME}" ]; then
    echo "The file ${FILE_NAME} exists."
    exit 1
else
   touch "${FILE_NAME}"
fi