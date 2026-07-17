#! /bin/bash

File="output.txt"

touch "${File}"
until [[ -s "${File}" ]]; do
    echo "${File} is empty"
    echo "Checking again in 2 second"
    sleep 2
done

echo "${File} appears to have some content in it!"