#!/bin/bash

for i in$@
do
ping -c 1 $i &> /dev/null

#Substitute your own warning message as well as your email below.

if [ $? -ne 0 ]; then
	echo "`date`:ping to the node failed, $i node is down!" | mail -s "$i node is down!" name@mail.com
	
fi
done