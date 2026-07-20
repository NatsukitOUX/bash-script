#! /bin/bash
IP_ADDRESS="${1}"

case ${IP_ADDRESS} in
    192.168.*)
        echo "Network is 192.168.x.x"
    ;;
    10.0.*)
    echo "Network is 10.0.x.x"
    ;;
    *)
    echo "Could not identify the network"
    ;;
esac

# use grep to filter out information of interest from streams
# grep "35.237.4.214" log.txt

# use grep for multiple patterns simultaneously or by using the -e flag to achieve the same result
# grep "35.237.4.214\|13.66.139.0" log.txt 
# grep -e "35.237.4.214" -e "13.66.139.0" log.txt

# We can also use grep with the -v argument to exclude lines containing a certain pattern
# grep -v "35.237.4.214" log.txt
