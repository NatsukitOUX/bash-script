#! /bin/bash

NAME="${1}"
TARGET_DOMAIN="${2}"

if [[ -z "${NAME}" && "${TARGET_DOMAIN}" ]]; then
    echo "Now argument was provided. Exiting..."
    exit 1

