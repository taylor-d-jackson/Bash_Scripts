#!/bin/bash

network_scan()
{
	ping -c 1 $1 > /dev/null
	[ $? -eq 0 ] && echo Node with IP: $1 is up.
}

#Set the IP address below to the subnet as well as the range of IP's you'd like to scan for.
for i in 10.0.0.{1..255}
do
network_scan $1 & disown
done
exit