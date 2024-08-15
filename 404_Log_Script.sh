#!/bin/bash

#Create a BASH script that will search the log file for "404" errors and identify the IP addresses associated with them. 
#Then provide the number of times each IP encountered a 404.

#Be sure to use conditional statements and loops in your script.  


#while loop- iterate over the log 
#check for 404 error and IP address
#grep '404' web-server-access-logs.log | awk '{print $1}'| head -10 

#sort by each IP address  and count how many 404
while true;
do
total_count=$(grep " 404 " web-server-access-logs.log | wc -l)

grep " 404 " web-server-access-logs.log | awk -F'[, ]+' '{print "Error: 404 | IP Address:", $2}'

echo "Total 404 Errors: $total_count"
done
