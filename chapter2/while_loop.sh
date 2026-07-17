#! /bin/bash
SIGNAL_TO_STOP_FILE="stoploop"
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
	echo "The file SIGNAL_TO_STOP_FILE does not exist yet"
	echo "Trying again in two seconds"
	sleep 2
done
echo "File was found! Exitings..."