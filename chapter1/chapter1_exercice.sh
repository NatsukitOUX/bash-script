#! /bin/bash

# assigning variable 1 and 2 to variable 
FIRST_NAME="${1}"
LAST_NAME="${2}"
# creating a .txt file
touch output.txt
# printing the date to the file 
date +%M-%d-%Y >> output.txt
# printing the two arguments to the file
echo "${FIRST_NAME} ${LAST_NAME}" >> output.txt
# creating a backup file
cp output.txt backup.txt
# reading the output file using stdout
cat output.txt