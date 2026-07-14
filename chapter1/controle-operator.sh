#! /bin/bash

echo "sleeping for 10 second..."
sleep 10 &

# creates a file

echo "creating the file test123"
touch test123

# deleting a file
echo "deleting the file test123"
rm test123

# The > operator redirects the standard output stream to a file
echo "Hello World!" > output.txt

# the >> operator to append some content to the end of the same file
echo "Goodbye!" >> output.txt

# redirect both the standard output stream and the standard error stream to a file by using &>

ls -l / &> stdout_and_stderr.txt

#  to send the standard output stream to one file and the standard error stream to another

ls -l / 1> stdout.txt 2> stderr.txt 

# to redirect multiple lines to a command
cat << EOF
Black Hat Bash
By No Strach Press

EOF