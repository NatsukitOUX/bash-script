#! /bin/bash
 userInput="${1}"

 if [[ -z "${userInput}"]]; then 
    echo "You must provide an argument"
exit 1

if [[ -f "${userInput}" ]]; then
    echo "${userInput} is a file"
elif [[-d "userInput"]]; then
    echo "${userInput} is a directory"
else
    echo "${userInput} is not a file or a directory"
fi