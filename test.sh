#!/bin/sh
while true; do
	timeout 10 sh stuff.sh
	if [ $? -eq 124 ]; then
		sh contingency.sh
	else
		date +"%R completed properly"
	fi
	sleep 20
done
