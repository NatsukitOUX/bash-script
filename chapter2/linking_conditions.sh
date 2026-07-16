#! /bin/bash

# this checks if the file exists and it is greater than zero
# the -f used to check if the file exist.
# the -s used to check if the size of the file is greater than zero.
echo "Hello world!" > file.txt

if [[ -f "file.txt" ]] && [[ -s "file.txt"]]; then
    echo "the file exists and it is greater than zero"
fi

# the following code demonstrate the usage of OR condition

DIR_NAME="dir_test"

mkdir "${DIR_NAME}"

if [[ -f ${DIR_NAME} ]] || [[ -d ${DIR_NAME}]]; then
    echo "${DIR_NAME} is either a file or a directory."
fi


