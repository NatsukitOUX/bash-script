#  To print just the IP addresses from this file
# awk '{print $1}' log.txt

# The following command filters the first three fields of every line in the file
# awk '{print $1,$2,$3}' log.txt

# we can print the first and last field simultaneously
# awk '{print $1,$NF}' log.txt
